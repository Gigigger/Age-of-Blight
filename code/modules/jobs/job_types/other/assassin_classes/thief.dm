/datum/job/advclass/guilder/Lupin
	title = "Locksmith"
	tutorial = "A Master Thief. You're a professional. A cunning rogue and thief. The best at your Trade \
		You've arrived here to ply your trade and work with the local Guild to steal as much valuables as you can."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_PLAYER_ALL
	category_tags = list(CTAG_CRIME)
	outfit = /datum/outfit/guilder/thief
	total_positions = 10
	cmode_music = 'sound/music/cmode/adventurer/CombatDream.ogg'

	skills = list(
		/datum/skill/combat/axesmaces = SKILL_LEVEL_JOURNEYMAN, // Needed just for NPC's.
		/datum/skill/misc/swimming = SKILL_LEVEL_MASTER,
		/datum/skill/combat/wrestling = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/unarmed = SKILL_LEVEL_EXPERT, // They're not meant to kill.
		/datum/skill/misc/climbing = SKILL_LEVEL_MASTER,
		/datum/skill/craft/crafting = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/reading = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/sneaking = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/stealing = SKILL_LEVEL_LEGENDARY,
		/datum/skill/misc/lockpicking = SKILL_LEVEL_MASTER,
		/datum/skill/misc/sewing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/bombs = SKILL_LEVEL_JOURNEYMAN // To craft Smoke Bombs.
	)

	traits = list(
		TRAIT_DEADNOSE,
		TRAIT_THIEVESGUILD,
		TRAIT_DODGEEXPERT,
		TRAIT_LIGHT_STEP
	)

	jobstats = list(
		STATKEY_CON = -1,
		STATKEY_END = -1,
		STATKEY_STR = -2, // These are all relatively low, the class requires cantrips to work around these.
		STATKEY_INT = 4,
		STATKEY_SPD = 2
	)

	spells = list(
		/datum/action/cooldown/spell/undirected/conjure_item/smoke_bomb,
		/datum/action/cooldown/spell/undirected/adrenalinerush,
		/datum/action/cooldown/spell/undirected/secondsight,
		///datum/action/cooldown/spell/undirected/jaunt/ethereal_jaunt, // He's missing a two-tile jaunt, something to slip under doors. Outta my skill-level. Oh well!
		/datum/action/cooldown/spell/undirected/conjure_item/summon_lockpick,
		/datum/action/cooldown/spell/projectile/flashpowder,
		///datum/action/cooldown/spell/aoe/snuff,
		/datum/action/cooldown/spell/undirected/conjure_item/calling_card
	)


/datum/outfit/guilder/thief
	name = "Master Thief"
	mask = /obj/item/clothing/face/antiq
	shoes = /obj/item/clothing/shoes/boots/leather
	cloak = /obj/item/clothing/cloak/raincloak/colored/mortus
	head = /obj/item/clothing/head/roguehood/faceless
	shirt = /obj/item/clothing/shirt/tunic/colored/purple
	backr = /obj/item/storage/backpack/satchel
	pants = /obj/item/clothing/pants/trou/leather
	gloves = /obj/item/clothing/gloves/bandages/pugilist
	armor = /obj/item/clothing/armor/leather/splint
	neck = /obj/item/clothing/neck/coif
	belt = /obj/item/storage/belt/leather/black
	beltl = /obj/item/weapon/mace/cudgel
	backpack_contents = list(
		/obj/item/lockpickring/mundane = 1,
		/obj/item/key/crime = 1,
		/obj/item/grapplinghook = 1,
		/obj/item/reagent_containers/glass/bottle/stronghealthpot = 1,
	)
