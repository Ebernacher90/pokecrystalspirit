Route7_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route7_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 15,  6, ROUTE_7_SAFFRON_GATE, 1
	warp_event 15,  7, ROUTE_7_SAFFRON_GATE, 2
	warp_event  6,  9, UNDERGROUND_PATH_ROUTE_7, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
