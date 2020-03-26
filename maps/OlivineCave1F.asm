	const_def 2 ; object constants

OlivineCave1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OlivineCave1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  9, ROUTE_40, 2
	warp_event  7,  3, OLIVINE_CAVE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
