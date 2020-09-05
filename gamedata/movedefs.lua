-- the commented out slopemod were there to compensate for modoption betterunitmovement

local moveDatas = {
	
	COMMANDERBOT = {
		crushstrength = 50,
		depthModParams = {
			minHeight = 0,
			maxScale = 1.5,
			quadraticCoeff = (9.9/22090)/2,
			linearCoeff = (0.1/470)/2,
			constantCoeff = 1,
			},
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 5000,
		maxwaterslope = 50,
	},

	-- vader/roach/skuttle
	ABOTBOMB2 = {
		crushstrength = 50,
		depthmod = 0,
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 5000,
		maxwaterslope = 50,
		depthModParams = {
			constantCoeff = 1.5,
		},
	},

	-- amphibious bots
	ABOT2 = {
		crushstrength = 50,
		depthmod = 0,
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 5000,
		maxwaterslope = 50,
	},
	-- amphibious tanks
	ATANK3 = {
		crushstrength = 30,
		depthmod = 0,
		footprintx = 3,
		footprintz = 3,
		maxslope = 36,
		--slopeMod = 32,
		maxwaterdepth = 5000,
		maxwaterslope = 80,
	},

	BOAT3 = {
		crushstrength = 9,
		footprintx = 3,
		footprintz = 3,
		minwaterdepth = 8,
	},
	BOAT4 = {
		crushstrength = 9,
		footprintx = 4,
		footprintz = 4,
		minwaterdepth = 8,
	},
	-- cruisers / missile ships / transport ships
	BOAT5 = {
		crushstrength = 16,
		footprintx = 5,
		footprintz = 5,
		minwaterdepth = 10,
	},
	-- battleships/aircraft carriers
	BOAT7 = {
		crushstrength = 252,
		footprintx = 7,
		footprintz = 7,
		minwaterdepth = 15,
	},
	-- flagships
	BOAT8 = {
		crushstrength = 252,
		footprintx = 8,
		footprintz = 8,
		minwaterdepth = 15,
	},

	-- Subs
	UBOAT3 = {
		footprintx = 3,
		footprintz = 3,
		minwaterdepth = 15,
		crushstrength = 5,
		subMarine = 1,
	},
	UBOAT4 = {
		footprintx = 4,
		footprintz = 4,
		minwaterdepth = 15,
		crushstrength = 5,
		subMarine = 1,
	},

	HOVER3 = {
		badslope = 22,
		badwaterslope = 255,
		crushstrength = 25,
		footprintx = 3,
		footprintz = 3,
		maxslope = 22,
		--slopeMod = 32,
		maxwaterslope = 255,
	},
	-- lun/sokolov
	HHOVER3 = {
		badslope = 22,
		badwaterslope = 255,
		crushstrength = 252,
		footprintx = 3,
		footprintz = 3,
		maxslope = 22,
		--slopeMod = 32,
		maxwaterslope = 255,
	},
	-- transports
	HOVER4 = {
		badslope = 22,
		badwaterslope = 255,
		crushstrength = 25,
		footprintx = 4,
		footprintz = 4,
		maxslope = 22,
		--slopeMod = 32,
		maxwaterslope = 255,
	},

	-- armfav/corfav
	TANK1 = {
		crushstrength = 10,
		footprintx = 2,
		footprintz = 2,
		maxslope = 18,
		--slopeMod = 32,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	TANK2 = {
		crushstrength = 18,
		footprintx = 2,
		footprintz = 2,
		maxslope = 18,
		--slopeMod = 32,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	TANK3 = {
		crushstrength = 30,
		footprintx = 3,
		footprintz = 3,
		maxslope = 18,
		--slopeMod = 32,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- bulldog/reaper
	HTANK3 = {
		crushstrength = 250,
		footprintx = 3,
		footprintz = 3,
		maxslope = 18,
		--slopeMod = 32,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- banisher/goliath/tremor
	HTANK4 = {
		crushstrength = 250,
		footprintx = 4,
		footprintz = 4,
		maxslope = 18,
		--slopeMod = 32,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},

	--flea
	BOT1 = {
		crushstrength = 5,
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 5,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}	
	},
	BOT2 = {
		crushstrength = 10,
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	BOT3 = {
		crushstrength = 15,
		footprintx = 2,
		footprintz = 2,
		maxslope = 36,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- only used by some chickens
	BOT4 = {
		crushstrength = 25,
		footprintx = 3,
		footprintz = 3,
		maxslope = 36,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- fatboy/sumo
	HBOT3 = {
		crushstrength = 1400,
		footprintx = 3,
		footprintz = 3,
		maxslope = 36,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- razorback/catapult
	HBOT4 = {
		crushstrength = 1400,
		footprintx = 4,
		footprintz = 4,
		maxslope = 36,
		maxwaterdepth = 26,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- shiva
	HABOT4 = {
		crushstrength = 252,
		depthmod = 0,
		footprintx = 4,
		footprintz = 4,
		maxslope = 36,
		maxwaterdepth = 5000,
		maxwaterslope = 80,
	},
	-- karg/vanguard
	HTBOT4 = {
		crushstrength = 252,
		footprintx = 4,
		footprintz = 4,
		maxslope = 80,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- bantha
	VBOT3 = {
		crushstrength = 1400,
		depthmod = 0,
		footprintx = 4,
		footprintz = 4,
		maxslope = 24,
		maxwaterdepth = 5000,
		maxwaterslope = 30,
	},
	-- krog
	VBOT5 = {
		crushstrength = 1400,
		depthmod = 0,
		footprintx = 5,
		footprintz = 5,
		maxslope = 24,
		maxwaterdepth = 5000,
		maxwaterslope = 30,
	},
	-- juggernaut
	HBOT5 = {
		crushstrength = 1400,
		footprintx = 5,
		footprintz = 5,
		maxslope = 36,
		maxwaterdepth = 30,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},

	-- emp spider
	TBOT2 = {
		crushstrength = 15,
		footprintx = 2,
		footprintz = 2,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	-- spiders
	TBOT3 = {
		crushstrength = 15,
		footprintx = 3,
		footprintz = 3,
		maxwaterdepth = 22,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},

	--Chicken Movedefs
	CHICKQUEEN = {
		footprintx=3,
		footprintz=3,
		maxwaterdepth=72,
		maxslope=40,
		crushstrength=15000,
		avoidMobilesOnPath=false,
	},

	NANO = {
		crushstrength = 0,
		footprintx = 3,
		footprintz = 3,
		maxslope = 18,
		maxwaterdepth = 0,
	},

	-- penguins/ducks
	CRITTERH = {
		crushstrength = 0,
		footprintx = 1,
		footprintz = 1,
		maxslope = 50,
		maxwaterslope = 255,
		maxWaterDepth = 255,
		minwaterdepth = 15,
		speedModClass = 2, -- 0 = tank, 1 = bot, 2 = hover, 3 = ship
	},
	ANT = {
		footprintX = 1,
		footprintZ = 1,
		maxWaterDepth = 2,
		crushStrength = 0,
		speedModClass = 1, -- 0 = tank, 1 = bot, 2 = hover, 3 = ship
	},
	
	-- Scavenger Boss units
	SCAVCOMMANDERBOT = {
		crushstrength = 9999,
		depthModParams = {
			minHeight = 0,
			maxScale = 1.5,
			quadraticCoeff = (9.9/22090)/2,
			linearCoeff = (0.1/470)/2,
			constantCoeff = 1,
			},
		footprintx = 0,
		footprintz = 0,
		maxslope = 100,
		maxwaterdepth = 9999,
		maxwaterslope = 55,
	},
	
	BOSSPEEWEE4 = {
		crushstrength = 9999,
		footprintx = 4,
		footprintz = 4,
		maxslope = 50,
		maxwaterdepth = 9999,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
	
	BOSSSTUMPY7 = {
		crushstrength = 9999,
		footprintx = 7,
		footprintz = 7,
		maxslope = 26,
		--slopeMod = 32,
		maxwaterdepth = 9999,
		depthModParams = {
			minHeight = 4,
			linearCoeff = 0.03,
			maxValue = 0.7,
		}
	},
}

--------------------------------------------------------------------------------
-- Final processing / array format
--------------------------------------------------------------------------------
local defs = {}

for moveName, moveData in pairs(moveDatas) do
	--if moveData.maxslope and (moveData.maxslope < 60) then
	--	moveData.maxslope = 34
	--else
	--	moveData.IsAllTerrain = true
	--	moveData.maxslope = 60
	--end
	
	moveData.heatmapping = true
	moveData.name = moveName
	moveData.allowRawMovement = true
	if moveName and string.find(moveName, "BOT") and moveData.maxslope then
		moveData.slopemod = 4
		--if moveData.IsAllTerrain then
		--	moveData.slopemod = 2
		--else
		--	moveData.speedModClass = 0
		--end
	else
		--moveData.slopemod = 60
	end
	--moveData.IsAllTerrain = nil
	defs[#defs + 1] = moveData
end

return defs

