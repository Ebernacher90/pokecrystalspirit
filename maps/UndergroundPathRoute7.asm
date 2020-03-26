UndergroundPathRoute7_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

UndergroundPathRoute7_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  4, UNDERGROUND_PATH_WEST_EAST, 1
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
