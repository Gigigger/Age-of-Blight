/datum/action/cooldown/spell/undirected/conjure_item/dagger
	name = "Volstrucker's Dagger"
	button_icon_state = "magicians_brick"
	sound = 'sound/magic/whiteflame.ogg'

	cooldown_time = 5 SECONDS
	spell_cost = 30

	spell_flags = SPELL_RITUOS
	item_type = /obj/item/weapon/knife/steel/dagger/volstrucker
	item_duration = 3 MINUTES
	item_outline = "#64ed6b"

	attunements = list(
		/datum/attunement/earth = 1,
	)

/datum/action/cooldown/spell/undirected/conjure_item/dagger/make_item()
	. = ..()
	if(!isliving(owner))
		return
	var/mob/living/L = owner
	var/INT = L.STAINT
	if(INT <= 10)
		return
	var/obj/item/dagger = .
	var/int_scaling = INT - 10
	dagger.force = (dagger.force + int_scaling) * attuned_strength
	dagger.throwforce = (dagger.throwforce + int_scaling * 2) * attuned_strength // 2x scaling for throwing. Let's go.
	return dagger

/obj/item/weapon/knife/steel/dagger/volstrucker
	name = "Volstrucker's Blade"
	desc = "A dagger formed out of arcyne energy. Makes for a deadly melee and throwing weapon."
	icon_state = "pdagger_poison"
	dropshrink = 0.75
	force = 15
	throwforce = 20
	throw_speed = 4
	armor_penetration = 30 // From iron tossblade
	obj_flags = null
	w_class = WEIGHT_CLASS_TINY
	associated_skill = /datum/skill/combat/knives // If it was tied to Arcane it'd be too strong
