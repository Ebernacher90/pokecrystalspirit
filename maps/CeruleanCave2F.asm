	const_def 2 ; object constants

CeruleanCave2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave2F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 25, 21, CERULEAN_CAVE_1F, 2
	warp_event 27,  3, CERULEAN_CAVE_1F, 3
	warp_event 39, 17, CERULEAN_CAVE_1F, 4
	warp_event  9, 33, CERULEAN_CAVE_1F, 5
	warp_event  7,  5, CERULEAN_CAVE_1F, 6
	warp_event 41,  5, CERULEAN_CAVE_1F, 7
	warp_event 47, 19, CERULEAN_CAVE_1F, 8
	warp_event 25, 35, CERULEAN_CAVE_1F, 8

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
