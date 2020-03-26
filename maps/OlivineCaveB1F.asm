	const_def 2 ; object constants
	const OLIVINE_CAVE_B1F_AQUA

OlivineCaveB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerAquaGruntSahit:
	trainer AQUA_GRUNT, SAHIT, EVENT_BEAT_AQUA_GRUNT_SAHIT, AquaGruntSahitSeenText, AquaGruntSahitBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJustinAfterText
	waitbutton
	closetext
	end
	
AquaGruntSahitSeenText:
	text "Wow!"

	para "Ein kleines Kind"
	line "Was suchst du"
	cont "hier kleines?"
	cont "Willst du etwa"
	cont "Ärger?"
	done

AquaGruntSahitBeatenText:
	text "Eieiei!"
	line "Du bist zu stark!"
	done

AquaGruntSahitAfterText:
	text "Hier ist das"
	line "Versteck von"
	cont "TEAM-AQUA!"

	para "Meine Kumpels"
	line "sind allsamt"
	cont "stärker als ich"
	cont "sie werden dich"
	cont "zerquetschen!"
	done

OlivineCaveB1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 27,  3, OLIVINE_CAVE_1F, 2
	warp_event  3,  1, FANTASTIC_IDYLL, 1
	warp_event 21,  9, MOBLINS_HIDEOUT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 25,  2, SPRITE_AQUA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerAquaGruntSahit, -1
