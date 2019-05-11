CheckIVs::
	special RyuIvCheckerDef
	msgbox RyuIVDebug1 6
	special RyuIvCheckerOff
	msgbox RyuIVDebug2 4
	closemessage
	end

CheckEVs::
	special RyuEvCheckerDef
	msgbox RyuEVDebug1 6
	special RyuEvCheckerOff
	msgbox RyuEVDebug2 4
	closemessage
	
RyuIVDebug1::
	.string "Lead Pokémon Defensive IVs:\n"
	.string "HP: {STR_VAR_1}    Def: {STR_VAR_2}     SpDef: {STR_VAR_3}$"
	
RyuIVDebug2::
	.string "Lead Pokémon Offensive IVs:\n"
	.string "Atk: {STR_VAR_1}    SpAtk: {STR_VAR_2}     Speed: {STR_VAR_3}$"

RyuEVDebug1::
	.string "Lead Pokémon Defensive EVs:\n"
	.string "HP: {STR_VAR_1}    Def: {STR_VAR_2}     SpDef: {STR_VAR_3}$"
	
RyuEVDebug2::
	.string "Lead Pokémon Offensive EVs:\n"
	.string "Atk: {STR_VAR_1}    SpAtk: {STR_VAR_2}     Speed: {STR_VAR_3}$"
