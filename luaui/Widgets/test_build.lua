function widget:GetInfo()
  return {
    name    = "TestBuild",
    desc    = "Test AddUnitBuildSquare by pressing B",
    author  = "aurelienlt",
    version = "v0.1",
    date    = "Nov, 2024",
    license = "GNU GPL, v2 or later",
    layer   = 100000,
    enabled = true,
    handler = true,
  }
end

local sAddUnitBuildSquare        = Spring.AddUnitBuildSquare
local sRemoveUnitBuildSquare     = Spring.RemoveUnitBuildSquare

local spGetActiveCommand         = Spring.GetActiveCommand
local sSetActiveCommand          = Spring.SetActiveCommand
local sGetSelectedUnits          = Spring.GetSelectedUnits
local sGiveOrderArrayToUnitArray = Spring.GiveOrderArrayToUnitArray
local sGetMyTeamID               = Spring.GetMyTeamID

local sGetModKeyState            = Spring.GetModKeyState
local spGetInvertQueueKey        = Spring.GetInvertQueueKey
local sGetMouseState             = Spring.GetMouseState
local spTraceScreenRay           = Spring.TraceScreenRay
local sGetGroundHeight           = Spring.GetGroundHeight

local SQUARE_SIZE                = 8
local unitDefId                  = nil
local facing                     = 0
local active                     = false
local pressed                    = false

local function GetSize()
  local unitDef = UnitDefs[unitDefId]
  local sx, sz = math.max(unitDef.xsize, 2), math.max(unitDef.zsize, 2)
  if facing % 2 == 1 then
    sx, sz = sz, sx
  end
  return sx, sz
end

local function GetBuildPos(x, z, sx, sz)
  x = math.floor(x / SQUARE_SIZE) * SQUARE_SIZE
  z = math.floor(z / SQUARE_SIZE) * SQUARE_SIZE
  if sx % 4 == 0 then
    if x % (2 * SQUARE_SIZE) == SQUARE_SIZE then x = x + SQUARE_SIZE end
  else
    if x % (2 * SQUARE_SIZE) == 0 then x = x + SQUARE_SIZE end
  end
  if sz % 4 == 0 then
    if z % (2 * SQUARE_SIZE) == SQUARE_SIZE then z = z + SQUARE_SIZE end
  else
    if z % (2 * SQUARE_SIZE) == 0 then z = z + SQUARE_SIZE end
  end
  return x, z
end

local buildInfos = {}

local function AddBuild(x, z)
  local y = sGetGroundHeight(x, z)
  WG.DrawUnitShapeGL4(
    unitDefId,
    x, y, z,
    facing * (math.pi / 2),
    0.6,
    sGetMyTeamID(),
    nil,
    nil,
    nil,
    widget:GetInfo().name
  )

  sAddUnitBuildSquare(unitDefId, x, y, z, facing)

  buildInfos[#buildInfos + 1] = { unitDefId, x, y, z, facing }
end

local function ClearBuilds()
  WG.StopDrawAll(widget:GetInfo().name)
  for _, build in ipairs(buildInfos) do
    sRemoveUnitBuildSquare(build[1], build[2], build[3], build[4], build[5])
  end
  buildInfos = {}
end

local takenSquares = {}

local function AddPos(x, z)
  local sx, sz = GetSize()
  local x, z = GetBuildPos(x, z, sx, sz)
  local key = tostring(x) .. "," .. tostring(z)
  if takenSquares[key] then return end

  AddBuild(x, z)
  for dx = -(sx - 1), (sx - 1) do
    for dz = -(sz - 1), (sz - 1) do
      local key = tostring(x + dx * SQUARE_SIZE) .. "," .. tostring(z + dz * SQUARE_SIZE)
      takenSquares[key] = true
    end
  end
end

function widget:KeyPress(key, modifier, isRepeat)
  -- listen for B key
  if key ~= 98 or isRepeat then return end

  if active then
    Spring.Log("=== Test Build ===", LOG.WARNING, "Deactivating")
    active = false
    return
  end

  local _, activeCmdID = spGetActiveCommand()
  if not activeCmdID or activeCmdID >= 0 then
    Spring.Log("=== Test Build ===", LOG.WARNING, "No building selected " .. tostring(activeCmdID))
    return
  end

  unitDefId = -activeCmdID
  Spring.Log("=== Test Build ===", LOG.WARNING, "Activating with building " .. tostring(unitDefId))
  active = true
  sSetActiveCommand(0)
end

function widget:MousePress(mx, my, mButton)
  if not active or mButton ~= 1 then
    pressed = false
    return false
  end

  if pressed then return true end

  ClearBuilds()
  takenSquares = {}
  pressed = true

  local _, pos = spTraceScreenRay(mx, my, true, false)
  if pos then AddPos(pos[1], pos[3]) end

  return true
end

function widget:MouseMove(mx, my)
  if pressed then
    local _, pos = spTraceScreenRay(mx, my, true, false)
    if pos then AddPos(pos[1], pos[3]) end
  end
  return false
end

function widget:MouseRelease(mx, my, mButton)
  if not pressed or mButton ~= 1 then return false end

  local _, pos = spTraceScreenRay(mx, my, true, false)
  if pos then AddPos(pos[1], pos[3]) end

  local _, _, _, shift = sGetModKeyState()
  if spGetInvertQueueKey() then shift = not shift end

  local builders = sGetSelectedUnits()
  local cmds = {}
  for i, build in ipairs(buildInfos) do
    cmds[i] = { -build[1], { build[2], build[3], build[4], build[5] }, { shift = shift } }
    shift = true
  end
  ClearBuilds()
  active = false

  Spring.Log("=== Test Build ===", LOG.WARNING,
    "Giving " .. tostring(#cmds) .. " build commands to " .. tostring(#builders) .. " builders")
  sGiveOrderArrayToUnitArray(builders, cmds, false)

  return false
end

function widget:Update(dt)
  if not pressed then
    ClearBuilds()
  end

  if not active then return end

  if not pressed then
    local mx, my = sGetMouseState()
    local _, pos = spTraceScreenRay(mx, my, true, false)
    if pos then
      local sx, sz = GetSize()
      local x, z = GetBuildPos(pos[1], pos[3], sx, sz)
      AddBuild(x, z)
    end
  end
end
