return {
	armrattet4 = {
		acceleration = 0.0138,
		brakerate = 0.08759,
		buildcostenergy = 350000,
		buildcostmetal = 35000,
		buildpic = "scavengers/armrattet4.PNG",
		buildtime = 2904000,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 -2",
		collisionvolumescales = "80 51 98",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Brick with huge as #### gun.",
		energymake = 0.6,
		energyuse = 0.6,
		explodeas = "bantha",
		footprintx = 5,
		footprintz = 5,
		icontype = "scavboss",
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		mass = 5000,
		maxdamage = 120000,
		maxslope = 10,
		maxvelocity = 0.8,
		maxwaterdepth = 12,
		movementclass = "BOSSSTUMPY7",
		name = "Ratte",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/armrattet4.s3o",
		script = "Units/scavboss/armrattet4.cob",
		seismicsignature = 0,
		selfdestructas = "banthaSelfd",
		sightdistance = 600,
		trackoffset = 3,
		trackstrength = 64,
		tracktype = "armstump_tracks",
		trackwidth = 104,
		turninplace = true,
		turninplaceanglelimit = 360,
		turninplacespeedlimit = 1,
		turnrate = 150,
		customparams = {
			basename = "base",
			cannon1name = "cannon1",
			description_long = "It's an insanely huge variant of the Stumpy-Class assault tank, which has been modded and supersized to an enormous giant. Heavy Air Support is needed to effectively destroy these monsters",
			driftratio = "0.3",
			firingceg = "barrelshot-large",
			flare1name = "flare1",
			kickback = "-0.4",
			lumamult = "1.2",
			model_author = "Flaka",
			normaltex = "unittextures/Arm_normal.dds",
			restoretime = "3000",
			rockstrength = "1.2",
			sleevename = "sleeve",
			subfolder = "other/scavengers",
			turretname = "turret",
			wpn1turretx = "45",
			wpn1turrety = "80",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.0399932861328 0.00128356933594 -0.564636230469",
				collisionvolumescales = "75.7996826172 57.2875671387 87.4318847656",
				collisionvolumetype = "Box",
				damage = 100000,
				description = "Ratte Wreckage",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 60,
				hitdensity = 100,
				metal = 17200,
				object = "Units/scavboss/armrattet4_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-huge",
				[2] = "custom:DUST_CLOUD_HUGE",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			arm_bosscannon = {
				areaofeffect = 450,
				avoidfeature = false,
				craterareaofeffect = 450,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.4,
				energypershot = 3000,
				explosiongenerator = "custom:t3unitexplosionxl",
				firestarter = 100,
				gravityaffected = "true",
				impulseboost = 0.25,
				impulsefactor = 1.8,
				leadlimit = 64,
				name = "Huge g2g plasma cannon",
				noselfdamage = true,
				proximitypriority = -10,
				range = 1000,
				reloadtime = 15,
				size = 9,
				soundhit = "xplonuk2",
				soundhitwet = "splslrg",
				soundstart = "krogun1",
				targetmoveerror = 0.5,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 450,
				damage = {
					commanders = 3000,
					default = 15000,
					shields = 3000,
					subs = 5,
					vtol = 999999,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARM_BOSSCANNON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
