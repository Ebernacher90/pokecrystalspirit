	const_def 2 ; object constants
	const PEWTERMUSEUM2F_TEAMAQUA
	const PEWTERMUSEUM2F_TEAMMAGMA

PewterMuseum2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TeamAqua:
	jumptextfaceplayer TeamAquaText
	
TeamAquaText:
	text "Bald werden wir"
	line "auch dieses Museum"
	cont "übernehmen hahaha!"
	done
	
TeamMagma:
	jumptextfaceplayer TeamMagmaText
	
TeamMagmaText:
	text "Team Magma wird"
	line "die Weltmacht"
	cont "erreichen, wir"
	
	para "werden auch unsere"
	line "Feinde Team Aqua"
	cont "aus dem weg"
	
	para "räumen. Darauf"
    line "kannst du dich"
	cont "verlassen, Pisser."
	
	para "Hahahahahahahaha!"
	done

PewterMuseum2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event   5,  4, SPRITE_AQUA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TeamAqua, -1
	object_event   5,  7, SPRITE_MAGMA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TeamMagma, -1
