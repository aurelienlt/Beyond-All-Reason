local unitName = Spring.I18N('units.names.armpnix')

return {
	armpnix = {
		acceleration = 0.04,
		blocking = false,
		brakerate = 0.045,
		buildcostenergy = 12500,
		buildcostmetal = 230,
		buildpic = "ARMPNIX.PNG",
		buildtime = 21000,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB VTOL NOTSHIP NOTHOVER",
		collide = true,
		cruisealt = 220,
		description = Spring.I18N('units.descriptions.armpnix'),
		explodeas = "largeexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxacc = 0.0525,
		maxaileron = 0.01292,
		maxbank = 0.8,
		maxdamage = 1020,
		maxelevator = 0.00917,
		maxpitch = 0.625,
		maxrudder = 0.00467,
		maxslope = 10,
		maxvelocity = 8.6,
		maxwaterdepth = 0,
		name = unitName,
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "Units/ARMPNIX.s3o",
		script = "Units/ARMPNIX.cob",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 260,
		speedtofront = 0.063,
		turnradius = 64,
		turnrate = 450,
		usesmoothmesh = true,
		wingangle = 0.06167,
		wingdrag = 0.125,
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armaircraft/t2",
			techlevel = 2,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-large",
				[2] = "crashing-large",
				[3] = "crashing-large2",
				[4] = "crashing-large3",
				[5] = "crashing-large3",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg3",
				[2] = "airdeathceg4",
				[3] = "airdeathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			armadvbomb = {
				areaofeffect = 168,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.2,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 168,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:genericshellexplosion-large-bomb",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "airbombt2.s3o",
				mygravity = 0.4,
				name = "Heavy a2g impulse warheads",
				noselfdamage = true,
				range = 1280,
				reloadtime = 7,
				soundhit = "xplomed2",
				soundhitwet = "splslrg",
				soundstart = "bombrelxl",
				weapontype = "AircraftBomb",
				customparams = {
					expl_light_color = "1 0.5 0.05",
					expl_light_heat_radius_mult = 1.3,
				},
				damage = {
					bombers = 53,
					default = 266,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMADVBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
