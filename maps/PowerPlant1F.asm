	const_def ; object constants

PowerPlant1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

PowerPlant1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  2, POWER_PLANT, 3
	warp_event  7,  2, POWER_PLANT_2F, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
