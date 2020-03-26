	const_def 2 ; object constants

CeruleanCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CeruleanCave1F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 21, 25, ROUTE_4, 2
	warp_event 17, 15, CERULEAN_CAVE_2F, 1
	warp_event 19,  5, CERULEAN_CAVE_2F, 2
	warp_event 31, 13, CERULEAN_CAVE_2F, 3
	warp_event  5, 23, CERULEAN_CAVE_2F, 4
	warp_event  5,  5, CERULEAN_CAVE_2F, 5
	warp_event 33,  5, CERULEAN_CAVE_2F, 6
	warp_event 33, 21, CERULEAN_CAVE_2F, 7

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
