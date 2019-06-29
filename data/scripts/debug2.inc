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

@ -----------------------------------------------------------------------------

ForcedHatch::
    faceplayer
    special SelectMonForNPCTrade
    waitstate
    compare VAR_SPECIAL_4, 255
    goto_if_eq ForcedHatchEnd
	specialvar RESULT, ScriptGetPartyMonSpecies
	compare RESULT, SPECIES_EGG
	goto_if_ne CantForceHatch
    special EggHatch
    waitstate
	goto ForcedHatchEnd
ForcedHatchEnd:
    lock
	msgbox ForceHatch_Text_End, 4
	release
    end
CantForceHatch:
    lock
	msgbox ForceHatch_Text_NotAnEgg
	release
    end

ForceHatch_Text_End:
	.string "Come back anytime.$"

ForceHatch_Text_NotAnEgg:
	.string "I'm sorry, but that's not an EGG.$"

@ -----------------------------------------------------------------------------

ItemPack::
    giveitem ITEM_MASTER_BALL 99
    giveitem ITEM_POKE_BALL 99
    giveitem ITEM_GREAT_BALL 99
    giveitem ITEM_ULTRA_BALL 99
    giveitem ITEM_RARE_CANDY 99
    giveitem ITEM_TM01 99
    giveitem ITEM_TM02 99
    giveitem ITEM_TM03 99
    giveitem ITEM_TM04 99
    giveitem ITEM_TM05 99
    giveitem ITEM_TM06 99
    giveitem ITEM_TM07 99
    giveitem ITEM_TM08 99
    giveitem ITEM_TM09 99
    giveitem ITEM_TM10 99
    giveitem ITEM_TM11 99
    giveitem ITEM_TM12 99
    giveitem ITEM_TM13 99
    giveitem ITEM_TM14 99
    giveitem ITEM_TM15 99
    giveitem ITEM_TM16 99
    giveitem ITEM_TM17 99
    giveitem ITEM_TM18 99
    giveitem ITEM_TM19 99
    giveitem ITEM_TM20 99
    giveitem ITEM_TM21 99
    giveitem ITEM_TM22 99
    giveitem ITEM_TM23 99
    giveitem ITEM_TM24 99
    giveitem ITEM_TM25 99
    giveitem ITEM_TM26 99
    giveitem ITEM_TM27 99
    giveitem ITEM_TM28 99
    giveitem ITEM_TM29 99
    giveitem ITEM_TM30 99
    giveitem ITEM_TM31 99
    giveitem ITEM_TM32 99
    giveitem ITEM_TM33 99
    giveitem ITEM_TM34 99
    giveitem ITEM_TM35 99
    giveitem ITEM_TM36 99
    giveitem ITEM_TM37 99
    giveitem ITEM_TM38 99
    giveitem ITEM_TM39 99
    giveitem ITEM_TM40 99
    giveitem ITEM_TM41 99
    giveitem ITEM_TM42 99
    giveitem ITEM_TM43 99
    giveitem ITEM_TM44 99
    giveitem ITEM_TM45 99
    giveitem ITEM_TM46 99
    giveitem ITEM_TM47 99
    giveitem ITEM_TM48 99
    giveitem ITEM_TM49 99
    giveitem ITEM_TM50 99
    giveitem ITEM_TM51 99
    giveitem ITEM_TM52 99
    giveitem ITEM_TM53 99
    giveitem ITEM_TM54 99
    giveitem ITEM_TM55 99
    giveitem ITEM_TM56 99
    giveitem ITEM_TM57 99
    giveitem ITEM_TM58 99
    giveitem ITEM_TM59 99
    giveitem ITEM_TM60 99
    giveitem ITEM_TM61 99
    giveitem ITEM_TM62 99
    giveitem ITEM_TM63 99
    giveitem ITEM_TM64 99
    giveitem ITEM_TM65 99
    giveitem ITEM_TM66 99
    giveitem ITEM_TM67 99
    giveitem ITEM_TM68 99
    giveitem ITEM_TM69 99
    giveitem ITEM_TM70 99
    giveitem ITEM_TM71 99
    giveitem ITEM_TM72 99
    giveitem ITEM_TM73 99
    giveitem ITEM_TM74 99
    giveitem ITEM_TM75 99
    giveitem ITEM_TM76 99
    giveitem ITEM_TM77 99
    giveitem ITEM_TM78 99
    giveitem ITEM_TM79 99
    giveitem ITEM_TM80 99
    giveitem ITEM_TM81 99
    giveitem ITEM_TM82 99
    giveitem ITEM_TM83 99
    giveitem ITEM_TM84 99
    giveitem ITEM_TM85 99
    giveitem ITEM_TM86 99
    giveitem ITEM_TM87 99
    giveitem ITEM_TM88 99
    giveitem ITEM_TM89 99
    giveitem ITEM_TM90 99
    giveitem ITEM_TM91 99
    giveitem ITEM_TM92 99
    giveitem ITEM_HM01 1
    giveitem ITEM_HM02 1
    giveitem ITEM_HM03 1
    giveitem ITEM_HM04 1
    giveitem ITEM_HM05 1
    giveitem ITEM_HM06 1
    giveitem ITEM_HM07 1
    giveitem ITEM_HM08 1
    playfanfare MUS_FANFA4
	msgbox ReceivedItems 4
	waitfanfare
	closemessage
	end

ReceivedItems:
	.string "{PLAYER} received a lot of items!$"
    