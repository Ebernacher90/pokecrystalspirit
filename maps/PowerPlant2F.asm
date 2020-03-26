	const_def ; object constants

PowerPlant2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PowerPlant2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 37,  2, POWER_PLANT_1F, 2

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
