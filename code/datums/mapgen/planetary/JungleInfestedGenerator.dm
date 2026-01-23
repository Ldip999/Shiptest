/datum/map_generator/planet_generator/jungle_infested
	perlin_zoom = 65
	mountain_height = 0.30

	primary_area_type = /area/overmap_encounter/planetoid/jungle_infested

	biome_table = list(
		BIOME_COLDEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_wasteland,
			BIOME_LOW_HUMIDITY = /datum/biome/jungle_wasteland,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/jungle_infested/plains,
			BIOME_HIGH_HUMIDITY = /datum/biome/jungle_infested/plains,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/mudlands
		),
		BIOME_COLD = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_wasteland,
			BIOME_LOW_HUMIDITY = /datum/biome/jungle_infested/plains,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/jungle_infested,
			BIOME_HIGH_HUMIDITY = /datum/biome/mudlands,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/mudlands
		),
		BIOME_WARM = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/mudlands,
			BIOME_HIGH_HUMIDITY = /datum/biome/mudlands,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/jungle_infested
		),
		BIOME_TEMPERATE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_infested/dense,
			BIOME_LOW_HUMIDITY = /datum/biome/mudlands,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/jungle/water,
			BIOME_HIGH_HUMIDITY = /datum/biome/jungle/water,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/mudlands
		),
		BIOME_HOT = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/jungle_infested/dense,
			BIOME_HIGH_HUMIDITY = /datum/biome/jungle_infested/dense,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/jungle_infested/dense
		),
		BIOME_HOTTEST = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/jungle_infested/dense,
			BIOME_LOW_HUMIDITY = /datum/biome/jungle_infested/dense,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/mudlands,
			BIOME_HIGH_HUMIDITY = /datum/biome/jungle/water,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/jungle/water
		)
	)

	cave_biome_table = list(
		BIOME_COLDEST_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/jungle_infested
		),
		BIOME_COLD_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/jungle_infested
		),
		BIOME_WARM_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/jungle_infested
		),
		BIOME_HOT_CAVE = list(
			BIOME_LOWEST_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_LOW_HUMIDITY = /datum/biome/cave/jungle_infested,
			BIOME_MEDIUM_HUMIDITY = /datum/biome/cave/lush_infested,
			BIOME_HIGH_HUMIDITY = /datum/biome/cave/lush_infested,
			BIOME_HIGHEST_HUMIDITY = /datum/biome/cave/lush_infested
		)
	)

/datum/biome/jungle_infested
	open_turf_types = list(/turf/open/floor/plating/asteroid/dirt/grass/jungle = 1)
	flora_spawn_list = list(
		/obj/structure/flora/grass/jungle = 1,
		/obj/structure/flora/grass/jungle/b = 1,
		/obj/structure/flora/tree/jungle = 3,
		/obj/structure/flora/rock/jungle = 1,
		/obj/structure/flora/junglebush = 1,
		/obj/structure/flora/junglebush/b = 1,
		/obj/structure/flora/junglebush/c = 1,
		/obj/structure/flora/junglebush/large = 1,
		/obj/structure/spacevine/dense = 8,
		/obj/structure/spacevine/dense = 2,
		/obj/structure/flora/ash/garden = 1,
	)
	flora_spawn_chance = 75
	mob_spawn_chance = 5
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/poison/giant_spider/hunter = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/tarantula = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/hunter/viper = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/nurse/midwife = 10,
	)

	feature_spawn_chance = 1.4
	feature_spawn_list = list(
		/obj/structure/vein/jungle_infested = 2,
		/obj/structure/vein/jungle_infested/classtwo = 2,
		/obj/structure/vein/jungle_infested/classtwo/rare = 4,
		/obj/structure/vein/jungle_infested/classthree = 2,
		/obj/structure/vein/jungle_infested/classthree/rare = 6,
		/obj/effect/greeble_spawner/grass_patch_spawner/dark_jungle = 20,
		/obj/effect/greeble_spawner/grass_patch_spawner/yellow_jungle = 50,
	)

/datum/biome/jungle_infested/dense
	flora_spawn_chance = 85
	open_turf_types = list(/turf/open/floor/plating/asteroid/dirt/grass/jungle = 1, /turf/open/floor/plating/asteroid/dirt/jungle/dark = 9)
	flora_spawn_list = list(
		/obj/structure/flora/grass/jungle = 1,
		/obj/structure/flora/grass/jungle/b = 1,
		/obj/structure/flora/tree/jungle = 5,
		/obj/structure/flora/rock/jungle = 1,
		/obj/structure/flora/junglebush = 1,
		/obj/structure/flora/junglebush/b = 1,
		/obj/structure/flora/junglebush/c = 1,
		/obj/structure/flora/junglebush/large = 1,
		/obj/structure/spacevine/dense = 20,
		/obj/structure/flora/ash/garden = 1,
	)
	mob_spawn_chance = 5
	feature_spawn_chance = 2

/datum/biome/jungle_infested/plains
	open_turf_types = list(/turf/open/floor/plating/asteroid/dirt/grass/jungle = 1)
	flora_spawn_chance = 50
	mob_spawn_chance = 10
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/poison/giant_spider/hunter = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/tarantula = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/hunter/viper = 10,
		/mob/living/simple_animal/hostile/poison/giant_spider/nurse/midwife = 10,
	)

/datum/biome/cave/jungle_infested
	open_turf_types = list(/turf/open/floor/plating/asteroid/dirt/jungle = 10, /turf/open/floor/plating/asteroid/dirt/jungle/dark = 10)
	closed_turf_types = list(/turf/closed/mineral/random/jungle_infested = 1)
	flora_spawn_chance = 5
	flora_spawn_list = list(
		/obj/structure/flora/rock/jungle = 1,
		/obj/structure/flora/rock/pile = 1,
		/obj/structure/flora/rock = 1,
		/obj/structure/flora/ash/space = 1,
		/obj/structure/flora/ash/leaf_shroom = 1,
		/obj/structure/flora/ash/cap_shroom = 1,
		/obj/structure/flora/ash/stem_shroom = 1,
		/obj/structure/flora/ash/puce = 1,
	)
	mob_spawn_chance = 20
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/alien = 5,
		/mob/living/simple_animal/hostile/alien/sentinel = 5,
		/mob/living/simple_animal/hostile/alien/queen = 1,
		/mob/living/simple_animal/hostile/alien/drone = 5,
	)
	feature_spawn_chance = 40
	feature_spawn_list = list(
		/obj/structure/alien/weeds/node = 60,
		/obj/structure/alien/egg/grown = 10,
		/obj/item/pickaxe/rusted = 1,
		/obj/effect/spawner/random/anomaly/jungle = 2,
		/obj/structure/vein/jungle_infested = 8,
		/obj/structure/vein/jungle_infested/classtwo = 4,
	)


/datum/biome/cave/lush_infested
	open_turf_types = list(/turf/open/floor/plating/asteroid/dirt/grass/jungle = 1)
	closed_turf_types = list(/turf/closed/mineral/random/jungle_infested = 1)
	flora_spawn_chance = 50
	flora_spawn_list = list(
		/obj/structure/flora/tree/jungle/small = 1,
		/obj/structure/flora/ausbushes/brflowers = 1,
		/obj/structure/flora/ausbushes/fernybush = 1,
		/obj/structure/flora/ausbushes/fullgrass = 1,
		/obj/structure/flora/ausbushes/genericbush = 1,
		/obj/structure/flora/ausbushes/grassybush = 1,
		/obj/structure/flora/ausbushes/lavendergrass = 1,
		/obj/structure/flora/ausbushes/lavendergrass = 1,
		/obj/structure/flora/ausbushes/leafybush = 1,
		/obj/structure/flora/ausbushes/palebush = 1,
		/obj/structure/flora/ausbushes/pointybush = 1,
		/obj/structure/flora/ausbushes/ppflowers = 1,
		/obj/structure/flora/ausbushes/reedbush = 1,
		/obj/structure/flora/ausbushes/sparsegrass = 1,
		/obj/structure/flora/ausbushes/stalkybush = 1,
		/obj/structure/flora/ausbushes/stalkybush = 1,
		/obj/structure/flora/ausbushes/sunnybush = 1,
		/obj/structure/flora/ausbushes/ywflowers = 1,
		/obj/structure/spacevine/dense = 20,
		/obj/structure/spacevine/dense = 20,
		/obj/structure/flora/rock/jungle = 1,
		/obj/structure/flora/ash/garden = 1,
		/obj/structure/flora/ash/space/voidmelon = 1
	)
	mob_spawn_chance = 20
	mob_spawn_list = list(
		/mob/living/simple_animal/hostile/alien = 1,
		/mob/living/simple_animal/hostile/alien/sentinel = 1,
		/mob/living/simple_animal/hostile/alien/drone = 1,
	)
	feature_spawn_chance = 60
	feature_spawn_list = list(
		/obj/structure/alien/weeds/node = 20,
		/obj/structure/alien/egg/grown = 10,
	)
