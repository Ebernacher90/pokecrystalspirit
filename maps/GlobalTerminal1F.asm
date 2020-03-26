	const_def ; object constants

GlobalTerminal1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GlobalTerminal1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  8, 11, GLOBAL_TERMINAL_OUTSIDE, 1
	warp_event  9, 11, GLOBAL_TERMINAL_OUTSIDE, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 0 ; object events
