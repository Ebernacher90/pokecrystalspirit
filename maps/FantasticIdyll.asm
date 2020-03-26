	const_def 2 ; object constants

FantasticIdyll_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FantasticIdyll_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  8,  1, OLIVINE_CAVE_B1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
