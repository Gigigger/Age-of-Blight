/datum/job/advclass/guilder/volstrucker
	title = "Volstrucker"
	tutorial = "You studied under the Arcane Trickster, a legnendary figure within the Thieves Guild.\
		Allowing you to learn the ancient techniques that are now tattooed into you, this allows you to use magic from the shadows."
	allowed_races = RACES_PLAYER_ALL
	outfit = /datum/outfit/guilder/volstrucker
	category_tags = list(CTAG_CRIME)
	total_positions = 5
	cmode_music = 'sound/music/cmode/adventurer/CombatSorcerer.ogg'
	blacklisted_species = list(SPEC_ID_HALFLING)
	exp_types_granted = list(EXP_TYPE_CRIME, EXP_TYPE_COMBAT, EXP_TYPE_MAGICK)
	magic_user = TRUE
	spell_points = 10

	jobstats = list(
		STATKEY_STR = -3, //Massively debuffed str in exchange for int due to buffing weapon stuff
		STATKEY_INT = 4,
		STATKEY_SPD = 2
	)

	skills = list(
		/datum/skill/combat/swords = 1,
		/datum/skill/combat/wrestling = 3,
		/datum/skill/combat/unarmed = 3,
		/datum/skill/misc/athletics = 4,
		/datum/skill/combat/knives = 4,
		/datum/skill/misc/swimming = 2,
		/datum/skill/misc/reading = 3,
		/datum/skill/misc/medicine = 2,
		/datum/skill/misc/sewing = 2,
		/datum/skill/magic/arcane = 3,
		/datum/skill/craft/alchemy = 2,
		/datum/skill/misc/climbing = 5,
		/datum/skill/misc/sneaking = 4,
		/datum/skill/misc/lockpicking = 3,
	)

	traits = list(
		TRAIT_DODGEEXPERT,
		TRAIT_WHISPERCASTER
	)

	spells = list(
		/datum/action/cooldown/spell/undirected/touch/prestidigitation,
		/datum/action/cooldown/spell/undirected/secondsight,
		/datum/action/cooldown/spell/undirected/conjure_item/dagger,
	)

/datum/job/advclass/mercenary/spellsword/after_spawn(mob/living/carbon/human/spawned, client/player_client)
	. = ..()
	spawned.merctype = 9

/datum/outfit/guilder/volstrucker
	name = "Volstrucker"
	head = /obj/item/clothing/head/faceless
	mask = /obj/item/clothing/face/shepherd/shadowmask
	cloak = /obj/item/clothing/cloak/faceless
	armor = /obj/item/clothing/armor/regenerating/skin/volstrucker
	wrists = /obj/item/clothing/wrists/bracers/leather
	shirt = /obj/item/clothing/shirt/tunic/colored/green
	gloves = /obj/item/clothing/gloves/leather
	pants = /obj/item/clothing/pants/trou/leather
	shoes = /obj/item/clothing/shoes/boots/leather
	belt = /obj/item/storage/belt/leather/black
	beltr = /obj/item/weapon/knife/dagger/steel/special
	beltl = /obj/item/storage/magebag/apprentice
	backl = /obj/item/storage/backpack/satchel
	backpack_contents = list(
		/obj/item/key/crime = 1,
		/obj/item/storage/belt/pouch/coins/poor = 1,
		/obj/item/reagent_containers/glass/bottle/manapot = 1,
		/obj/item/book/granter/spellbook/apprentice = 1,
		/obj/item/chalk = 1
	)
