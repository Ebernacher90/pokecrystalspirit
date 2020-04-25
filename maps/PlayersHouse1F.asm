	const_def 2 ; object constants
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	jump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	opentext
	writetext ElmsLookingForYouText
	buttonsound
	stringtotext GearName, MEM_BUFFER_1
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	buttonsound
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	jump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	jump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	buttonsound
	jump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	buttonsound
	jump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	jump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	jump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	jump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	jump MeetMomScript

GearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd receiveitem
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_DEFAULT
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

NeighborScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	buttonsound
	jump .Main

.DayScript:
	writetext NeighborDayIntroText
	buttonsound
	jump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	buttonsound
	jump .Main

.Main:
	writetext NeighborText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

TVScript:
	jumptext TVText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	turn_head LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Oh, <PLAYER>…! Du"
	line "hast Zimmerarrest."

	para "Ich musste 80 Euro"
	line "Reparatur beim"

	para "#MARKT bezalen."
	line "Deswegen, werde"
	cont "ich dir dein,"

	para "Taschengeld"
	line "streichen. Hier"

	para "ist dein Teil und"
	line "pass besser darauf"

	para "auf mein Schatz!"
	done

MomGivesPokegearText:
	text "Tut ja Prof. Lind,"
	line "ja, ja okay. Du"

	para "musst, sofort zu"
	line "Prof. Lind gehen"
	cont "und mir sagen,"

	para "welcher Wochentag"
	line "es ist, du kleiner"

	para "Bengel! Du bleibst"
	line "mein Engelchen!"
	done

IsItDSTText:
	text "Ist Sommerzeit?"
	line "Speichere Zeit?"
	done

ComeHomeForDSTText:
	text "Komm heim um"
	line "die Uhr umzustel-"

	para "len auf Sommer-"
	line "zeit, oder Win-"

	para "terzeit. Du weisst"
	line "Bescheid mit dem"
	cont "Handy Schatz?"
	done

KnowTheInstructionsText:
	text "Ist ja auch, ganz"
	line "einfach. Simpel so"

	para "ein Smartphone zu"
	line "bedienen oder?"
	done

DontKnowTheInstructionsText:
	text "Für dumme, wie"
	line "z.B. du Schatz!"

	para "Drücke den an-aus"
	line "Knopf lange, zum"
	cont "anmachen des"
	
	para "Handy. Jetzt"
	line "weisst du wie es"
	cont "geht mein Schatz!"
	done

InstructionsNextText:
	text "Du weisst ja, das"
	line "du Telefonnummern,"

	para "speichern kannst,"
	line "oder mein Schatz."

	para "Ist das nicht,"
	line "wundervoll?"
	done

HurryUpElmIsWaitingText:
	text "PROF. Lind wartet,"
	line "das du kommst."

	para "also schnell"
	line "mein Schatz!"
	done

SoWhatWasProfElmsErrandText:
	text "So, what was PROF."
	line "ELM's errand?"

	para "…"

	para "That does sound"
	line "challenging."

	para "But, you should be"
	line "proud that people"
	cont "rely on you."
	done

ImBehindYouText:
	text "<PLAYER>, do it!"

	para "I'm behind you all"
	line "the way!"
	done

NeighborMornIntroText:
	text "Guten morgen,"
	line "<PLAY_G>! Wie"
	cont "geht's dir? Mir"

	para "geht's gut ich bin"
	line "zu Besuch bei"
	cont "meiner allerbesten"
	
	para "Kindheitsfreundin,"
	line "nämlich bei deiner"
	cont "Mama!"
	done

NeighborDayIntroText:
	text "Guten tag,"
	line "<PLAY_G>! Wie"
	cont "geht's dir? Mir"

	para "geht's gut ich bin"
	line "zu Besuch bei"
	cont "meiner allerbesten"
	
	para "Kindheitsfreundin,"
	line "nämlich bei deiner"
	cont "Mama!"
	done

NeighborNiteIntroText:
	text "Guten abend,"
	line "<PLAY_G>! Wie"
	cont "geht's dir? Mir"

	para "geht's gut ich bin"
	line "zu Besuch bei"
	cont "meiner allerbesten"
	
	para "Kindheitsfreundin,"
	line "nämlich bei deiner"
	cont "Mama!"
	done

NeighborText:
	text "<PLAY_G>, hast du"
	line "schon gehört?"

	para "Meine Tochter ist"
	line "wie du heute 10"

	para "Jahre alt"
	line "geworden. Aber"
	cont "anstatt Trainer"

	para "zu werden möchte,"
	line "sie #MON"
	cont "Forscherin werden,"
	
	para "wie Prof. Esche!"
	line "Sie hasst es zu"
	cont "kämpfen!"
	done

StoveText:
	text "Mom's specialty!"

	para "CINNABAR VOLCANO"
	line "BURGER!"
	done

SinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

FridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "tasty LEMONADE!"
	done

TVText:
	text "There's a movie on"
	line "TV: Stars dot the"

	para "sky as two boys"
	line "ride on a train…"

	para "I'd better get"
	line "rolling too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 10, 13, NEW_BARK_TOWN, 2
	warp_event 11, 13, NEW_BARK_TOWN, 2
	warp_event 17,  0, PLAYERS_HOUSE_2F, 1

	db 2 ; coord events
	coord_event  9,  4, SCENE_DEFAULT, MeetMomLeftScript
	coord_event 17,  4, SCENE_DEFAULT, MeetMomRightScript

	db 4 ; bg events
	bg_event  0,  1, BGEVENT_READ, StoveScript
	bg_event  1,  1, BGEVENT_READ, SinkScript
	bg_event  2,  1, BGEVENT_READ, FridgeScript
	bg_event  4,  1, BGEVENT_READ, TVScript

	db 5 ; object events
	object_event 15,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  1,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event 15,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  1,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event 12,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
