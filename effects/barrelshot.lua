local definitions = {

  ["barrelshot-medium"] = {
    fire = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.88 0.6 0.013   0.6 0.22 0.06 0.01   0.4 0.07 0.015 0.006   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[shotgunflare]],
        length             = 45,
        sidetexture        = [[shotgunside]],
        size               = 12.9,
        sizegrowth         = -0.6,
        ttl                = 10,
        pos                = [[0.0, 1, 0.0]],
      },
    },
    fire2 = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.89 0.6 0.013   0.6 0.25 0.06 0.01   0.4 0.06 0.015 0.006   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[none]],
        length             = -9,
        sidetexture        = [[shotgunside]],
        size               = 13,
        sizegrowth         = -0.6,
        ttl                = 9,
      },
    },
	  fireglow = {
	    air                = true,
	    class              = [[CSimpleParticleSystem]],
	    count              = 1,
	    ground             = true,
	    water              = true,
	    properties = {
	      airdrag            = 0,
	      colormap           = [[0.95 0.93 0.90 0.55   0 0 0 0.01]],
	      directional        = true,
	      emitrot            = 90,
	      emitrotspread      = 0,
	      emitvector         = [[0.0, 1, 0.0]],
	      gravity            = [[0.0, 0.0, 0.0]],
	      numparticles       = 1,
	      particlelife       = 2,
	      particlelifespread = 1,
	      particlesize       = 30,
	      particlesizespread = 12,
	      particlespeed      = 0,
	      particlespeedspread = 0,
	      pos                = [[0.0, 0, 0.0]],
	      sizegrowth         = -12.9,
	      sizemod            = 1,
	      texture            = [[circularthingy]],
	      useairlos          = true,
	    },
	  },
      smoke2 = {
          air                = true,
          class              = [[CSimpleParticleSystem]],
          count              = 1,
          ground             = true,
          water              = true,
          properties = {
              airdrag            = 0.92,
              colormap           = [[0 0 0 0    0.95 0.63 0.17 0.70    0.13 0.12 0.12 0.38   0.012 0.011 0.10 0.22   0.011 0.010 0.09 0.16   0 0 0 0.01]],
              directional        = true,
              emitrot            = 0,
              emitrotspread      = 8,
              emitvector         = [[dir]],
              gravity            = [[-0.02 r0.04, -0.005, -0.02 r0.04]],
              numparticles       = 4,
              particlelife       = 15,
              particlelifespread = 20,
              particlesize       = 1.3,
              particlesizespread = 3.7,
              particlespeed      = 1.1,
              particlespeedspread = 2.1,
              pos                = [[0.0, 0, 0.0]],
              sizegrowth         = 0.30,
              sizemod            = 1,
              texture            = [[smoke_puff2]],
              useairlos          = true,
          },
      },
    smoke = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
          airdrag            = 0.91,
          colormap           = [[0.95 0.69 0.17 0.95    0.35 0.20 0.13 0.65   0.15 0.14 0.12 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]],
          directional        = true,
          emitrot            = 0,
          emitrotspread      = 9,
          emitvector         = [[dir]],
          gravity            = [[-0.006 r0.012, 0, -0.006 r0.012]],
          numparticles       = 2,
          particlelife       = 13,
          particlelifespread = 9,
          particlesize       = 4,
          particlesizespread = 7,
          particlespeed      = 1.40,
          particlespeedspread = 0.5,
          pos                = [[0.0, 0, 0.0]],
          sizegrowth         = 0.92,
          sizemod            = 1,
          texture            = [[cloudpuff]],
          useairlos          = true,
      },
    },
    --clouddust = {
    --  air                = true,
    --  class              = [[CSimpleParticleSystem]],
    --  count              = 1,
    --  ground             = true,
    --  properties = {
    --    airdrag            = 0.85,
    --    colormap           = [[0.02 0.02 0.02 0.03  0.045 0.045 0.045 0.07  0.035 0.035 0.035 0.05  0.019 0.019 0.019 0.03  0 0 0 0]],
    --    directional        = true,
    --    emitrot            = 45,
    --    emitrotspread      = 4,
    --    emitvector         = [[0.5, 1, 0.5]],
    --    gravity            = [[0, 0.015, 0]],
    --    numparticles       = 2,
    --    particlelife       = 90,
    --    particlelifespread = 90,
    --    particlesize       = 4,
    --    particlesizespread = 1.5,
    --    particlespeed      = 1,
    --    particlespeedspread = 1,
    --    pos                = [[0, 0, 0]],
    --    sizegrowth         = 0.25,
    --    sizemod            = 1.0,
    --    texture            = [[bigexplosmoke]],
    --  },
    --},
  },

  ["barrelshot-mg"] = {
    mgfire = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        dir                = [[dir]],
        delay              = [[0 r5]],
        explosiongenerator = [[custom:barrelshot-fire]],
        --pos                = [[-5 r10, 0, -5 r10]],
      },
    },
  },

  ["barrelshot-fire"] = {
    fire = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.88 0.6 0.013   0.6 0.22 0.06 0.01   0.4 0.07 0.015 0.006   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[shotgunflare]],
        length             = [[38 r85]],
        sidetexture        = [[shotgunside]],
        size               = [[7 r16]],
        sizegrowth         = -0.6,
        ttl                = 14,
        pos                = [[0.0, 1, 0.0]],
      },
    },
    -- fire2 = {
    --   air                = true,
    --   class              = [[CBitmapMuzzleFlame]],
    --   count              = 1,
    --   ground             = true,
    --   underwater         = 1,
    --   water              = true,
    --   properties = {
    --     colormap           = [[1 0.89 0.6 0.013   0.6 0.25 0.06 0.01   0.4 0.06 0.015 0.006   0 0 0 0.01]],
    --     dir                = [[dir]],
    --     frontoffset        = 0,
    --     fronttexture       = [[none]],
    --     length             = -9,
    --     sidetexture        = [[shotgunside]],
    --     size               = 13,
    --     sizegrowth         = -0.5,
    --     ttl                = 15,
    --   },
    -- },
      fireglow = {
        air                = true,
        class              = [[CSimpleParticleSystem]],
        count              = 1,
        ground             = true,
        water              = true,
        properties = {
          airdrag            = 0,
          colormap           = [[0.95 0.93 0.90 0.55   0 0 0 0.01]],
          directional        = true,
          emitrot            = 90,
          emitrotspread      = 0,
          emitvector         = [[0.0, 1, 0.0]],
          gravity            = [[0.0, 0.0, 0.0]],
          numparticles       = 1,
          particlelife       = 2,
          particlelifespread = 1,
          particlesize       = 12,
          particlesizespread = 30,
          particlespeed      = 0,
          particlespeedspread = 0,
          pos                = [[-5 r10, 0, -5 r10]],
          sizegrowth         = -12.9,
          sizemod            = 1,
          texture            = [[circularthingy]],
          useairlos          = true,
        },
      },
    --   smoke2 = {
    --       air                = true,
    --       class              = [[CSimpleParticleSystem]],
    --       count              = 1,
    --       ground             = true,
    --       water              = true,
    --       properties = {
    --           airdrag            = 0.92,
    --           colormap           = [[0 0 0 0    0.95 0.63 0.17 0.70    0.13 0.12 0.12 0.38   0.012 0.011 0.10 0.22   0.011 0.010 0.09 0.16   0 0 0 0.01]],
    --           directional        = true,
    --           emitrot            = 0,
    --           emitrotspread      = 8,
    --           emitvector         = [[dir]],
    --           gravity            = [[-0.02 r0.04, -0.005, -0.02 r0.04]],
    --           numparticles       = 4,
    --           particlelife       = 15,
    --           particlelifespread = 20,
    --           particlesize       = 1.3,
    --           particlesizespread = 3.7,
    --           particlespeed      = 1.1,
    --           particlespeedspread = 2.1,
    --           pos                = [[0.0, 0, 0.0]],
    --           sizegrowth         = 0.30,
    --           sizemod            = 1,
    --           texture            = [[smoke_puff2]],
    --           useairlos          = true,
    --       },
    --   },
    -- smoke = {
    --   air                = true,
    --   class              = [[CSimpleParticleSystem]],
    --   count              = 1,
    --   ground             = true,
    --   water              = true,
    --   properties = {
    --       airdrag            = 0.91,
    --       colormap           = [[0.95 0.69 0.17 0.95    0.35 0.20 0.13 0.65   0.15 0.14 0.12 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]],
    --       directional        = true,
    --       emitrot            = 0,
    --       emitrotspread      = 9,
    --       emitvector         = [[dir]],
    --       gravity            = [[-0.006 r0.012, 0, -0.006 r0.012]],
    --       numparticles       = 2,
    --       particlelife       = 13,
    --       particlelifespread = 9,
    --       particlesize       = 4,
    --       particlesizespread = 7,
    --       particlespeed      = 1.40,
    --       particlespeedspread = 0.5,
    --       pos                = [[0.0, 0, 0.0]],
    --       sizegrowth         = 0.92,
    --       sizemod            = 1,
    --       texture            = [[cloudpuff]],
    --       useairlos          = true,
    --   },
    -- },
  },

}

local size = 0.48
definitions["barrelshot-tiny"] = table.copy(definitions["barrelshot-medium"])
definitions["barrelshot-tiny"].fire.properties.length							= definitions["barrelshot-tiny"].fire.properties.length * size
definitions["barrelshot-tiny"].fire.properties.size								= definitions["barrelshot-tiny"].fire.properties.size * size
definitions["barrelshot-tiny"].fire.properties.ttl								= 4.7
definitions["barrelshot-tiny"].fire2.properties.length						    = definitions["barrelshot-tiny"].fire2.properties.length * size
definitions["barrelshot-tiny"].fire2.properties.size							= definitions["barrelshot-tiny"].fire2.properties.size * size
definitions["barrelshot-tiny"].fire2.properties.ttl								= 4.7
--definitions["barrelshot-tiny"].fireglow.properties.particlesize               = definitions["barrelshot-tiny"].fireglow.properties.particlesize * size *0.7
definitions["barrelshot-tiny"].fireglow = nil
--definitions["barrelshot-tiny"].fireglow.properties.particlelife			    = 2 + definitions["barrelshot-tiny"].fireglow.properties.particlelife * size
--definitions["barrelshot-tiny"].fireglow.properties.colormap                   = [[0.07 0.04 0.007 0.01   0 0 0 0.01]]
definitions["barrelshot-tiny"].smoke2 = nil
definitions["barrelshot-tiny"].smoke = nil
--definitions["barrelshot-tiny"].clouddust = nil

local size = 0.88
definitions["barrelshot-small"] = table.copy(definitions["barrelshot-medium"])
definitions["barrelshot-small"].fire.properties.length							= definitions["barrelshot-small"].fire.properties.length * size
definitions["barrelshot-small"].fire.properties.size							= definitions["barrelshot-small"].fire.properties.size * size
definitions["barrelshot-small"].fire.properties.ttl								= 7.5
definitions["barrelshot-small"].fire2.properties.length							= definitions["barrelshot-small"].fire2.properties.length * size
definitions["barrelshot-small"].fire2.properties.size							= definitions["barrelshot-small"].fire2.properties.size * size
definitions["barrelshot-small"].fire2.properties.ttl							= 7.5
definitions["barrelshot-small"].fireglow.properties.particlesize				= definitions["barrelshot-small"].fireglow.properties.particlesize * size
--definitions["barrelshot-small"].fireglow.properties.particlelife				= 1.7 + definitions["barrelshot-small"].fireglow.properties.particlelife * size
--definitions["barrelshot-small"].fireglow.properties.colormap          	        = [[0.122 0.066 0.013 0.03   0 0 0 0.01]]
definitions["barrelshot-small"].smoke2.properties.particlelifespread			= definitions["barrelshot-small"].smoke2.properties.particlelifespread * size
definitions["barrelshot-small"].smoke2.properties.particlesize					= definitions["barrelshot-small"].smoke2.properties.particlesize * size
definitions["barrelshot-small"].smoke2.properties.particlesizespread			= definitions["barrelshot-small"].smoke2.properties.particlesizespread * size
definitions["barrelshot-small"].smoke2.properties.numparticles					= definitions["barrelshot-small"].smoke2.properties.numparticles * size
definitions["barrelshot-small"].smoke2.properties.particlespeedspread		    = definitions["barrelshot-small"].smoke2.properties.particlespeedspread * size
definitions["barrelshot-small"].smoke.properties.particlelifespread			    = definitions["barrelshot-small"].smoke.properties.particlelifespread * size
definitions["barrelshot-small"].smoke.properties.particlesize					= definitions["barrelshot-small"].smoke.properties.particlesize * size
definitions["barrelshot-small"].smoke.properties.particlesizespread			    = definitions["barrelshot-small"].smoke.properties.particlesizespread * size
definitions["barrelshot-small"].smoke.properties.sizegrowth                     = definitions["barrelshot-small"].smoke.properties.sizegrowth * size
--definitions["barrelshot-small"].smoke.properties.numparticles					= definitions["barrelshot-small"].smoke.properties.numparticles * size
definitions["barrelshot-small"].smoke.properties.particlespeedspread		    = definitions["barrelshot-small"].smoke.properties.particlespeedspread * size
--definitions["barrelshot-small"].clouddust.properties.particlesize				= definitions["barrelshot-small"].clouddust.properties.particlesize * size
--definitions["barrelshot-small"].clouddust.properties.particlesizespread	= definitions["barrelshot-small"].clouddust.properties.particlesizespread * size
--definitions["barrelshot-small"].clouddust.properties.particlelife			= definitions["barrelshot-small"].clouddust.properties.particlelife * size
--definitions["barrelshot-small"].clouddust.properties.particlelifespread	= definitions["barrelshot-small"].clouddust.properties.particlelifespread * size

local size = 1.8
definitions["barrelshot-large"] = table.copy(definitions["barrelshot-medium"])
definitions["barrelshot-large"].fire.properties.length 									= definitions["barrelshot-large"].fire.properties.length * size
definitions["barrelshot-large"].fire.properties.size										= definitions["barrelshot-large"].fire.properties.size * size
definitions["barrelshot-large"].fire.properties.sizegrowth              = definitions["barrelshot-large"].fire.properties.sizegrowth * 1.5
definitions["barrelshot-large"].fire.properties.ttl											= definitions["barrelshot-large"].fire.properties.ttl * 1.04
definitions["barrelshot-large"].fire2.properties.length									= definitions["barrelshot-large"].fire2.properties.length * size
definitions["barrelshot-large"].fire2.properties.size										= definitions["barrelshot-large"].fire2.properties.size * size
definitions["barrelshot-large"].fire2.properties.sizegrowth             = definitions["barrelshot-large"].fire2.properties.sizegrowth * 1.5
definitions["barrelshot-large"].fire2.properties.ttl										= definitions["barrelshot-large"].fire2.properties.ttl * 1.04
definitions["barrelshot-large"].fireglow.properties.particlesize				= definitions["barrelshot-large"].fireglow.properties.particlesize * size
--definitions["barrelshot-large"].fireglow.properties.particlelife				= definitions["barrelshot-large"].fireglow.properties.particlelife * size
--definitions["barrelshot-large"].fireglow.properties.colormap          	= [[0.122 0.066 0.013 0.035   0 0 0 0.01]]
definitions["barrelshot-large"].smoke2.properties.particlelifespread		= definitions["barrelshot-large"].smoke2.properties.particlelifespread * size
definitions["barrelshot-large"].smoke2.properties.particlesize					= definitions["barrelshot-large"].smoke2.properties.particlesize * size
definitions["barrelshot-large"].smoke2.properties.particlesizespread		= definitions["barrelshot-large"].smoke2.properties.particlesizespread * size
--definitions["barrelshot-large"].smoke2.properties.numparticles						= definitions["barrelshot-large"].smoke2.properties.numparticles * size
definitions["barrelshot-large"].smoke2.properties.particlespeedspread		= definitions["barrelshot-large"].smoke2.properties.particlespeedspread * size
definitions["barrelshot-large"].smoke.properties.particlelifespread			= definitions["barrelshot-large"].smoke.properties.particlelifespread * size
definitions["barrelshot-large"].smoke.properties.particlesize						= definitions["barrelshot-large"].smoke.properties.particlesize * size
definitions["barrelshot-large"].smoke.properties.particlesizespread			= definitions["barrelshot-large"].smoke.properties.particlesizespread * size
--definitions["barrelshot-large"].smoke.properties.numparticles						= definitions["barrelshot-large"].smoke.properties.numparticles * size
definitions["barrelshot-large"].smoke.properties.particlespeedspread		= definitions["barrelshot-large"].smoke.properties.particlespeedspread * size
--definitions["barrelshot-large"].clouddust.properties.particlesize				= definitions["barrelshot-large"].clouddust.properties.particlesize * size
--definitions["barrelshot-large"].clouddust.properties.particlesizespread	= definitions["barrelshot-large"].clouddust.properties.particlesizespread * size
--definitions["barrelshot-large"].clouddust.properties.particlelife			= definitions["barrelshot-small"].clouddust.properties.particlelife * size
--definitions["barrelshot-large"].clouddust.properties.particlelifespread	= definitions["barrelshot-small"].clouddust.properties.particlelifespread * size

local size = 3.1
definitions["barrelshot-huge"] = table.copy(definitions["barrelshot-medium"])
definitions["barrelshot-huge"].fire.properties.length 									= definitions["barrelshot-huge"].fire.properties.length * size * 2.2
definitions["barrelshot-huge"].fire.properties.size										  = definitions["barrelshot-huge"].fire.properties.size * size * 1.6
definitions["barrelshot-huge"].fire.properties.sizegrowth								= definitions["barrelshot-huge"].fire.properties.sizegrowth * 1.8
definitions["barrelshot-huge"].fire.properties.ttl                      = definitions["barrelshot-huge"].fire.properties.ttl * 1.2
definitions["barrelshot-huge"].fire2.properties.length									= definitions["barrelshot-huge"].fire2.properties.length * size * 2.2
definitions["barrelshot-huge"].fire2.properties.size									  = definitions["barrelshot-huge"].fire2.properties.size * size * 1.8
definitions["barrelshot-huge"].fire2.properties.sizegrowth              = definitions["barrelshot-huge"].fire2.properties.sizegrowth * 1.4
definitions["barrelshot-huge"].fire2.properties.ttl										  = definitions["barrelshot-huge"].fire2.properties.ttl * 0.8
definitions["barrelshot-huge"].fireglow.properties.particlesize					= definitions["barrelshot-huge"].fireglow.properties.particlesize * size * 0.8
--definitions["barrelshot-huge"].fireglow.properties.particlelife					= definitions["barrelshot-huge"].fireglow.properties.particlelife * size * 0.8 
--definitions["barrelshot-huge"].fireglow.properties.colormap        			= [[0.122 0.066 0.013 0.03   0 0 0 0.01]]
definitions["barrelshot-huge"].smoke2.properties.particlelifespread			= definitions["barrelshot-huge"].smoke2.properties.particlelifespread * size
definitions["barrelshot-huge"].smoke2.properties.particlesize				    = definitions["barrelshot-huge"].smoke2.properties.particlesize * size * 1.3
definitions["barrelshot-huge"].smoke2.properties.particlesizespread			= definitions["barrelshot-huge"].smoke2.properties.particlesizespread * size
definitions["barrelshot-huge"].smoke2.properties.particlespeed          = definitions["barrelshot-huge"].smoke2.properties.particlespeed * size * 1.2
--definitions["barrelshot-huge"].smoke2.properties.numparticles				    = 4
definitions["barrelshot-huge"].smoke2.properties.particlespeedspread		= definitions["barrelshot-huge"].smoke2.properties.particlespeedspread * size
definitions["barrelshot-huge"].smoke2.properties.colormap               = [[0 0 0 0    0.90 0.58 0.16 0.70    0.12 0.12 0.12 0.38   0.011 0.011 0.11 0.22   0.010 0.010 0.10 0.16   0 0 0 0.01]]
definitions["barrelshot-huge"].smoke.properties.particlelife            = definitions["barrelshot-huge"].smoke.properties.particlelife * size
definitions["barrelshot-huge"].smoke.properties.particlelifespread			= definitions["barrelshot-huge"].smoke.properties.particlelifespread * size
definitions["barrelshot-huge"].smoke.properties.particlesize				    = definitions["barrelshot-huge"].smoke.properties.particlesize * size * 1.3
definitions["barrelshot-huge"].smoke.properties.particlesizespread			= definitions["barrelshot-huge"].smoke.properties.particlesizespread * size
definitions["barrelshot-huge"].smoke.properties.particlespeed           = definitions["barrelshot-huge"].smoke.properties.particlespeed * size * 0.95
definitions["barrelshot-huge"].smoke.properties.airdrag                 = .96
definitions["barrelshot-huge"].smoke.properties.numparticles				    = 1
--definitions["barrelshot-huge"].smoke.properties.particlespeedspread			= definitions["barrelshot-huge"].smoke.properties.particlespeedspread * size
--definitions["barrelshot-huge"].clouddust.properties.particlesize				= definitions["barrelshot-huge"].clouddust.properties.particlesize * size
--definitions["barrelshot-huge"].clouddust.properties.particlesizespread	= definitions["barrelshot-huge"].clouddust.properties.particlesizespread * size
--definitions["barrelshot-huge"].clouddust.properties.particlelife			  = definitions["barrelshot-small"].clouddust.properties.particlelife * size
--definitions["barrelshot-huge"].clouddust.properties.particlelifespread	= definitions["barrelshot-small"].clouddust.properties.particlelifespread * size

definitions["barrelshot-huge"].flash = {
	air = 1,
	water = 1,
	ground = 1,
	count = 1,
	class = [[CSimpleParticleSystem]],
	properties  =  {
		sizeGrowth = -4,
		sizeMod = 1.0,
		pos = [[0, 4, 0]],
		emitVector = [[-0, 1, 0]],
		gravity = [[0, 0, 0]],
		colorMap =  [[1 0.8 0.55 0.01   1 0.8 0.65 0.9   0 0 0 0.01]],
		texture = [[dirt]],
		airdrag = 1,
		particleLife = 5,
		particleLifeSpread = 0,
		numParticles = 1,
		particleSpeed = 1,
		particleSpeedSpread = 0,
		particleSize = 22,
		particleSizeSpread = 4,
		emitRot = 0,
		emitRotSpread = 180,
		directional = 1,
	},
}

definitions["barrelshot-tiny-aa"] = table.copy(definitions["barrelshot-tiny"])
definitions["barrelshot-tiny-aa"].fire.properties.colormap  = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
definitions["barrelshot-tiny-aa"].fire2.properties.colormap = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
--definitions["barrelshot-tiny-aa"].fireglow.properties.colormap = [[0.122 0.066 0.09 0.04   0 0 0 0.01]]
--definitions["barrelshot-tiny-aa"].smoke.properties.colormap  = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]
--definitions["barrelshot-tiny-aa"].smoke2.properties.colormap = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]

definitions["barrelshot-small-aa"] = table.copy(definitions["barrelshot-small"])
definitions["barrelshot-small-aa"].fire.properties.colormap  = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
definitions["barrelshot-small-aa"].fire2.properties.colormap = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
--definitions["barrelshot-small-aa"].fireglow.properties.colormap = [[0.122 0.066 0.09 0.04   0 0 0 0.01]]
definitions["barrelshot-small-aa"].smoke.properties.colormap  = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]
definitions["barrelshot-small-aa"].smoke2.properties.colormap = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]

definitions["barrelshot-medium-aa"] = table.copy(definitions["barrelshot-medium"])
definitions["barrelshot-medium-aa"].fire.properties.colormap  = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
definitions["barrelshot-medium-aa"].fire2.properties.colormap = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
--definitions["barrelshot-medium-aa"].fireglow.properties.colormap = [[0.122 0.066 0.09 0.04   0 0 0 0.01]]
definitions["barrelshot-medium-aa"].smoke.properties.colormap  = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]
definitions["barrelshot-medium-aa"].smoke2.properties.colormap = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]

definitions["barrelshot-large-aa"] = table.copy(definitions["barrelshot-large"])
definitions["barrelshot-large-aa"].fire.properties.colormap  = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
definitions["barrelshot-large-aa"].fire2.properties.colormap = [[1 0.26 0.78 0.013   0.6 0.29 0.47 0.01   0.4 0.22 0.33 0.006   0 0 0 0.01]]
--definitions["barrelshot-large-aa"].fireglow.properties.colormap = [[0.122 0.066 0.09 0.04   0 0 0 0.01]]
definitions["barrelshot-large-aa"].smoke.properties.colormap  = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]
definitions["barrelshot-large-aa"].smoke2.properties.colormap = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]

definitions["barrelshot-huge-aa"] = table.copy(definitions["barrelshot-huge"])
definitions["barrelshot-huge-aa"].fire.properties.colormap  = [[1 0.6 0.85 0.013   0.6 0.2 0.5 0.01   0.4 0.06 0.033 0.006   0 0 0 0.01]]
definitions["barrelshot-huge-aa"].fire2.properties.colormap = [[1 0.6 0.85 0.013   0.6 0.2 0.5 0.01   0.4 0.06 0.033 0.006   0 0 0 0.01]]
--definitions["barrelshot-huge-aa"].fireglow.properties.colormap = [[0.122 0.066 0.09 0.04   0 0 0 0.01]]
definitions["barrelshot-huge-aa"].smoke.properties.colormap  = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]
definitions["barrelshot-huge-aa"].smoke2.properties.colormap = [[0.95 0.17 0.69 0.95    0.35 0.13 0.20 0.65   0.15 0.12 0.14 0.60    0.12 0.12 0.12 0.25   0 0 0 0.01]]

local size = 1.3
definitions["barrelshot-sniper"] = table.copy(definitions["barrelshot-large"])
definitions["barrelshot-sniper"].fire.properties.length                                  = definitions["barrelshot-sniper"].fire.properties.length * size * 1.3
definitions["barrelshot-sniper"].fire.properties.size                                    = definitions["barrelshot-sniper"].fire.properties.size * size * 0.8
definitions["barrelshot-sniper"].fire2.properties.length                                 = definitions["barrelshot-sniper"].fire.properties.length * size * 1.3
definitions["barrelshot-sniper"].fire2.properties.size                                   = definitions["barrelshot-sniper"].fire.properties.size * size * 0.8
definitions["barrelshot-sniper"].fireglow.properties.particlesize                        = definitions["barrelshot-sniper"].fireglow.properties.particlesize * size * 0.95
--definitions["barrelshot-sniper"].fire.properties.colormap = [[1 0.33 0.15 0.015   0.7 0.17 0.08 0.01   0.4 0.06 0.03 0.01   0 0 0 0.01]]
--definitions["barrelshot-sniper"].fire2.properties.colormap = [[1 0.33 0.15 0.015   0.7 0.17 0.08 0.01   0.4 0.06 0.03 0.01   0 0 0 0.01]]
--definitions["barrelshot-sniper"].fireglow.properties.colormap = [[0.122 0.066 0.025 0.04   0 0 0 0.01]]
--definitions["barrelshot-sniper"].smoke.properties.colormap = [[0 0 0 0   0.15 0.055 0.03 0.2    0.48 0.26 0.15 0.44    0.2 0.135 0.1 0.4     0.16 0.12 0.11 0.4    0.145 0.11 0.095 0.4    0.13 0.095 0.075 0.4     0.115 0.088 0.07 0.35    0.1 0.075 0.066 0.3    0.09 0.07 0.06 0.26   0.08 0.065 0.06 0.22  0 0 0 0]]




definitions["barrelshot-lightning"] = {
    groundflash = {
        circlealpha        = 1,
        circlegrowth       = 0,
        flashalpha         = 0.12,
        flashsize          = 35,
        ttl                = 3,
        color = {
            [1]  = 0.66,
            [2]  = 0.66,
            [3]  = 1,
        },
    },
    blueelectricityspikes = {
        air                = true,
        class              = [[CSimpleParticleSystem]],
        count              = 1,
        ground             = true,
        water              = true,
        underwater         = true,
        properties = {
            airdrag            = 0.8,
            colormap           = [[0.7 0.7 0.9 0.03   0.5 0.5 0.9 0.01]],
            directional        = true,
            emitrot            = 45,
            emitrotspread      = 32,
            emitvector         = [[0, 1, 0]],
            gravity            = [[0, -0.01, 0]],
            numparticles       = 2,
            particlelife       = 3,
            particlelifespread = 1,
            particlesize       = 4.5,
            particlesizespread = 1.5,
            particlespeed      = 0.5,
            particlespeedspread = 0.5,
            pos                = [[0, 2, 0]],
            sizegrowth         = 1,
            sizemod            = 1,
            texture            = [[whitelightb]],
            useairlos          = false,
        },
    },
    centerflare = {
        air                = true,
        class              = [[heatcloud]],
        count              = 1,
        ground             = true,
        water              = true,
        underwater         = true,
        properties = {
            heat               = 7,
            heatfalloff        = 0.9,
            maxheat            = 15,
            pos                = [[r-2 r2, 5, r-2 r2]],
            size               = 8,
            sizegrowth         = -4,
            speed              = [[0, 1 0, 0]],
            texture            = [[flare]],
        },
    },
    flare = {
        air                = true,
        class              = [[CSimpleParticleSystem]],
        count              = 2,
        ground             = true,
        water              = true,
        underwater         = true,
        properties = {
            airdrag            = 0.95,
            colormap           = [[0.5 0.5 0.75 0.02   0.1 0.1 0.15 0.001   0.5 0.5 0.75 0.015   0.0 0.0 0.0 0.0   0.5 0.5 0.75 0.015   0.0 0.0 0.0 0.0   0.6 0.6 0.8 0.019   0.0 0.0 0.0 0.0]],
            directional        = true,
            emitrot            = 90,
            emitrotspread      = 0,
            emitvector         = [[0, 1, 0]],
            gravity            = [[0, 0, 0]],
            numparticles       = 1,
            particlelife       = 9,
            particlelifespread = 1,
            particlesize       = 42.5,
            particlesizespread = 1.5,
            particlespeed      = 0.1,
            particlespeedspread = 0.1,
            pos                = [[10, 2, 0]],
            sizegrowth         = -0.5,
            sizemod            = 1,
            texture            = [[flare2]],
            useairlos          = false,
        },
    },
}

-- add purple scavenger variants
local scavengerDefs = {}
for k,v in pairs(definitions) do
    scavengerDefs[k..'-purple'] = table.copy(definitions[k])
end

local purpleEffects = {
    fire = {
        properties = {
            colormap = [[0.75 0.65 1 0.013   0.3 0.15 0.6 0.01   0.25 0.02 0.4 0.006   0 0 0 0.01]]
        }
    },
    fire2 = {
        properties = {
            colormap = [[0.75 0.65 1 0.013   0.3 0.15 0.6 0.01   0.25 0.02 0.4 0.006   0 0 0 0.01]]
        }
    },
    fireglow = {
        properties = {
            colormap = [[0.075 0.03 0.12 0.04   0 0 0 0.01]]
        }
    },
}
for defName, def in pairs(scavengerDefs) do
    for effect, effectParams in pairs(purpleEffects) do
        if scavengerDefs[defName][effect] then
            for param, paramValue in pairs(effectParams) do
                if scavengerDefs[defName][effect][param] then
                    if param == 'properties' then
                        for property,propertyValue in pairs(paramValue) do
                            if scavengerDefs[defName][effect][param][property] then
                                scavengerDefs[defName][effect][param][property] = propertyValue
                            end
                        end
                    else
                        scavengerDefs[defName][effect][param] = paramValue
                    end
                end
            end
        end
    end
end

table.mergeInPlace(definitions, scavengerDefs)

return definitions
