	const_def 2 ; object constants
	const PEWTERMUSEUM1F_REZEPTIONIST
	const PEWTERMUSEUM1F_TOURIST
	const PEWTERMUSEUM1F_TOURIST1
	const PEWTERMUSEUM1F_FORSCHER
	const PEWTERMUSEUM1F_FORSCHER1
	const PEWTERMUSEUM1F_FORSCHER2

PewterMuseum1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Rezeptionist:
	jumptextfaceplayer RezeptionistText
	
RezeptionistText:
	text "Dieses Museum hat"
	line "früher 50 Euro"
	cont "Eintritt verlangt!"

	para "Aber jetzt dürfen"
	line "alle kostenlos ins"
	cont "Museum rein."

	para "Ich wünsche Ihnen"
	line "viel Spass bei"
	cont "Ihrem Besuch!"
	done
	
Tourist:
	jumptextfaceplayer TouristText
	
TouristText:
	text "Ich komme von weit"
	line "her. Es war eine"
	cont "lange und"

	para "anstrengende"
	line "Fahrt, mit der"
	cont "M.S. Aqua."

	para "Letztendlich bin"
	line "ich in diesem"
	cont "Museum gelandet."
	
	para "Es ist sehr schön"
	line "hier, besonders"
	cont "interessiert mich"
	
	para "wie hier früher"
	line "die antiken"
	cont "#MON gelebt"
	
	para "haben. Sehr"
	line "Interssant"
	cont "dieses Schild"
	
	para "hier, was hier"
	line "geschrieben"
	cont "steht!"
	done
	
Tourist1:
	jumptextfaceplayer Tourist1Text
	
Tourist1Text:
	text "Ich und mein Mann"
	line "kommen von weit"
	cont "her. Wir sind über"
	
	para "24 Stunden mit den"
	line "Boot gefahren nur"
	cont "um, dieses"
	
	para "berühmte Museum zu"
	line "besuchen. Es hat"
	cont "in unseren Führer"
	
	para "9 von 10 Sternen,"
	line "deshal haben wir"
	cont "uns auch"
	
	para "beschlossen,"
	line "diese lange Fahrt"
	cont "auf uns zu nehmen"
	
	para "denn eigentlich"
	line "hasse ich lange"
	cont "fahrten!"
	done
	
Forscher:
	jumptextfaceplayer ForscherText
	
ForscherText:
	text "Ich bin ein"
	line "Gehilfe von"
	cont "Professor Eich!"

	para "Früher hab ich"
	line "Ash Ketchum den"
	cont "Altbernstein"

	para "überlassen, aber"
	line "jetzt hab ich"
	cont "nichts mehr, was"
	
	para "ich dir geben"
	line "könnte. Es tut"
	cont "mir extrem leid!"
	done
	
Forscher1:
	jumptextfaceplayer Forscher1Text
	
Forscher1Text:
	text "Der Typ da oben"
	line "hatte echt recht"
	cont "Damals! Alle Leute"

	para "haben ihn für"
	line "einen Spinner"
	cont "gehalten,"

	para "inbegriffen auch"
	line "ich. Ich musste"
	cont "mich früher"
	
	para "Entschuldigen und"
	line "die Demut über"
	cont "mich ergehen"
	
	para "lassen. Ich bin"
	line "sehr froh das"
	cont "hinter mir zu"
	
	para "haben. Jetzt"
	line "muss ich mehr"
	cont "Vertrauen haben,"
	
	para "in meinen"
	line "Mitmenschen!!!"
	done
	
Forscher2:
	jumptextfaceplayer Forscher2Text
	
Forscher2Text:
	text "Ich habe hier"
	line "früher das"
	cont "Eintrittsgeld"

	para "verlangt!!!"
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  10,  5, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Rezeptionist, -1
	object_event   2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Tourist, -1
	object_event   6,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Tourist1, -1
	object_event  15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Forscher, -1
	object_event  17,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Forscher1, -1
	object_event  12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Forscher2, -1
