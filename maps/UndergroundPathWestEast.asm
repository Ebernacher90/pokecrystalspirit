UndergroundPathWestEast_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

UndergroundPathWestEast_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  2,  5, UNDERGROUND_PATH_ROUTE_7, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
