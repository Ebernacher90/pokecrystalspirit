	const_def 2 ; object constants
	const MOBLINSHIDEOUT_KETTE
	const MOBLINSHIDEOUT_KETTENHUND

MoblinsHideout_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
Kette:
	jumptextfaceplayer KetteText
	
KetteText:
	text "Ein mettalenes"
	line "Geräusch ertönt!"
	done

Kettenhund:
	jumptextfaceplayer KettenhundText
	
KettenhundText:
	text "Wuff, Wuff!"
	done

MoblinsHideout_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  4, 12, OLIVINE_CAVE_B1F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event 27,  4, SPRITE_KETTE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Kette, -1
	object_event 28,  4, SPRITE_KETTENHUND, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Kettenhund, -1
