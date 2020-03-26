SafariZoneFuchsiaGateBeta_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SafariZoneFuchsiaGateBeta_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  8,  0, SAFARI_ZONE_BETA, 1
	warp_event  9,  0, SAFARI_ZONE_BETA, 1
	warp_event  8, 15, FUCHSIA_CITY, 7
	warp_event  9, 15, FUCHSIA_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
