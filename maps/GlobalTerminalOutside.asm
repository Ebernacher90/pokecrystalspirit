	const_def 2 ; object constants
	const GLOBALTERMINALOUTSIDE_ROCKET
	const GLOBALTERMINALOUTSIDE_POKEFAN_M

GlobalTerminalOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GlobalTerminalOutside_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  8, 9, GLOBAL_TERMINAL_1F, 1

	db 0 ; coord events

	db 0 ; bg events
	
	db 1 ; object events
	object_event 24, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityRocketScoutScript, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	object_event 18, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodCityPokefanMScript, EVENT_GOLDENROD_CITY_CIVILIANS
