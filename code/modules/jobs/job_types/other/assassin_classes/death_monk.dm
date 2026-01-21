
/datum/job/advclass/guilder/death_monk
	title = "Eastern Monk"
	tutorial = "You are a Master of Martial Arts, a Death Monk that hails from the Sect of Heavenly Deathfist. \
		Master of unarmed combat in the name of Psydon and the Scholar-Empress of Tianxia, the Ink-Jade Empire far east of Grenzelhoft.\
		Despite your faith in Psydon, you have taken on contracts and eventually service within the Thieves Guild. \
		Whether it's because you have fallen wayward or believe you can enact change within."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_PLAYER_JADE
	category_tags = list(CTAG_CRIME)
	outfit = /datum/outfit/guilder/death_monk
	cmode_music = 'sound/music/cmode/guild/Combat_Monk.ogg'
	total_positions = 10

	jobstats = list(
		STATKEY_STR = 2,
		STATKEY_END = 2,
		STATKEY_CON = 2,
		STATKEY_SPD = 2
	)

	skills = list(
		/datum/skill/combat/swords = 3,
		/datum/skill/misc/athletics = 4,
		/datum/skill/combat/unarmed = 4,
		/datum/skill/combat/wrestling = 4,
		/datum/skill/misc/sneaking = 3,
		/datum/skill/misc/stealing = 3,
		/datum/skill/misc/climbing = 4,
		/datum/skill/misc/swimming = 3,
		/datum/skill/misc/medicine = 2,
		/datum/skill/misc/sewing = 2,
		/datum/skill/misc/reading = 2,
		/datum/skill/craft/cooking = 1,
	)

	traits = list(
		TRAIT_DODGEEXPERT,
		TRAIT_STRONG_GRABBER,
		TRAIT_PSYDONIAN_GRIT,
		TRAIT_PSYDONITE,
	)
	languages = list(/datum/language/oldpsydonic)

/datum/outfit/guilder/death_monk
	name = "Death Monk"
	shoes = /obj/item/clothing/shoes/shortboots
	armor = /obj/item/clothing/armor/monk_robe
	shirt = /obj/item/clothing/shirt/undershirt/easttats/death_monk
	backr = /obj/item/storage/backpack/satchel/black
	belt = /obj/item/storage/belt/leather/rope/dark
	pants = /obj/item/clothing/pants/tights/colored/black
	cloak = /obj/item/clothing/cloak/raincloak/furcloak/colored/brown
	neck = /obj/item/clothing/neck/psycross/silver
	wrists = /obj/item/clothing/wrists/bracers/psythorns
	backpack_contents = list(
		/obj/item/key/crime = 1,
		/obj/item/storage/belt/pouch/coins/mid = 1,
	)
/*
/datum/outfit/guilder/death_monk/post_equip(mob/living/carbon/human/equipped_human, visuals_only)
	. = ..()
	if(visuals_only)
		return
//Death monk gets Psydonic equipment due to the lore, however without the assistance of the Absolver it doesn't do anything much
	var/static/list/weapons = list(
		"Discipline - Unarmed" = null,
		"Katar" = /obj/item/weapon/katar/psydon,
		"Knuckledusters" = /obj/item/weapon/knuckles/psydon,
		"Quarterstaff" = /obj/item/weapon/polearm/woodstaff/quarterstaff,
	)
	var/weapon_choice = equipped_human.select_equippable(equipped_human, weapons, message = "What did you master?")
	var/obj/item/clothing/gloves/gloves_to_wear = /obj/item/clothing/gloves/bandages/weighted
	var/mob/living/carbon/human/user = equipped_human
	switch(weapon_choice)
		if("Discipline - Unarmed")
			user.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
			user.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
			user.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
			gloves_to_wear = /obj/item/clothing/gloves/bandages/pugilist
			ADD_TRAIT(user, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
			ADD_TRAIT(user, TRAIT_IGNOREDAMAGESLOWDOWN, JOB_TRAIT)
		if("Katar")
			user.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
			ADD_TRAIT(user, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
		if("Knuckledusters")
			user.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
			ADD_TRAIT(user, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
		if("Quarterstaff")
			user.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
			user.adjust_stat_modifier(STATMOD_JOB, STATKEY_PER, 1)
			user.adjust_stat_modifier(STATMOD_JOB, STATKEY_INT, 1)
	equipped_human.equip_to_slot_or_del(new gloves_to_wear, ITEM_SLOT_GLOVES, TRUE)
*/

/datum/job/advclass/guilder/death_monk/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
//Death monk gets Psydonic equipment due to the lore, however without the assistance of the Absolver it doesn't do anything much
	var/static/list/weapons = list(
		"Discipline - Unarmed" = null,
		"Katar" = /obj/item/weapon/katar/psydon,
		"Knuckledusters" = /obj/item/weapon/knuckles/psydon,
		"Quarterstaff" = /obj/item/weapon/polearm/woodstaff/quarterstaff,
	)
	var/weapon_choice = spawned.select_equippable(player_client, weapons, message = "What did you master?")
	var/obj/item/clothing/gloves/gloves_to_wear = /obj/item/clothing/gloves/bandages/weighted
	if(weapon_choice == "Discipline - Unarmed")
		spawned.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		spawned.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		spawned.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
		gloves_to_wear = /obj/item/clothing/gloves/bandages/pugilist
		ADD_TRAIT(spawned, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
		ADD_TRAIT(spawned, TRAIT_IGNOREDAMAGESLOWDOWN, JOB_TRAIT)
	if(weapon_choice == "Katar")
		spawned.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
		ADD_TRAIT(spawned, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
	if(weapon_choice == "Knuckledusters")
		spawned.adjust_stat_modifier(STATMOD_JOB, STATKEY_STR, 1)
		ADD_TRAIT(spawned, TRAIT_CRITICAL_RESISTANCE, JOB_TRAIT)
	if(weapon_choice == "Quarterstaff")
		spawned.adjust_skillrank(/datum/skill/combat/polearms, 4, TRUE)
		spawned.adjust_stat_modifier(STATMOD_JOB, STATKEY_PER, 1)
		spawned.adjust_stat_modifier(STATMOD_JOB, STATKEY_INT, 1)
	spawned.equip_to_slot_or_del(new gloves_to_wear, ITEM_SLOT_GLOVES, TRUE)
