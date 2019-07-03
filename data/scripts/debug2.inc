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

@ -----------------------------------------------------------------------------

GetGen4::
    givemon SPECIES_TURTWIG, 5, 0, 0, 0, 0
    givemon SPECIES_GROTLE, 5, 0, 0, 0, 0
    givemon SPECIES_TORTERRA, 5, 0, 0, 0, 0
    givemon SPECIES_CHIMCHAR, 5, 0, 0, 0, 0
    givemon SPECIES_MONFERNO, 5, 0, 0, 0, 0
    givemon SPECIES_INFERNAPE, 5, 0, 0, 0, 0
    givemon SPECIES_PIPLUP, 5, 0, 0, 0, 0
    givemon SPECIES_PRINPLUP, 5, 0, 0, 0, 0
    givemon SPECIES_EMPOLEON, 5, 0, 0, 0, 0
    givemon SPECIES_STARLY, 5, 0, 0, 0, 0
    givemon SPECIES_STARAVIA, 5, 0, 0, 0, 0
    givemon SPECIES_STARAPTOR, 5, 0, 0, 0, 0
    givemon SPECIES_BIDOOF 424
    givemon SPECIES_BIBAREL, 5, 0, 0, 0, 0
    givemon SPECIES_KRICKETOT, 5, 0, 0, 0, 0
    givemon SPECIES_KRICKETUNE, 5, 0, 0, 0, 0
    givemon SPECIES_SHINX, 5, 0, 0, 0, 0
    givemon SPECIES_LUXIO, 5, 0, 0, 0, 0
    givemon SPECIES_LUXRAY, 5, 0, 0, 0, 0
    givemon SPECIES_BUDEW, 5, 0, 0, 0, 0
    givemon SPECIES_ROSERADE, 5, 0, 0, 0, 0
    givemon SPECIES_CRANIDOS, 5, 0, 0, 0, 0
    givemon SPECIES_RAMPARDOS, 5, 0, 0, 0, 0
    givemon SPECIES_SHIELDON, 5, 0, 0, 0, 0
    givemon SPECIES_BASTIODON, 5, 0, 0, 0, 0
    givemon SPECIES_BURMY, 5, 0, 0, 0, 0
    givemon SPECIES_WORMADAM, 5, 0, 0, 0, 0
    givemon SPECIES_MOTHIM, 5, 0, 0, 0, 0
    givemon SPECIES_COMBEE, 5, 0, 0, 0, 0
    givemon SPECIES_VESPIQUEN, 5, 0, 0, 0, 0
    givemon SPECIES_PACHIRISU, 5, 0, 0, 0, 0
    givemon SPECIES_BUIZEL, 5, 0, 0, 0, 0
    givemon SPECIES_FLOATZEL, 5, 0, 0, 0, 0
    givemon SPECIES_CHERUBI, 5, 0, 0, 0, 0
    givemon SPECIES_CHERRIM, 5, 0, 0, 0, 0
    givemon SPECIES_SHELLOS, 5, 0, 0, 0, 0
    givemon SPECIES_GASTRODON, 5, 0, 0, 0, 0
    givemon SPECIES_AMBIPOM, 5, 0, 0, 0, 0
    givemon SPECIES_DRIFLOON, 5, 0, 0, 0, 0
    givemon SPECIES_DRIFBLIM, 5, 0, 0, 0, 0
    givemon SPECIES_BUNEARY, 5, 0, 0, 0, 0
    givemon SPECIES_LOPUNNY, 5, 0, 0, 0, 0
    givemon SPECIES_MISMAGIUS, 5, 0, 0, 0, 0
    givemon SPECIES_HONCHKROW, 5, 0, 0, 0, 0
    givemon SPECIES_GLAMEOW, 5, 0, 0, 0, 0
    givemon SPECIES_PURUGLY, 5, 0, 0, 0, 0
    givemon SPECIES_CHINGLING, 5, 0, 0, 0, 0
    givemon SPECIES_STUNKY, 5, 0, 0, 0, 0
    givemon SPECIES_SKUNTANK, 5, 0, 0, 0, 0
    givemon SPECIES_BRONZOR, 5, 0, 0, 0, 0
    givemon SPECIES_BRONZONG, 5, 0, 0, 0, 0
    givemon SPECIES_BONSLY, 5, 0, 0, 0, 0
    givemon SPECIES_MIME_JR, 5, 0, 0, 0, 0
    givemon SPECIES_HAPPINY, 5, 0, 0, 0, 0
    givemon SPECIES_CHATOT, 5, 0, 0, 0, 0
    givemon SPECIES_SPIRITOMB, 5, 0, 0, 0, 0
    givemon SPECIES_GIBLE, 5, 0, 0, 0, 0
    givemon SPECIES_GABITE, 5, 0, 0, 0, 0
    givemon SPECIES_GARCHOMP, 5, 0, 0, 0, 0
    givemon SPECIES_MUNCHLAX, 5, 0, 0, 0, 0
    givemon SPECIES_RIOLU, 5, 0, 0, 0, 0
    givemon SPECIES_LUCARIO, 5, 0, 0, 0, 0
    givemon SPECIES_HIPPOPOTAS, 5, 0, 0, 0, 0
    givemon SPECIES_HIPPOWDON, 5, 0, 0, 0, 0
    givemon SPECIES_SKORUPI, 5, 0, 0, 0, 0
    givemon SPECIES_DRAPION, 5, 0, 0, 0, 0
    givemon SPECIES_CROAGUNK, 5, 0, 0, 0, 0
    givemon SPECIES_TOXICROAK, 5, 0, 0, 0, 0
    givemon SPECIES_CARNIVINE, 5, 0, 0, 0, 0
    givemon SPECIES_FINNEON, 5, 0, 0, 0, 0
    givemon SPECIES_LUMINEON, 5, 0, 0, 0, 0
    givemon SPECIES_MANTYKE, 5, 0, 0, 0, 0
    givemon SPECIES_SNOVER, 5, 0, 0, 0, 0
    givemon SPECIES_ABOMASNOW, 5, 0, 0, 0, 0
    givemon SPECIES_WEAVILE, 5, 0, 0, 0, 0
    givemon SPECIES_MAGNEZONE, 5, 0, 0, 0, 0
    givemon SPECIES_LICKILICKY, 5, 0, 0, 0, 0
    givemon SPECIES_RHYPERIOR, 5, 0, 0, 0, 0
    givemon SPECIES_TANGROWTH, 5, 0, 0, 0, 0
    givemon SPECIES_ELECTIVIRE, 5, 0, 0, 0, 0
    givemon SPECIES_MAGMORTAR, 5, 0, 0, 0, 0
    givemon SPECIES_TOGEKISS, 5, 0, 0, 0, 0
    givemon SPECIES_YANMEGA, 5, 0, 0, 0, 0
    givemon SPECIES_LEAFEON, 5, 0, 0, 0, 0
    givemon SPECIES_GLACEON, 5, 0, 0, 0, 0
    givemon SPECIES_GLISCOR, 5, 0, 0, 0, 0
    givemon SPECIES_MAMOSWINE, 5, 0, 0, 0, 0
    givemon SPECIES_PORYGON_Z, 5, 0, 0, 0, 0
    givemon SPECIES_GALLADE, 5, 0, 0, 0, 0
    givemon SPECIES_PROBOPASS, 5, 0, 0, 0, 0
    givemon SPECIES_DUSKNOIR, 5, 0, 0, 0, 0
    givemon SPECIES_FROSLASS, 5, 0, 0, 0, 0
    givemon SPECIES_ROTOM, 5, 0, 0, 0, 0
    givemon SPECIES_UXIE, 5, 0, 0, 0, 0
    givemon SPECIES_MESPRIT, 5, 0, 0, 0, 0
    givemon SPECIES_AZELF, 5, 0, 0, 0, 0
    givemon SPECIES_DIALGA, 5, ITEM_ADAMANT_ORB, 0, 0, 0
    givemon SPECIES_PALKIA, 5, ITEM_LUSTROUS_ORB, 0, 0, 0
    givemon SPECIES_HEATRAN, 5, 0, 0, 0, 0
    givemon SPECIES_REGIGIGAS, 5, 0, 0, 0, 0
    givemon SPECIES_GIRATINAO, 5, ITEM_GRISEOUS_ORB, 0, 0, 0
    givemon SPECIES_CRESSELIA, 5, 0, 0, 0, 0
    givemon SPECIES_PHIONE, 5, 0, 0, 0, 0
    givemon SPECIES_MANAPHY, 5, 0, 0, 0, 0
    givemon SPECIES_DARKRAI, 5, 0, 0, 0, 0
    givemon SPECIES_SHAYMIN, 5, 0, 0, 0, 0
    givemon SPECIES_ARCEUS, 5, 0, 0, 0, 0
    givemon SPECIES_ARCEUS_DRAGON, 5, ITEM_DRACO_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_DARK, 5, ITEM_DREAD_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_GROUND, 5, ITEM_EARTH_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_FIGHTING, 5, ITEM_FIST_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_FIRE, 5, ITEM_FLAME_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_ICE, 5, ITEM_ICICLE_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_BUG, 5, ITEM_INSECT_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_STEEL, 5, ITEM_IRON_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_GRASS, 5, ITEM_MEADOW_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_PSYCHIC, 5, ITEM_MIND_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_FLYING, 5, ITEM_SKY_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_WATER, 5, ITEM_SPLASH_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_GHOST, 5, ITEM_SPOOKY_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_ROCK, 5, ITEM_STONE_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_POISON, 5, ITEM_TOXIC_PLATE, 0, 0, 0
    givemon SPECIES_ARCEUS_ELECTRIC, 5, ITEM_ZAP_PLATE, 0, 0, 0
    playfanfare MUS_FANFA4
    msgbox ReceivedMons 4
    waitfanfare
    closemessage
    end

ReceivedMons:
	.string "{PLAYER} received a lot of POKéMON!$"
