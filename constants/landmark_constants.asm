; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Johto landmarks
	const SPECIAL_MAP       		; 00
	const NEW_BARK_TOWN     		; 01
	const ROUTE_29          		; 02
	const CHERRYGROVE_CITY  		; 03
	const ROUTE_30          		; 04
	const ROUTE_31          		; 05
	const VIOLET_CITY       		; 06
	const SPROUT_TOWER      		; 07
	const ROUTE_32          		; 08
	const RUINS_OF_ALPH     		; 09
	const UNION_CAVE        		; 0a
	const ROUTE_33          		; 0b
	const AZALEA_TOWN       		; 0c
	const SLOWPOKE_WELL     		; 0d
	const ILEX_FOREST       		; 0e
	const ROUTE_34          		; 0f
	const GOLDENROD_CITY    		; 10
	const RADIO_TOWER       		; 11
	const GLOBAL_TERMINAL   		; 12
	const ROUTE_35          		; 13
	const NATIONAL_PARK     		; 14
	const ROUTE_36          		; 15
	const ROUTE_37          		; 16
	const ECRUTEAK_CITY     		; 17
	const TIN_TOWER         		; 18
	const BURNED_TOWER      		; 19
	const ROUTE_38          		; 1a
	const ROUTE_39          		; 1b
	const OLIVINE_CITY      		; 1c
	const LIGHTHOUSE        		; 1d
	const BATTLE_TOWER      		; 1e
	const ROUTE_40          		; 1f
	const OLIVINE_CAVE      		; 20
	const FANTASTIC_IDYLL   		; 21
	const WHIRL_ISLANDS     		; 22
	const ROUTE_41          		; 23
	const CIANWOOD_CITY     		; 24
	const ROUTE_42          		; 25
	const MT_MORTAR         		; 26
	const MAHOGANY_TOWN     		; 27
	const ROUTE_43          		; 28
	const LAKE_OF_RAGE      		; 29
	const ROUTE_44          		; 2a
	const ICE_PATH          		; 2b
	const BLACKTHORN_CITY   		; 2c
	const DRAGONS_DEN       		; 2d
	const ROUTE_45          		; 2e
	const DARK_CAVE         		; 2f
	const ROUTE_46          		; 30
	const SILVER_CAVE       		; 31

KANTO_LANDMARK EQU const_value
	const PALLET_TOWN       		; 32
	const ROUTE_1           		; 33
	const VIRIDIAN_CITY     		; 34
	const ROUTE_2           		; 35
	const PEWTER_CITY       		; 36
	const PEWTER_MUSEUM				; 37
	const ROUTE_3           		; 38
	const MT_MOON           		; 39
	const ROUTE_4           		; 3a
	const CERULEAN_CAVE     		; 3b
	const CERULEAN_CITY     		; 3c
	const ROUTE_24          		; 3d
	const ROUTE_25          		; 3e
	const ROUTE_5           		; 3f
	const UNDERGROUND_PATH  		; 40
	const ROUTE_6           		; 41
	const VERMILION_CITY    		; 42
	const DIGLETTS_CAVE     		; 43
	const ROUTE_7           		; 44
	const ROUTE_8           		; 45
	const ROUTE_9           		; 46
	const ROCK_TUNNEL       		; 47
	const ROUTE_10          		; 48
	const POWER_PLANT       		; 49
	const LAVENDER_TOWN     		; 4a
	const LAV_RADIO_TOWER   		; 4b
	const CELADON_CITY      		; 4c
	const SAFFRON_CITY      		; 4d
	const ROUTE_11          		; 4e
	const ROUTE_12          		; 4f
	const ROUTE_13          		; 50
	const ROUTE_14          		; 51
	const ROUTE_15          		; 52
	const ROUTE_16          		; 53
	const ROUTE_17          		; 54
	const ROUTE_18          		; 55
	const FUCHSIA_CITY      		; 56
	const SAFARI_ZONE       		; 57
	const ROUTE_19          		; 58
	const ROUTE_20          		; 59
	const SEAFOAM_ISLANDS   		; 5a
	const CINNABAR_ISLAND   		; 5b
	const ROUTE_21          		; 5c
	const ROUTE_22          		; 5d
	const VICTORY_ROAD      		; 5e
	const ROUTE_23          		; 5f
	const INDIGO_PLATEAU    	    ; 60
	const ROUTE_26          	    ; 61
	const ROUTE_27         	        ; 62
	const TOHJO_FALLS       	    ; 63
	const ROUTE_28                  ; 64
	const FAST_SHIP                 ; 65
	const UNDERGROUND_PATH_ROUTE_7  ; 66

; used in CaughtData
GIFT_LOCATION  EQU $7e
EVENT_LOCATION EQU $7f

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
