#define rgb(red, green, blue) (((blue)<<10)|((green)<<5)|(red))

#include "constants/battle_anim.h"
#include "constants/moves.h"
#include "constants/songs.h"
	.include "include/macros.inc"
	.include "include/macros/battle_anim.inc"
	.include "constants/constants.inc"


	.section script_data, "aw", %progbits

gSingingMoves:: @ 81C7160
	.2byte MOVE_SING
	.2byte MOVE_PERISH_SONG
	.2byte MOVE_GRASS_WHISTLE
	.2byte 0xFFFF

	.align 2
gBattleAnims_Moves:: @ 81C7168
	.4byte Move_POUND
	.4byte Move_POUND
	.4byte Move_KARATE_CHOP
	.4byte Move_DOUBLE_SLAP
	.4byte Move_COMET_PUNCH
	.4byte Move_MEGA_PUNCH
	.4byte Move_PAY_DAY
	.4byte Move_FIRE_PUNCH
	.4byte Move_ICE_PUNCH
	.4byte Move_THUNDER_PUNCH
	.4byte Move_SCRATCH
	.4byte Move_VICE_GRIP
	.4byte Move_GUILLOTINE
	.4byte Move_RAZOR_WIND
	.4byte Move_SWORDS_DANCE
	.4byte Move_CUT
	.4byte Move_GUST
	.4byte Move_WING_ATTACK
	.4byte Move_WHIRLWIND
	.4byte Move_FLY
	.4byte Move_BIND
	.4byte Move_SLAM
	.4byte Move_VINE_WHIP
	.4byte Move_STOMP
	.4byte Move_DOUBLE_KICK
	.4byte Move_MEGA_KICK
	.4byte Move_JUMP_KICK
	.4byte Move_ROLLING_KICK
	.4byte Move_SAND_ATTACK
	.4byte Move_HEADBUTT
	.4byte Move_HORN_ATTACK
	.4byte Move_FURY_ATTACK
	.4byte Move_HORN_DRILL
	.4byte Move_TACKLE
	.4byte Move_BODY_SLAM
	.4byte Move_WRAP
	.4byte Move_TAKE_DOWN
	.4byte Move_THRASH
	.4byte Move_DOUBLE_EDGE
	.4byte Move_TAIL_WHIP
	.4byte Move_POISON_STING
	.4byte Move_TWINEEDLE
	.4byte Move_PIN_MISSILE
	.4byte Move_LEER
	.4byte Move_BITE
	.4byte Move_GROWL
	.4byte Move_ROAR
	.4byte Move_SING
	.4byte Move_SUPERSONIC
	.4byte Move_SONIC_BOOM
	.4byte Move_DISABLE
	.4byte Move_ACID
	.4byte Move_EMBER
	.4byte Move_FLAMETHROWER
	.4byte Move_MIST
	.4byte Move_WATER_GUN
	.4byte Move_HYDRO_PUMP
	.4byte Move_SURF
	.4byte Move_ICE_BEAM
	.4byte Move_BLIZZARD
	.4byte Move_PSYBEAM
	.4byte Move_BUBBLE_BEAM
	.4byte Move_AURORA_BEAM
	.4byte Move_HYPER_BEAM
	.4byte Move_PECK
	.4byte Move_DRILL_PECK
	.4byte Move_SUBMISSION
	.4byte Move_LOW_KICK
	.4byte Move_COUNTER
	.4byte Move_SEISMIC_TOSS
	.4byte Move_STRENGTH
	.4byte Move_ABSORB
	.4byte Move_MEGA_DRAIN
	.4byte Move_LEECH_SEED
	.4byte Move_GROWTH
	.4byte Move_RAZOR_LEAF
	.4byte Move_SOLAR_BEAM
	.4byte Move_POISON_POWDER
	.4byte Move_STUN_SPORE
	.4byte Move_SLEEP_POWDER
	.4byte Move_PETAL_DANCE
	.4byte Move_STRING_SHOT
	.4byte Move_DRAGON_RAGE
	.4byte Move_FIRE_SPIN
	.4byte Move_THUNDER_SHOCK
	.4byte Move_THUNDERBOLT
	.4byte Move_THUNDER_WAVE
	.4byte Move_THUNDER
	.4byte Move_ROCK_THROW
	.4byte Move_EARTHQUAKE
	.4byte Move_FISSURE
	.4byte Move_DIG
	.4byte Move_TOXIC
	.4byte Move_CONFUSION
	.4byte Move_PSYCHIC
	.4byte Move_HYPNOSIS
	.4byte Move_MEDITATE
	.4byte Move_AGILITY
	.4byte Move_QUICK_ATTACK
	.4byte Move_RAGE
	.4byte Move_TELEPORT
	.4byte Move_NIGHT_SHADE
	.4byte Move_MIMIC
	.4byte Move_SCREECH
	.4byte Move_DOUBLE_TEAM
	.4byte Move_RECOVER
	.4byte Move_HARDEN
	.4byte Move_MINIMIZE
	.4byte Move_SMOKESCREEN
	.4byte Move_CONFUSE_RAY
	.4byte Move_WITHDRAW
	.4byte Move_DEFENSE_CURL
	.4byte Move_BARRIER
	.4byte Move_LIGHT_SCREEN
	.4byte Move_HAZE
	.4byte Move_REFLECT
	.4byte Move_FOCUS_ENERGY
	.4byte Move_BIDE
	.4byte Move_METRONOME
	.4byte Move_POUND
	.4byte Move_SELF_DESTRUCT
	.4byte Move_EGG_BOMB
	.4byte Move_LICK
	.4byte Move_SMOG
	.4byte Move_SLUDGE
	.4byte Move_BONE_CLUB
	.4byte Move_FIRE_BLAST
	.4byte Move_WATERFALL
	.4byte Move_CLAMP
	.4byte Move_SWIFT
	.4byte Move_SKULL_BASH
	.4byte Move_SPIKE_CANNON
	.4byte Move_CONSTRICT
	.4byte Move_AMNESIA
	.4byte Move_KINESIS
	.4byte Move_SOFT_BOILED
	.4byte Move_HI_JUMP_KICK
	.4byte Move_GLARE
	.4byte Move_DREAM_EATER
	.4byte Move_POISON_GAS
	.4byte Move_BARRAGE
	.4byte Move_LEECH_LIFE
	.4byte Move_LOVELY_KISS
	.4byte Move_SKY_ATTACK
	.4byte Move_TRANSFORM
	.4byte Move_BUBBLE
	.4byte Move_DIZZY_PUNCH
	.4byte Move_SPORE
	.4byte Move_FLASH
	.4byte Move_PSYWAVE
	.4byte Move_SPLASH
	.4byte Move_ACID_ARMOR
	.4byte Move_CRABHAMMER
	.4byte Move_EXPLOSION
	.4byte Move_FURY_SWIPES
	.4byte Move_BONEMERANG
	.4byte Move_REST
	.4byte Move_ROCK_SLIDE
	.4byte Move_HYPER_FANG
	.4byte Move_SHARPEN
	.4byte Move_CONVERSION
	.4byte Move_TRI_ATTACK
	.4byte Move_SUPER_FANG
	.4byte Move_SLASH
	.4byte Move_SUBSTITUTE
	.4byte Move_STRUGGLE
	.4byte Move_SKETCH
	.4byte Move_TRIPLE_KICK
	.4byte Move_THIEF
	.4byte Move_SPIDER_WEB
	.4byte Move_MIND_READER
	.4byte Move_NIGHTMARE
	.4byte Move_FLAME_WHEEL
	.4byte Move_SNORE
	.4byte Move_CURSE
	.4byte Move_FLAIL
	.4byte Move_CONVERSION_2
	.4byte Move_AEROBLAST
	.4byte Move_COTTON_SPORE
	.4byte Move_REVERSAL
	.4byte Move_SPITE
	.4byte Move_POWDER_SNOW
	.4byte Move_PROTECT
	.4byte Move_MACH_PUNCH
	.4byte Move_SCARY_FACE
	.4byte Move_FAINT_ATTACK
	.4byte Move_SWEET_KISS
	.4byte Move_BELLY_DRUM
	.4byte Move_SLUDGE_BOMB
	.4byte Move_MUD_SLAP
	.4byte Move_OCTAZOOKA
	.4byte Move_SPIKES
	.4byte Move_ZAP_CANNON
	.4byte Move_FORESIGHT
	.4byte Move_DESTINY_BOND
	.4byte Move_PERISH_SONG
	.4byte Move_ICY_WIND
	.4byte Move_DETECT
	.4byte Move_BONE_RUSH
	.4byte Move_LOCK_ON
	.4byte Move_OUTRAGE
	.4byte Move_SANDSTORM
	.4byte Move_GIGA_DRAIN
	.4byte Move_ENDURE
	.4byte Move_CHARM
	.4byte Move_ROLLOUT
	.4byte Move_FALSE_SWIPE
	.4byte Move_SWAGGER
	.4byte Move_MILK_DRINK
	.4byte Move_SPARK
	.4byte Move_FURY_CUTTER
	.4byte Move_STEEL_WING
	.4byte Move_MEAN_LOOK
	.4byte Move_ATTRACT
	.4byte Move_SLEEP_TALK
	.4byte Move_HEAL_BELL
	.4byte Move_RETURN
	.4byte Move_PRESENT
	.4byte Move_FRUSTRATION
	.4byte Move_SAFEGUARD
	.4byte Move_PAIN_SPLIT
	.4byte Move_SACRED_FIRE
	.4byte Move_MAGNITUDE
	.4byte Move_DYNAMIC_PUNCH
	.4byte Move_MEGAHORN
	.4byte Move_DRAGON_BREATH
	.4byte Move_BATON_PASS
	.4byte Move_ENCORE
	.4byte Move_PURSUIT
	.4byte Move_RAPID_SPIN
	.4byte Move_SWEET_SCENT
	.4byte Move_IRON_TAIL
	.4byte Move_METAL_CLAW
	.4byte Move_VITAL_THROW
	.4byte Move_MORNING_SUN
	.4byte Move_SYNTHESIS
	.4byte Move_MOONLIGHT
	.4byte Move_HIDDEN_POWER
	.4byte Move_CROSS_CHOP
	.4byte Move_TWISTER
	.4byte Move_RAIN_DANCE
	.4byte Move_SUNNY_DAY
	.4byte Move_CRUNCH
	.4byte Move_MIRROR_COAT
	.4byte Move_PSYCH_UP
	.4byte Move_EXTREME_SPEED
	.4byte Move_ANCIENT_POWER
	.4byte Move_SHADOW_BALL
	.4byte Move_FUTURE_SIGHT
	.4byte Move_ROCK_SMASH
	.4byte Move_WHIRLPOOL
	.4byte Move_BEAT_UP
	.4byte Move_FAKE_OUT
	.4byte Move_UPROAR
	.4byte Move_STOCKPILE
	.4byte Move_SPIT_UP
	.4byte Move_SWALLOW
	.4byte Move_HEAT_WAVE
	.4byte Move_HAIL
	.4byte Move_TORMENT
	.4byte Move_FLATTER
	.4byte Move_WILL_O_WISP
	.4byte Move_MEMENTO
	.4byte Move_FACADE
	.4byte Move_FOCUS_PUNCH
	.4byte Move_SMELLING_SALT
	.4byte Move_FOLLOW_ME
	.4byte Move_ANCIENT_POWER
	.4byte Move_CHARGE
	.4byte Move_TAUNT
	.4byte Move_HELPING_HAND
	.4byte Move_TRICK
	.4byte Move_ROLE_PLAY
	.4byte Move_WISH
	.4byte Move_ASSIST
	.4byte Move_INGRAIN
	.4byte Move_SUPERPOWER
	.4byte Move_MAGIC_COAT
	.4byte Move_RECYCLE
	.4byte Move_REVENGE
	.4byte Move_BRICK_BREAK
	.4byte Move_YAWN
	.4byte Move_KNOCK_OFF
	.4byte Move_ENDEAVOR
	.4byte Move_ERUPTION
	.4byte Move_SKILL_SWAP
	.4byte Move_IMPRISON
	.4byte Move_REFRESH
	.4byte Move_GRUDGE
	.4byte Move_SNATCH
	.4byte Move_SECRET_POWER
	.4byte Move_DIVE
	.4byte Move_ARM_THRUST
	.4byte Move_CAMOUFLAGE
	.4byte Move_TAIL_GLOW
	.4byte Move_LUSTER_PURGE
	.4byte Move_MIST_BALL
	.4byte Move_FEATHER_DANCE
	.4byte Move_TEETER_DANCE
	.4byte Move_BLAZE_KICK
	.4byte Move_MUD_SPORT
	.4byte Move_ICE_BALL
	.4byte Move_NEEDLE_ARM
	.4byte Move_SLACK_OFF
	.4byte Move_HYPER_VOICE
	.4byte Move_POISON_FANG
	.4byte Move_CRUSH_CLAW
	.4byte Move_BLAST_BURN
	.4byte Move_HYDRO_CANNON
	.4byte Move_METEOR_MASH
	.4byte Move_ASTONISH
	.4byte Move_WEATHER_BALL
	.4byte Move_AROMATHERAPY
	.4byte Move_FAKE_TEARS
	.4byte Move_AIR_CUTTER
	.4byte Move_OVERHEAT
	.4byte Move_ODOR_SLEUTH
	.4byte Move_ROCK_TOMB
	.4byte Move_SILVER_WIND
	.4byte Move_METAL_SOUND
	.4byte Move_GRASS_WHISTLE
	.4byte Move_TICKLE
	.4byte Move_COSMIC_POWER
	.4byte Move_WATER_SPOUT
	.4byte Move_SIGNAL_BEAM
	.4byte Move_SHADOW_PUNCH
	.4byte Move_EXTRASENSORY
	.4byte Move_SKY_UPPERCUT
	.4byte Move_SAND_TOMB
	.4byte Move_SHEER_COLD
	.4byte Move_MUDDY_WATER
	.4byte Move_BULLET_SEED
	.4byte Move_AERIAL_ACE
	.4byte Move_ICICLE_SPEAR
	.4byte Move_IRON_DEFENSE
	.4byte Move_BLOCK
	.4byte Move_HOWL
	.4byte Move_DRAGON_CLAW
	.4byte Move_FRENZY_PLANT
	.4byte Move_BULK_UP
	.4byte Move_BOUNCE
	.4byte Move_MUD_SHOT
	.4byte Move_POISON_TAIL
	.4byte Move_COVET
	.4byte Move_VOLT_TACKLE
	.4byte Move_MAGICAL_LEAF
	.4byte Move_WATER_SPORT
	.4byte Move_CALM_MIND
	.4byte Move_LEAF_BLADE
	.4byte Move_DRAGON_DANCE
	.4byte Move_ROCK_BLAST
	.4byte Move_SHOCK_WAVE
	.4byte Move_WATER_PULSE
	.4byte Move_DOOM_DESIRE
	.4byte Move_PSYCHO_BOOST
	.4byte PoundCopy

	.align 2
gBattleAnims_StatusConditions:: @ 81C76F8
	.4byte StatusCondition_Poison
	.4byte StatusCondition_Confusion
	.4byte StatusCondition_Burn
	.4byte StatusCondition_Love
	.4byte StatusCondition_Sleep
	.4byte StatusCondition_Paralysis
	.4byte StatusCondition_Ice
	.4byte StatusCondition_Curse
	.4byte StatusCondition_Nightmare

	.align 2
gBattleAnims_General:: @ 81C771C
	.4byte General_CastformChange
	.4byte General_StatsChange
	.4byte General_SubstituteFade
	.4byte General_SubstituteAppear
	.4byte General_PokeblockThrow
	.4byte General_ItemKnockoff
	.4byte General_TurnTrap
	.4byte General_ItemEffect
	.4byte General_SmokeballEscape
	.4byte General_HangedOn
	.4byte General_Rain
	.4byte General_Sun
	.4byte General_Sandstorm
	.4byte General_Hail
	.4byte General_LeechSeedDrain
	.4byte General_MonHit
	.4byte General_ItemSteal
	.4byte General_SnatchMove
	.4byte General_FutureSightHit
	.4byte General_DoomDesireHit
	.4byte General_FocusPunchSetUp
	.4byte General_IngrainHeal
	.4byte General_WishHeal

	.align 2
gBattleAnims_Special:: @ 81C7778
	.4byte Special_LevelUp
	.4byte Special_SwitchOutPlayerMon
	.4byte Special_SwitchOutOpponentMon
	.4byte Special_BallThrow
	.4byte Special_SafariBallThrow
	.4byte Special_SubstituteToMon
	.4byte Special_MonToSubstitute

Move_POUND: @ 81C7794
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_DOUBLE_SLAP: @ 81C77C5
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	choosetwoturnanim Move_DOUBLE_SLAP_FirstHit, Move_DOUBLE_SLAP_SecondHit
Move_DOUBLE_SLAP_End:
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W003, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
Move_DOUBLE_SLAP_FirstHit:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -8, 0, 1, 2
	goto Move_DOUBLE_SLAP_End
Move_DOUBLE_SLAP_SecondHit:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 8, 0, 1, 2
	goto Move_DOUBLE_SLAP_End

Move_POISON_POWDER: @ 81C7818
	loadspritegfx ANIM_TAG_POISON_POWDER
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	loopsewithpan SE_W077, SOUND_PAN_TARGET, 10, 6
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -22, 117, 80, 5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, -22, 117, 80, -5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -25, -22, 117, 112, 5, 3
	delay 15
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 80, -5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 96, 5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 69, -5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	delay 30
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, -22, 117, 80, -5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 96, 7, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 90, -8, 0
	delay 20
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 80, -5, 1
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 89, 5, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, -22, 117, 112, -8, 2
	createsprite gPoisonPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 80, 5, 1
	waitforvisualfinish
	end

Move_STUN_SPORE: @ 81C7949
	loadspritegfx ANIM_TAG_STUN_SPORE
	loopsewithpan SE_W077, SOUND_PAN_TARGET, 10, 6
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -22, 117, 80, 5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, -22, 117, 80, -5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -25, -22, 117, 112, 5, 3
	delay 15
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 80, -5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 96, 5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 69, -5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	delay 30
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, -22, 117, 80, -5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 96, 7, 2
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 90, -8, 0
	delay 20
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 80, -5, 1
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 89, 5, 2
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, -22, 117, 112, -8, 2
	createsprite gStunSporeParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 80, 5, 1
	waitforvisualfinish
	end

Move_SLEEP_POWDER: @ 81C7A77
	loadspritegfx ANIM_TAG_SLEEP_POWDER
	loopsewithpan SE_W077, SOUND_PAN_TARGET, 10, 6
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -22, 117, 80, 5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, -22, 117, 80, -5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -25, -22, 117, 112, 5, 3
	delay 15
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 80, -5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 96, 5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 69, -5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	delay 30
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -22, 117, 112, 5, 2
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, -22, 117, 80, -5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 96, 7, 2
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, -22, 117, 90, -8, 0
	delay 20
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -22, 117, 80, -5, 1
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -22, 117, 89, 5, 2
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, -22, 117, 112, -8, 2
	createsprite gSleepPowderParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, -22, 117, 80, 5, 1
	waitforvisualfinish
	end

Move_SWIFT: @ 81C7BA5
	loadspritegfx ANIM_TAG_YELLOW_STAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 22, 20, 1
	delay 5
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 5, 22, -18, 1
	delay 5
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_BATTLER_TARGET, 3, 20, -10, 20, -10, 22, 15, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 18, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 2, 0, 18, 1
	delay 5
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 22, -20, 1
	delay 5
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gSwiftStarSpriteTemplate, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 22, 12, 1
	delay 5
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_STRENGTH: @ 81C7C5E
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeAndSinkMon, 5, ANIM_BATTLER_ATTACKER, 2, 0, 96, 30
	waitforvisualfinish
	delay 10
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 4
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_TARGET, 18, 6, 2, 4
	delay 4
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 16, 12, 1, 1
	delay 4
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -16, -12, 1, 1
	delay 4
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 3, 4, 1, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_TACKLE: @ 81C7CF2
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_BODY_SLAM: @ 81C7D30
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	waitforvisualfinish
	delay 11
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 26, 0, 0, 5
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 4, -10, 0, 1, 0
	loopsewithpan SE_W025B, SOUND_PAN_TARGET, 10, 2
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -28, 0, 0, 3
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 4, 0, 12, 1
	waitforvisualfinish
	delay 10
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 6
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SUPERSONIC: @ 81C7DBD
	loadspritegfx ANIM_TAG_GOLD_RING
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_2A ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 2, 0, 8, 1
	call Move_SUPERSONIC_CreateWaveSprite
	call Move_SUPERSONIC_CreateWaveSprite
	call Move_SUPERSONIC_CreateWaveSprite
	call Move_SUPERSONIC_CreateWaveSprite
	call Move_SUPERSONIC_CreateWaveSprite
	call Move_SUPERSONIC_CreateWaveSprite
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end
Move_SUPERSONIC_CreateWaveSprite:
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	createsprite gSupersonicWaveSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 30, 0
	delay 2
	return

Move_SCREECH: @ 81C7E15
	loadspritegfx ANIM_TAG_PURPLE_RING
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 3, 0, 2, 1
	call Move_SCREECH_CreateWaveSprite
	call Move_SCREECH_CreateWaveSprite
	delay 16
	createvisualtask AnimTask_SwayMon, 5, 0, 6, 2048, 2, 1
	waitforvisualfinish
	end
Move_SCREECH_CreateWaveSprite:
	playsewithpan SE_W103, SOUND_PAN_ATTACKER
	createsprite gScreechWaveSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 30, 0
	delay 2
	return

Move_FLAME_WHEEL: @ 81C7E62
	loadspritegfx ANIM_TAG_SMALL_EMBER
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 0
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 4
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 8
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 12
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 16
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 20
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 56, 24
	playsewithpan SE_W172, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 6
	delay 4
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 8, 1
	createvisualtask AnimTask_BlendMonInAndOut, 3, ANIM_BATTLER_TARGET, 31, 12, 1, 1
	playsewithpan SE_W172B, SOUND_PAN_TARGET
	call _81D11A2
	delay 7
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 9
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Unknown_81C7F4C: @ 81C7F4C
	createsprite gBattleAnimSpriteTemplate_83D9694, ANIM_BATTLER_ATTACKER, 3, 0, 0, 50
	delay 4
	return

Move_PIN_MISSILE: @ 81C7F5C
	loadspritegfx ANIM_TAG_NEEDLE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gPinMissileSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, -8, -8, 20, -32
	delay 15
	createsprite gPinMissileSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, 8, 8, 20, -40
	delay 4
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -8, -8, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	delay 9
	createsprite gPinMissileSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, 0, 0, 20, -32
	delay 4
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 8, 8, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	delay 14
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_ICICLE_SPEAR: @ 81C8021
	loadspritegfx ANIM_TAG_ICICLE_SPEAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W196, SOUND_PAN_ATTACKER
	createsprite gIcicleSpearSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, -8, -8, 20, -32
	delay 15
	createsprite gIcicleSpearSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, 8, 8, 20, -40
	delay 4
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -8, -8, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	delay 9
	createsprite gIcicleSpearSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -8, 0, 0, 20, -32
	delay 4
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 8, 8, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	delay 14
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_TAKE_DOWN: @ 81C80E6
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_WindUpLunge, 5, ANIM_BATTLER_ATTACKER, -24, 8, 23, 10, 40, 10
	delay 35
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 10, 0, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 4, -10, 0, 1, 0
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -16, 0, 0, 4
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 4, 0, 12, 1
	waitforvisualfinish
	delay 2
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	delay 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 7
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_DOUBLE_EDGE: @ 81C817A
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 2, 4, 2, 32767, 10, 0, 0
	waitforvisualfinish
	delay 10
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W207, SOUND_PAN_ATTACKER, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 18, 6, 2, 4
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 16, 16, rgb(31, 31, 31)
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 0, 0, 4
	delay 3
	waitforvisualfinish
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, -10, 0, 1, 0
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -32, 0, 0, 3
	waitforvisualfinish
	createvisualtask sub_80A8E04, 2, 8, -256, 0, 0
	createvisualtask sub_80A8E04, 2, 8, -256, 1, 0
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 4, 0, 12, 1
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 4, 0, 12, 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 16, 0, rgb(31, 31, 31)
	waitforvisualfinish
	createvisualtask sub_80A8E04, 2, 8, -256, 0, 1
	createvisualtask sub_80A8E04, 2, 8, -256, 1, 1
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	delay 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 7
	waitforvisualfinish
	end

Move_POISON_STING: @ 81C828D
	loadspritegfx ANIM_TAG_NEEDLE
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, -8, 0, 20
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 5, 1
	playsewithpan SE_W030, SOUND_PAN_TARGET
	waitforvisualfinish
	call PoisonBubblesAnim
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_TWINEEDLE: @ 81C82E2
	loadspritegfx ANIM_TAG_NEEDLE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	loopsewithpan SE_W013B, SOUND_PAN_ATTACKER, 6, 2
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, -4, 0, -4, 20
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 12, 10, 12, 20
	delay 20
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 5, 1
	createsprite gBattleAnimSpriteTemplate_83DB4C0, ANIM_BATTLER_ATTACKER, 3, 0, -4, 1, 3
	loopsewithpan SE_W030, SOUND_PAN_TARGET, 5, 2
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB4C0, ANIM_BATTLER_ATTACKER, 3, 10, 12, 1, 3
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_FIRE_BLAST: @ 81C8355
	loadspritegfx ANIM_TAG_SMALL_EMBER
	createsoundtask sub_812AF30, 144, 145
	call Move_FIRE_BLAST_CreateFireRing
	call Move_FIRE_BLAST_CreateFireRing
	call Move_FIRE_BLAST_CreateFireRing
	delay 24
	createvisualtask sub_80E2A38, 10, 1, 3, 0, 8, rgb(0, 0, 0)
	waitforvisualfinish
	delay 19
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 20, 1
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	delay 3
	call Move_FIRE_BLAST_CreateFireCross
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1, 2, 8, 0, 0
	waitforvisualfinish
	end
Move_FIRE_BLAST_CreateFireRing:
	createsprite gFireRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 0
	createsprite gFireRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 51
	createsprite gFireRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 102
	createsprite gFireRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 153
	createsprite gFireRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 204
	delay 5
	return
Move_FIRE_BLAST_CreateFireCross:
	createsprite gFireCrossSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 10, 0, -2
	createsprite gFireCrossSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 13, -2, 0
	createsprite gFireCrossSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 13, 2, 0
	createsprite gFireCrossSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 15, -2, 2
	createsprite gFireCrossSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 15, 2, 2
	return

Move_LEECH_SEED: @ 81C8483
	loadspritegfx ANIM_TAG_SEED
	playsewithpan SE_W077, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 0, 0, 24, 35, -32
	delay 8
	playsewithpan SE_W077, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 0, -16, 24, 35, -40
	delay 8
	playsewithpan SE_W077, SOUND_PAN_ATTACKER
	createsprite gLeechSeedSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 0, 16, 24, 35, -37
	delay 12
	loopsewithpan SE_W039, SOUND_PAN_TARGET, 10, 8
	waitforvisualfinish
	end

Move_EMBER: @ 81C84D9
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loopsewithpan SE_W052, SOUND_PAN_ATTACKER, 5, 2
	createsprite gEmberSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, -16, 24, 20, 1
	delay 4
	createsprite gEmberSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 24, 20, 1
	delay 4
	createsprite gEmberSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 16, 24, 20, 1
	delay 16
	playsewithpan SE_W172, SOUND_PAN_TARGET
	call Move_EMBER_CreateFlare
	call Move_EMBER_CreateFlare
	call Move_EMBER_CreateFlare
	end
Move_EMBER_CreateFlare:
	createsprite gEmberFlareSpriteTemplate, ANIM_BATTLER_TARGET, 2, -24, 24, 24, 24, 20, 1, 1
	delay 4
	return

Move_MEGA_PUNCH: @ 81C854D
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_TARGET
	delay 2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 0, 16, rgb(0, 0, 0)
	setalpha 12, 8
	playsewithpan SE_W025, SOUND_PAN_TARGET
	createsprite gMegaPunchKickSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 50
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 7, 32767
	delay 50
	call _81C85E9
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 22, 1
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 0, 32767
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 8, 0, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 2
	restorebg
	waitbgfadein
	end
_81C85E9:
	delay 2
	createvisualtask sub_80E4200, 2
	jumpargeq 7, 1, _81C8620
	createvisualtask sub_812C924, 2
	jumpargeq 7, 0, _81C8612
	jumpargeq 7, 1, _81C8619
_81C8611:
	return
_81C8612:
	changebg BG_IMPACT_OPPONENT
	goto _81C8611
_81C8619:
	changebg BG_IMPACT_PLAYER
	goto _81C8611
_81C8620:
	changebg BG_IMPACT_CONTESTS
	goto _81C8611

Move_MEGA_KICK: @ 81C8627
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_TARGET
	delay 2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 0, 16, rgb(0, 0, 0)
	setalpha 12, 8
	playsewithpan SE_W025, SOUND_PAN_TARGET
	createsprite gMegaPunchKickSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 50
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 7, 32767
	delay 50
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	call _81C85E9
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 22, 1
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 0, 32767
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 8, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 2
	restorebg
	waitbgfadein
	end

Move_COMET_PUNCH: @ 81C86C3
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	choosetwoturnanim Move_COMET_PUNCH_Even, Move_COMET_PUNCH_Odd
Move_COMET_PUNCH_End:
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
Move_COMET_PUNCH_Even:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -8, -8, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -8, 0, 8, 1, 0
	goto Move_COMET_PUNCH_End
Move_COMET_PUNCH_Odd:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 8, -8, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 8, 0, 8, 1, 0
	goto Move_COMET_PUNCH_End

Move_SONIC_BOOM: @ 81C873B
	loadspritegfx ANIM_TAG_AIR_WAVE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	call Move_SONIC_BOOM_CreateBlast
	call Move_SONIC_BOOM_CreateBlast
	call Move_SONIC_BOOM_CreateBlast
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 10, 1
	call Move_SONIC_BOOM_CreateHitSplat
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
Move_SONIC_BOOM_CreateBlast:
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gSonicBoomSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 15
	delay 4
	return
Move_SONIC_BOOM_CreateHitSplat:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 2
	delay 4
	return

Move_THUNDER_SHOCK: @ 81C879C
	loadspritegfx ANIM_TAG_SPARK
	loadspritegfx ANIM_TAG_SPARK_2
	createvisualtask sub_80E2A38, 10, 1, 0, 0, 6, 0
	waitforvisualfinish
	delay 10
	createvisualtask sub_80D681C, 5, 0, -44, 0
	playsewithpan SE_W085, SOUND_PAN_TARGET
	delay 9
	createvisualtask sub_80E2A38, 10, 4, 0, 0, 13, 0
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 4, 0, 13, 0, 0
	waitforvisualfinish
	delay 20
	call ElectricityEffect
	waitforvisualfinish
	delay 20
	createvisualtask sub_80E2A38, 10, 1, 0, 6, 0, 0
	waitforvisualfinish
	end

Move_THUNDERBOLT: @ 81C880A
	loadspritegfx ANIM_TAG_SPARK
	loadspritegfx ANIM_TAG_SHOCK_3
	loadspritegfx ANIM_TAG_SPARK_2
	createvisualtask sub_80E2A38, 10, 1, 0, 0, 6, 0
	waitforvisualfinish
	delay 10
	createvisualtask sub_80D681C, 5, 24, -52, 0
	playsewithpan SE_W085, SOUND_PAN_TARGET
	delay 7
	createvisualtask sub_80D681C, 5, -24, -52, 0
	playsewithpan SE_W085, SOUND_PAN_TARGET
	delay 7
	createvisualtask sub_80D681C, 5, 0, -60, 1
	playsewithpan SE_W085, SOUND_PAN_TARGET
	delay 9
	createvisualtask sub_80E2A38, 10, 4, 0, 0, 13, 0
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 4, 0, 13, 0, 0
	waitforvisualfinish
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D98F0, ANIM_BATTLER_TARGET, 3, 44, 0, 0, 3
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 32, 44, 0, 40, 0, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 32, 44, 64, 40, 1, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 32, 44, 128, 40, 0, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 32, 44, 192, 40, 2, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 16, 44, 32, 40, 0, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 16, 44, 96, 40, 1, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 16, 44, 160, 40, 0, -32765
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_TARGET, 4, 0, 0, 16, 44, 224, 40, 2, -32765
	playsewithpan SE_W063, SOUND_PAN_TARGET
	delay 0
	createvisualtask sub_80E2A38, 10, 1, 0, 2, 2, 0
	delay 6
	createvisualtask sub_80E2A38, 10, 1, 0, 6, 6, 0
	delay 6
	createvisualtask sub_80E2A38, 10, 1, 0, 2, 2, 0
	delay 6
	createvisualtask sub_80E2A38, 10, 1, 0, 6, 6, 0
	waitforvisualfinish
	delay 20
	waitplaysewithpan SE_W085B, SOUND_PAN_TARGET, 19
	call ElectricityEffect
	waitforvisualfinish
	delay 20
	createvisualtask sub_80E2A38, 10, 1, 0, 6, 0, 0
	waitforvisualfinish
	end

Move_THUNDER_WAVE: @ 81C89C0
	loadspritegfx ANIM_TAG_SPARK
	loadspritegfx ANIM_TAG_SPARK_2
	loadspritegfx ANIM_TAG_SPARK_H
	createvisualtask sub_80E2A38, 10, 1, 0, 0, 6, 0
	waitforvisualfinish
	delay 10
	createvisualtask sub_80D681C, 5, 0, -48, 0
	playsewithpan SE_W086, SOUND_PAN_TARGET
	delay 20
	loopsewithpan SE_W085B, SOUND_PAN_TARGET, 10, 4
	createsprite gBattleAnimSpriteTemplate_83D9950, ANIM_BATTLER_TARGET, 2, -16, -16
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9950, ANIM_BATTLER_TARGET, 2, -16, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9950, ANIM_BATTLER_TARGET, 2, -16, 16
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1, 0, 6, 0, 0
	waitforvisualfinish
	end

Move_BEAT_UP: @ 81C8A2F
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	choosetwoturnanim Move_BEAT_UP_Even, Move_BEAT_UP_Odd
Move_BEAT_UP_End:
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
Move_BEAT_UP_Even:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -20, -20, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, -20, -12, 8, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 8, 0, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, 8, 8, 8, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	goto Move_BEAT_UP_End
Move_BEAT_UP_Odd:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 12, -20, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, 12, -12, 8, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -12, 0, 1, 2
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, -12, 8, 8, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	goto Move_BEAT_UP_End

Move_STOMP: @ 81C8B2A
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W104, SOUND_PAN_TARGET
	createsprite gStompFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, -32, 15
	delay 19
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -8, 1, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 4, 9, 1
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_TAIL_WHIP: @ 81C8B71
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 24, 3
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 12, 4, 2, 3
	waitforvisualfinish
	end

Move_CUT: @ 81C8B8A
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W015, SOUND_PAN_TARGET
	createsprite gCuttingSliceSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 40, -32, 0
	delay 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 10, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end

Move_HIDDEN_POWER: @ 81C8BBC
	loadspritegfx ANIM_TAG_RED_ORB
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -7, -7, 11, ANIM_BATTLER_ATTACKER, 0
	waitforvisualfinish
	delay 30
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 20479, 12, 5, 1
	delay 4
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -7, -7, 11, ANIM_BATTLER_ATTACKER, 0
	playsewithpan SE_W179, SOUND_PAN_ATTACKER
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 0
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 42
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 84
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 126
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 168
	createsprite gHiddenPowerOrbSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 210
	delay 52
	setarg ARG_RET_ID, -1
	playsewithpan SE_W115, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -7, -7, 11, ANIM_BATTLER_ATTACKER, 0
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 32
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 64
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 96
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 128
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 160
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 192
	createsprite gHiddenPowerOrbScatterSpriteTemplate, ANIM_BATTLER_TARGET, 2, 224
	end

Move_REVERSAL: @ 81C8CA5
	loadspritegfx ANIM_TAG_BLUE_ORB
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_W197, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 3, 32767, 8, 0, 0
	waitforvisualfinish
	delay 30
	createvisualtask sub_80E1F8C, 2, 31, 3, 2, 0, 10, 32767
	delay 10
	playsewithpan SE_W179, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 0
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 42
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 84
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 126
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 168
	createsprite gBattleAnimSpriteTemplate_8402738, ANIM_BATTLER_ATTACKER, 2, 26, 210
	waitforvisualfinish
	delay 20
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 8
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 32767, 8, 0, 0
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 10, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	createvisualtask sub_80A9058, 5, 0, 1, 8, 1, 0
	end

Move_PURSUIT: @ 81C8D80
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	fadetobg BG_DARK
	waitbgfadein
	delay 0
	setalpha 12, 8
	choosetwoturnanim _81C8D9F, _81C8DC8
_81C8D96:
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 0
	restorebg
	waitbgfadein
	end
_81C8D9F:
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask sub_80A9058, 5, 0, 1, 6, 1, 0
	goto _81C8D96
_81C8DC8:
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createvisualtask sub_80A9058, 5, 0, 1, 6, 1, 0
	goto _81C8D96

Move_SPIKE_CANNON: @ 81C8DF1
	loadspritegfx ANIM_TAG_NEEDLE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask AnimTask_WindUpLunge, 5, ANIM_BATTLER_ATTACKER, -4, 0, 4, 6, 8, 4
	waitforvisualfinish
	loopsewithpan SE_W013B, SOUND_PAN_ATTACKER, 5, 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, -8, -8, -8, 20
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 18, 0, 0, 0, 20
	createsprite gLinearStingerSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 26, 8, 8, 8, 20
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB4C0, ANIM_BATTLER_ATTACKER, 3, -8, -8, 1, 2
	createsprite gBattleAnimSpriteTemplate_83DB4C0, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createsprite gBattleAnimSpriteTemplate_83DB4C0, ANIM_BATTLER_ATTACKER, 3, 8, 8, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 7, 1
	loopsewithpan SE_W030, SOUND_PAN_TARGET, 5, 3
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_SWORDS_DANCE: @ 81C8EA4
	loadspritegfx ANIM_TAG_SWORD
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	playsewithpan SE_W014, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 16, 6, 1, 4
	createsprite gBattleAnimSpriteTemplate_83D748C, ANIM_BATTLER_ATTACKER, 2, 0, 0
	delay 22
	createvisualtask sub_80E21A8, 2, ANIM_TAG_SWORD, 2, 2, 32754, 16, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	delay 1
	end

Move_PSYCH_UP: @ 81C8EEA
	loadspritegfx ANIM_TAG_SPIRAL
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E1F8C, 2, 25, 2, 6, 1, 11, 0
	setalpha 12, 8
	loopsewithpan SE_W060B, SOUND_PAN_ATTACKER, 5, 10
	createsprite gBattleAnimSpriteTemplate_83DA690, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0, 0
	createvisualtask AnimTask_SwayMon, 5, 0, 5, 2560, 8, 0
	delay 127
	delay 4
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 10, ANIM_BATTLER_ATTACKER, 1
	createvisualtask sub_80E2A38, 9, 2, 2, 10, 0, 1023
	delay 30
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	waitforvisualfinish
	end

Move_DIZZY_PUNCH: @ 81C8F5C
	loadspritegfx ANIM_TAG_DUCK
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	call _81C9077
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 5, 16, 8, 20, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, 16, 0, 1, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, 160, -32
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, -256, -40
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, 128, -16
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, 416, -38
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, -128, -22
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, 16, 8, -384, -31
	delay 10
	call _81C9077
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 5, -16, -8, 20, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, -16, -16, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, 160, -32
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, -256, -40
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, 128, -16
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, 416, -38
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, -128, -22
	createsprite gBattleAnimSpriteTemplate_83DA088, ANIM_BATTLER_TARGET, 3, -16, -8, -384, -31
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
_81C9077:
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 6
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 7, 1
	return

Move_FIRE_SPIN: @ 81C9096
	loadspritegfx ANIM_TAG_SMALL_EMBER
	playsewithpan SE_W221B, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 47, 1
	call _81C90BF
	call _81C90BF
	call _81C90BF
	waitforvisualfinish
	end
_81C90BF:
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 28, 528, 30, 13, 50, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 32, 480, 20, 16, -46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 33, 576, 20, 8, 42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 31, 400, 25, 11, -42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 28, 512, 25, 16, 46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_TARGET, 2, 0, 33, 464, 30, 15, -50, 1
	delay 2
	return

Move_FURY_CUTTER: @ 81C914A
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createvisualtask UpdateFuryCutterAnimDirection, 2
	jumpargeq 7, 0, _81C91A7
	goto _81C91B9
_81C916A:
	createvisualtask UpdateFuryCutterAnimCount, 2
	jumpargeq 7, 1, _81C918E
	jumpargeq 7, 2, _81C91CB
	jumpargeq 7, 3, _81C91E5
	goto _81C91FF
_81C918E:
	delay 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 10, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end
_81C91A7:
	createsprite gCuttingSliceSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 40, -32, 0
	goto _81C916A
_81C91B9:
	createsprite gCuttingSliceSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 40, -32, 1
	goto _81C916A
_81C91CB:
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 10505, 4, 0, 0
	goto _81C918E
_81C91E5:
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 3, 10505, 4, 0, 0
	goto _81C918E
_81C91FF:
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 3, 10505, 4, 0, 0
	goto _81C918E

Move_SELF_DESTRUCT: @ 81C9219
	loadspritegfx ANIM_TAG_EXPLOSION
	createvisualtask sub_80E2A38, 10, 2, 1, 0, 9, 31
	createvisualtask AnimTask_ShakeMon2, 5, 4, 6, 0, 38, 1
	createvisualtask AnimTask_ShakeMon2, 5, 5, 6, 0, 38, 1
	createvisualtask AnimTask_ShakeMon2, 5, 6, 6, 0, 38, 1
	createvisualtask AnimTask_ShakeMon2, 5, 7, 6, 0, 38, 1
	createvisualtask AnimTask_ShakeMon2, 5, 8, 6, 0, 38, 1
	call _81C929F
	call _81C929F
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 2, 1, 9, 0, 31
	end
_81C929F:
	playsewithpan SE_W120, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 24, -24, 0, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -16, 16, 0, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -24, -12, 0, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 16, 16, 0, 1
	delay 6
	return

Move_SLAM: @ 81C9309
	loadspritegfx ANIM_TAG_SLAM_HIT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W004, SOUND_PAN_ATTACKER
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 3, 0, 4
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D69DC, ANIM_BATTLER_ATTACKER, 2, 0, 0
	delay 3
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -12, 10, 0, 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	delay 3
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 0, 3, 6, 1
	waitforvisualfinish
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_VINE_WHIP: @ 81C9391
	loadspritegfx ANIM_TAG_WHIP_HIT
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 6
	delay 6
	playsewithpan SE_W010, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D69F4, ANIM_BATTLER_TARGET, 2, 0, 0
	delay 6
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 6, 1
	end

Move_DRILL_PECK: @ 81C93C8
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_WHIRLWIND_LINES
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 0
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 1
	delay 2
	loopsewithpan SE_W030, SOUND_PAN_TARGET, 4, 8
	createvisualtask sub_80DB0E8, 5
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 18, 1
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 2
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 6
	waitforvisualfinish
	end

Move_WATERFALL: @ 81C9421
	loadspritegfx ANIM_TAG_WATER_IMPACT
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 23, 1
	delay 5
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 10, 10, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -15, 0, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 20, 10, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 0, -10, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -10, 15, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 25, 20, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -20, 20, 25, 0
	delay 4
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 12, 0, 25, 0
	waitforvisualfinish
	delay 10
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 5
	delay 6
	call _81C9502
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81C9502:
	playsewithpan SE_W127, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 17, 1
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, 20, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 20
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, 15, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 15
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 15
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, 10, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 10
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 10
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, 5, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 5
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 5
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, -5, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -5
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -5
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, -10, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -10
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -10
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, -15, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -15
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -15
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 3, 0, -20, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -20
	createsprite gBattleAnimSpriteTemplate_83D9360, ANIM_BATTLER_ATTACKER, 4, 0, -20
	return

Move_EXPLOSION: @ 81C9675
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 8, 9, 8474, 8, 0, 8
	createvisualtask AnimTask_ShakeMon2, 5, 4, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 5, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 6, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 7, 8, 0, 40, 1
	createvisualtask AnimTask_ShakeMon2, 5, 8, 8, 0, 40, 1
	call _81C9712
	call _81C9712
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1, 1, 16, 16, 32767
	delay 50
	createvisualtask sub_80E2A38, 10, 1, 3, 16, 0, 32767
	end
_81C9712:
	playsewithpan SE_W153, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 1
	delay 6
	playsewithpan SE_W153, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 24, -24, 0, 1
	delay 6
	playsewithpan SE_W153, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -16, 16, 0, 1
	delay 6
	playsewithpan SE_W153, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -24, -12, 0, 1
	delay 6
	playsewithpan SE_W153, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 16, 16, 0, 1
	delay 6
	return

Move_DEFENSE_CURL: @ 81C977C
	loadspritegfx ANIM_TAG_ECLIPSING_ORB
	loopsewithpan SE_W161, SOUND_PAN_ATTACKER, 18, 3
	createvisualtask sub_80E0E24, 5, 0, 0
	createvisualtask sub_812D350, 5
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_8402498, ANIM_BATTLER_ATTACKER, 2, 0, 6, 0, 1
	waitforvisualfinish
	createvisualtask sub_80E0E24, 5, 0, 1
	waitforvisualfinish
	end

Move_PROTECT: @ 81C97B5
	loadspritegfx ANIM_TAG_PROTECT
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_28 0
	waitplaysewithpan SE_W115, SOUND_PAN_ATTACKER, 16
	createsprite gBattleAnimSpriteTemplate_83D6BE8, ANIM_BATTLER_ATTACKER, 2, 24, 0, 90
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	end

Move_DETECT: @ 81C97D2
	loadspritegfx ANIM_TAG_SPARKLE_4
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 9, rgb(0, 0, 0)
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 2, 1, 0, 9, 32767
	delay 18
	playsewithpan SE_W197, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83930F4, ANIM_BATTLER_ATTACKER, 13, 20, -20
	waitforvisualfinish
	delay 10
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 9, 0, rgb(0, 0, 0)
	createvisualtask sub_80E2A38, 10, 2, 2, 9, 0, 32767
	waitforvisualfinish
	end

Move_FRUSTRATION: @ 81C9830
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ANGER
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask sub_8079CEC, 1
	jumpargeq 7, 0, _81C9864
	jumpargeq 7, 1, _81C996A
	jumpargeq 7, 2, _81C9A37
	goto _81C9AB3
_81C985F:
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81C9864:
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon2, 5, 0, 1, 0, 15, 1
	createvisualtask sub_80E2A38, 10, 2, 3, 0, 9, 31
	waitforvisualfinish
	delay 20
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, 20, -28
	waitforvisualfinish
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, 20, -28
	waitforvisualfinish
	delay 10
	createvisualtask AnimTask_SwayMon, 5, 0, 16, 6144, 8, 0
	delay 5
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 30, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 24, 8, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -24, -16, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 8, 4, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -16, 19, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 18, -18, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 2, 3, 9, 0, 31
	goto _81C985F
_81C996A:
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon2, 5, 0, 1, 0, 15, 1
	createvisualtask sub_80E2A38, 10, 2, 3, 0, 9, 31
	waitforvisualfinish
	delay 20
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, 20, -28
	waitforvisualfinish
	delay 5
	createvisualtask sub_812E498, 5
	delay 7
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 8, 1, 1
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 6, 1
	delay 14
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 12, -6, 1, 1
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 6, 1
	delay 14
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -12, -6, 1, 1
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 6, 1
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 2, 3, 9, 0, 31
	goto _81C985F
_81C9A37:
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, 20, -28
	waitforvisualfinish
	delay 5
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 6
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 4, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 6
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -4, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	goto _81C985F
_81C9AB3:
	createsprite gBattleAnimSpriteTemplate_8402630, ANIM_BATTLER_ATTACKER, 2, 20, -28
	waitforvisualfinish
	delay 10
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 2
	delay 12
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 6, 1
	goto _81C985F

Move_SAFEGUARD: @ 81C9AF7
	loadspritegfx ANIM_TAG_GUARD_RING
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 8, 8
	playsewithpan SE_W208, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7D74, ANIM_BATTLER_ATTACKER, 2
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7D74, ANIM_BATTLER_ATTACKER, 2
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7D74, ANIM_BATTLER_ATTACKER, 2
	waitforvisualfinish
	playsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER
	createvisualtask sub_80E1F8C, 2, 10, 0, 2, 0, 10, 32767
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end

Move_PAIN_SPLIT: @ 81C9B39
	loadspritegfx ANIM_TAG_PAIN_SPLIT
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_ATTACKER, 2, -8, -42, 0
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_TARGET, 2, -8, -42, 1
	delay 10
	playsewithpan SE_W207B, 0
	createvisualtask sub_812EB10, 2, 0, 0
	createvisualtask sub_812EB10, 2, 1, 0
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_ATTACKER, 2, -24, -42, 0
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_TARGET, 2, -24, -42, 1
	delay 10
	playsewithpan SE_W207B, 0
	createvisualtask sub_812EB10, 2, 0, 1
	createvisualtask sub_812EB10, 2, 1, 1
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_ATTACKER, 2, 8, -42, 0
	createsprite gBattleAnimSpriteTemplate_84026F0, ANIM_BATTLER_TARGET, 2, 8, -42, 1
	delay 10
	playsewithpan SE_W207B, 0
	createvisualtask sub_812EB10, 2, 0, 2
	createvisualtask sub_812EB10, 2, 1, 2
	end

Move_VICE_GRIP: @ 81C9BE1
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W011, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D769C, ANIM_BATTLER_ATTACKER, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D769C, ANIM_BATTLER_ATTACKER, 2, 1
	delay 9
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 5, 1, 2, 0, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_GUILLOTINE: @ 81C9C29
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	fadetobgfromset BG_GUILLOTINE_OPPONENT, BG_GUILLOTINE_PLAYER, BG_GUILLOTINE_CONTESTS
	waitbgfadein
	playsewithpan SE_W011, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D76DC, ANIM_BATTLER_ATTACKER, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D76DC, ANIM_BATTLER_ATTACKER, 2, 1
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 16, 0
	delay 9
	createvisualtask AnimTask_ShakeMon2, 5, 1, 2, 0, 23, 1
	delay 46
	createvisualtask AnimTask_ShakeMon2, 5, 1, 4, 0, 8, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 0
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 8, 0, 0
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	restorebg
	waitbgfadein
	end

Move_PAY_DAY: @ 81C9CB5
	loadspritegfx ANIM_TAG_COIN
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D75E4, ANIM_BATTLER_ATTACKER, 2, 20, 0, 0, 0, 1152
	waitforvisualfinish
	playsewithpan SE_W006, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 0, 1, 2
	createsprite gBattleAnimSpriteTemplate_83D75FC, ANIM_BATTLER_ATTACKER, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_OUTRAGE: @ 81C9D08
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loopsewithpan SE_W082, SOUND_PAN_ATTACKER, 8, 3
	createvisualtask sub_80E1F8C, 2, 7, 2, 5, 3, 8, 430
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 12, 6, 5, 4
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, 0, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, 0, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 0, 1280, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 0, -1280, 3
	delay 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 40, 1
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, 768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, 768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, -768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, -768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, 0, 3
	call _81C9E0F
	call _81C9E0F
	waitforvisualfinish
	end
_81C9E0F:
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, 0, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 0, 1280, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 0, -1280, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, 768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, 768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 1280, -768, 3
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DAFCC, ANIM_BATTLER_TARGET, 2, 0, 0, 30, -1280, -768, 3
	return

Move_SPARK: @ 81C9EA3
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_SPARK_2
	delay 0
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 5, 5, 23551
	playsewithpan SE_W085B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 32, 24, 190, 12, 0, 1, 0
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 80, 24, 22, 12, 0, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 156, 24, 121, 13, 0, 1, 1
	delay 0
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 0, 0, 23551
	delay 10
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 5, 5, 23551
	playsewithpan SE_W085B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 100, 24, 60, 10, 0, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 170, 24, 42, 11, 0, 1, 1
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D985C, ANIM_BATTLER_ATTACKER, 0, 238, 24, 165, 10, 0, 1, 1
	delay 0
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 0, 0, 23551
	delay 20
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 7, 7, 23551
	playsewithpan SE_W085B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 32, 12, 0, 20, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 32, 12, 64, 20, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 32, 12, 128, 20, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 32, 12, 192, 20, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 16, 12, 32, 20, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 16, 12, 96, 20, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 16, 12, 160, 20, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9908, ANIM_BATTLER_ATTACKER, 4, 0, 0, 16, 12, 224, 20, 2, 0
	delay 4
	waitforvisualfinish
	createvisualtask sub_80E1F8C, 2, 3, -31, 1, 0, 0, 23551
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 4
	playsewithpan SE_W063, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	createvisualtask sub_80E1F8C, 2, 4, -31, 2, 0, 6, 23551
	call ElectricityEffect
	waitforvisualfinish
	end

Move_ATTRACT: @ 81CA0BA
	loadspritegfx ANIM_TAG_RED_HEART
	loopsewithpan SE_W204, SOUND_PAN_ATTACKER, 12, 3
	createvisualtask AnimTask_SwayMon, 5, 0, 12, 4096, 4, 0
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D7AB0, ANIM_BATTLER_TARGET, 3, 20, -8
	waitforvisualfinish
	playsewithpan SE_W213, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 160, -32
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -256, -40
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 128, -16
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 416, -38
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -128, -22
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -384, -31
	waitforvisualfinish
	waitplaysewithpan SE_W213B, 0, 15
	createvisualtask sub_80D2100, 5
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 16, 256, 0
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 224, 240, 15
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 126, 272, 30
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 80, 224, 45
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 170, 272, 60
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 40, 256, 75
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 112, 256, 90
	createsprite gBattleAnimSpriteTemplate_83D7AE0, ANIM_BATTLER_ATTACKER, 40, 200, 272, 90
	delay 75
	createvisualtask sub_80E1F8C, 2, 4, 4, 4, 0, 10, 28479
	end

Move_GROWTH: @ 81CA1B3
	call _81CA1C0
	waitforvisualfinish
	call _81CA1C0
	waitforvisualfinish
	end
_81CA1C0:
	createvisualtask sub_80E1F8C, 2, 2, 0, 2, 0, 8, 32767
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -3, -3, 16, ANIM_BATTLER_ATTACKER, 0
	return

Move_WHIRLWIND: @ 81CA1E9
	loadspritegfx ANIM_TAG_WHIRLWIND_LINES
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, -8, 1, 60, 0
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 60, 1
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, 8, 1, 60, 2
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, 16, 1, 60, 3
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, 24, 1, 60, 4
	createsprite gBattleAnimSpriteTemplate_83DA51C, ANIM_BATTLER_ATTACKER, 2, 0, 32, 1, 60, 0
	delay 5
	loopsewithpan SE_W104, SOUND_PAN_TARGET, 10, 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 15, 1
	delay 29
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_TARGET, 12, 6, 1, 5
	delay 7
	playsewithpan SE_W081, SOUND_PAN_TARGET
	createvisualtask sub_80A8A80, 5, 1, 8
	waitforvisualfinish
	end

Move_CONFUSE_RAY: @ 81CA291
	loadspritegfx ANIM_TAG_YELLOW_BALL
	monbg ANIM_BATTLER_DEF_PARTNER
	fadetobg BG_GHOST
	waitbgfadein
	createvisualtask sub_812B374, 2, -64, 63, 2, 0
	createvisualtask sub_80E2094, 2, 10013, 0, 6, 0, 14, 351
	createsprite gBattleAnimSpriteTemplate_83DAE64, ANIM_BATTLER_TARGET, 2, 28, 0, 288
	waitforvisualfinish
	setalpha 8, 8
	playsewithpan SE_W081B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAE7C, ANIM_BATTLER_TARGET, 2, 0, -16
	waitforvisualfinish
	delay 0
	blendoff
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	restorebg
	waitbgfadein
	end

Move_LOCK_ON: @ 81CA2E4
	loadspritegfx ANIM_TAG_LOCK_ON
	createsprite gBattleAnimSpriteTemplate_83D6DAC, ANIM_BATTLER_ATTACKER, 40
	createsprite gBattleAnimSpriteTemplate_83D6DC4, ANIM_BATTLER_ATTACKER, 40, 1
	createsprite gBattleAnimSpriteTemplate_83D6DC4, ANIM_BATTLER_ATTACKER, 40, 2
	createsprite gBattleAnimSpriteTemplate_83D6DC4, ANIM_BATTLER_ATTACKER, 40, 3
	createsprite gBattleAnimSpriteTemplate_83D6DC4, ANIM_BATTLER_ATTACKER, 40, 4
	delay 120
	setarg ARG_RET_ID, -1
	waitforvisualfinish
	end

Move_MEAN_LOOK: @ 81CA31A
	loadspritegfx ANIM_TAG_EYE
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 16, rgb(0, 0, 0)
	loopsewithpan SE_W109, SOUND_PAN_TARGET, 15, 4
	waitplaysewithpan SE_W043, SOUND_PAN_TARGET, 85
	createsprite gBattleAnimSpriteTemplate_8402264, ANIM_BATTLER_ATTACKER, 2
	delay 120
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 16, 0, rgb(0, 0, 0)
	delay 30
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	waitforvisualfinish
	end

Move_ROCK_THROW: @ 81CA35F
	loadspritegfx ANIM_TAG_ROCKS
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_TARGET, 2, 6, 1, 15, 1
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 0, 1, 0, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 19, 1, 10, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -23, 2, -10, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 5, 20, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -15, 1, -10, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 23, 2, 10, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_ROCK_SLIDE: @ 81CA3EB
	loadspritegfx ANIM_TAG_ROCKS
	monbg ANIM_BATTLER_DEF_PARTNER
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, 7, 1, 11, 1
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -5, 1, -5, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 5, 0, 6, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 19, 1, 10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -23, 2, -10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 5, 50, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_DEF_PARTNER, 0, 5, 50, 1
	delay 2
	call _81CA483
	call _81CA483
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end
_81CA483:
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -20, 0, -10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 28, 1, 10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -10, 1, -5, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 10, 0, 6, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 24, 1, 10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -32, 2, -10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, -20, 0, -10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC4C, ANIM_BATTLER_TARGET, 2, 30, 2, 10, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 2
	return

Move_THIEF: @ 81CA52C
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	delay 1
	fadetobg BG_DARK
	waitbgfadein
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 6
	playsewithpan SE_W233, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 8, 1
	waitforvisualfinish
	delay 20
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	restorebg
	waitbgfadein
	end

Move_BUBBLE_BEAM: @ 81CA573
	loadspritegfx ANIM_TAG_BUBBLE
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	delay 1
	call _81CA5AD
	createvisualtask AnimTask_SwayMon, 5, 0, 3, 3072, 8, 1
	call _81CA5AD
	call _81CA5AD
	waitforvisualfinish
	call WaterBubbleEffect
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
_81CA5AD:
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 35, 70, 0, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 20, 40, -10, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 10, -60, 0, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 15, -15, 10, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 30, 10, -10, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 25, -30, 10, 256, 50
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	delay 3
	return

Move_ICY_WIND: @ 81CA650
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	loadspritegfx ANIM_TAG_ICE_SPIKES
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80E2A38, 10, 11, 4, 0, 4, 0
	fadetobg BG_ICE
	waitbgfadeout
	playsewithpan SE_W196, 0
	waitbgfadein
	waitforvisualfinish
	panse_1B SE_W016, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	call _81CA6A8
	delay 5
	call _81CA6A8
	playsewithpan SE_W016B, SOUND_PAN_TARGET
	delay 55
	call Unknown_81D5E0E
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	restorebg
	waitbgfadeout
	createvisualtask sub_80E2A38, 10, 11, 4, 4, 0, 0
	waitbgfadein
	end
_81CA6A8:
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_TARGET, 40, 0, 0, 0, 0, 72, 1
	delay 5
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_TARGET, 40, 0, 10, 0, 10, 72, 1
	delay 5
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_TARGET, 40, 0, -10, 0, -10, 72, 1
	delay 5
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_TARGET, 40, 0, 15, 0, 15, 72, 1
	delay 5
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_TARGET, 40, 0, -5, 0, -5, 72, 1
	return

Move_SMOKESCREEN: @ 81CA710
	loadspritegfx ANIM_TAG_BLACK_SMOKE
	loadspritegfx ANIM_TAG_BLACK_BALL
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_84021B0, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 35, -25
	waitforvisualfinish
	createvisualtask sub_812C1D0, 2
	delay 2
	playsewithpan SE_W028, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, -12, 104, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, -12, 72, 1, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, -6, 56, 1, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, -6, 88, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 0, 56, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 0, 88, 1, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 6, 72, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 6, 104, 1, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 12, 72, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 12, 56, 1, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 18, 80, 0, 75
	createsprite gBattleAnimSpriteTemplate_8402198, ANIM_BATTLER_TARGET, 4, 0, 18, 72, 1, 75
	waitforvisualfinish
	end

Move_CONVERSION: @ 81CA809
	loadspritegfx ANIM_TAG_CONVERSION
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_28 0
	setalpha 16, 0
	delay 0
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -24, -24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -8, -24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 8, -24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 24, -24
	delay 3
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -24, -8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -8, -8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 8, -8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 24, -8
	delay 3
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -24, 8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -8, 8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 8, 8
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 24, 8
	delay 3
	playsewithpan SE_W129, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -24, 24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, -8, 24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 8, 24
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6F80, ANIM_BATTLER_ATTACKER, 2, 24, 24
	delay 20
	playsewithpan SE_W112, SOUND_PAN_ATTACKER
	createvisualtask sub_80E21A8, 2, 10018, 1, 1, 14335, 12, 0, 0
	delay 6
	createvisualtask sub_80CE108, 5
	waitforvisualfinish
	delay 1
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end

Move_CONVERSION_2: @ 81CA91E
	loadspritegfx ANIM_TAG_CONVERSION
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	setalpha 0, 16
	delay 0
	playsewithpan SE_W112, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -24, -24, 60
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -8, -24, 65
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 8, -24, 70
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 24, -24, 75
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -24, -8, 80
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -8, -8, 85
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 8, -8, 90
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 24, -8, 95
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -24, 8, 100
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -8, 8, 105
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 8, 8, 110
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 24, 8, 115
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -24, 24, 120
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, -8, 24, 125
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 8, 24, 130
	createsprite gBattleAnimSpriteTemplate_83D6FB0, ANIM_BATTLER_ATTACKER, 2, 24, 24, 135
	createvisualtask sub_80CE210, 5
	delay 60
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	delay 10
	playsewithpan SE_W129, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_ROLLING_KICK: @ 81CAA3A
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 18, 6, 1, 4
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 6
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 0, 0, 4
	createsprite gBattleAnimSpriteTemplate_83D9FF0, ANIM_BATTLER_ATTACKER, 2, -24, 0, 48, 10, 160, 0
	delay 5
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -8, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 1, 8
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_HEADBUTT: @ 81CAABD
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 0
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 4, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 2
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_HORN_ATTACK: @ 81CAB1A
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HORN_HIT
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 0
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D7050, ANIM_BATTLER_TARGET, 4, 0, 0, 10
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 4, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 2
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	playsewithpan SE_W030, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_FURY_ATTACK: @ 81CAB87
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HORN_HIT
	createvisualtask sub_80A8E04, 2, 4, 256, 0, 2
	choosetwoturnanim _81CABB8, _81CABDE
_81CABA5:
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	waitforvisualfinish
	end
_81CABB8:
	createsprite gBattleAnimSpriteTemplate_83D7050, ANIM_BATTLER_TARGET, 4, 8, 8, 10
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	playsewithpan SE_W030, SOUND_PAN_TARGET
	goto _81CABA5
_81CABDE:
	createsprite gBattleAnimSpriteTemplate_83D7050, ANIM_BATTLER_TARGET, 4, -8, -8, 10
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	playsewithpan SE_W030, SOUND_PAN_TARGET
	goto _81CABA5

Move_HORN_DRILL: @ 81CAC04
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HORN_HIT
	jumpifcontest _81CAD6A
	fadetobg BG_DRILL
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 768, 1, -1
_81CAC21:
	waitbgfadein
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 0
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D7050, ANIM_BATTLER_TARGET, 4, 0, 0, 12
	waitforvisualfinish
	playse SE_BAN
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 40, 1
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 10, 0, 40, 1
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 0, 2, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -4, 3, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -8, -5, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 4, -12, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 16, 0, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 5, 18, 1, 3
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -17, 12, 1, 2
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -21, -15, 1, 2
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 8, -27, 1, 2
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 32, 0, 1, 2
	playsewithpan SE_W030, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6DE4, ANIM_BATTLER_ATTACKER, 2, 2
	waitforvisualfinish
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81CAD6A:
	fadetobg BG_DRILL_CONTESTS
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, 2304, 768, 0, -1
	goto _81CAC21

Move_THRASH: @ 81CAD81
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	createvisualtask sub_80D0A4C, 2
	createvisualtask sub_80D0AB8, 2
	createsprite gBattleAnimSpriteTemplate_83D9FC0, ANIM_BATTLER_TARGET, 3, 1, 10, 0
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 4, 0, 7, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 28
	createsprite gBattleAnimSpriteTemplate_83D9FC0, ANIM_BATTLER_TARGET, 3, 1, 10, 1
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 4, 0, 7, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 28
	createsprite gBattleAnimSpriteTemplate_83D9FC0, ANIM_BATTLER_TARGET, 3, 1, 10, 3
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 8, 0, 16, 1
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	end

Move_SING: @ 81CAE00
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80CEA20, 2
	waitforvisualfinish
	panse_1B SE_W047, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 7, 0, 12
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 6, 1, 12
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 1, 2, 12
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 3, 12
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 3, 0, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 5, 2, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 6, 3, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 0, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 1, 2, 12
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 5, 3, 12
	delay 4
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80CEAD8, 2
	waitforvisualfinish
	end

Move_LOW_KICK: @ 81CAED4
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 0, 0, 4
	createsprite gBattleAnimSpriteTemplate_83D9FF0, ANIM_BATTLER_TARGET, 2, -24, 28, 40, 8, 160, 0
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -8, 8, 1, 2
	createvisualtask sub_80A8E04, 2, 6, 384, 1, 2
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 1, 4
	end

Move_EARTHQUAKE: @ 81CAF31
	createvisualtask sub_80E1864, 5, 5, 10, 50
	createvisualtask sub_80E1864, 5, 4, 10, 50
	playsewithpan SE_W089, 0
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	delay 16
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	end

Move_FISSURE: @ 81CAF7E
	loadspritegfx ANIM_TAG_MUD_SAND
	createvisualtask sub_80E1864, 3, 5, 10, 50
	createvisualtask sub_80E1864, 3, 1, 10, 50
	playsewithpan SE_W089, SOUND_PAN_TARGET
	delay 8
	call _81CAFFF
	delay 15
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	delay 15
	call _81CB050
	delay 15
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	delay 15
	call _81CAFFF
	delay 50
	fadetobg BG_FISSURE
	waitbgfadeout
	createvisualtask sub_80E1BB0, 5, 1, 5, -1
	waitbgfadein
	delay 40
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81CAFFF:
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 0, 12, -48, -16, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 0, 16, -16, -10, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 1, 14, -52, -18, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 1, 12, -32, -16, 24
	playsewithpan SE_W091, SOUND_PAN_TARGET
	return
_81CB050:
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 0, 12, -24, -16, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 0, 16, -38, -10, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 1, 14, -20, -18, 24
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 1, 12, -36, -16, 24
	playsewithpan SE_W091, SOUND_PAN_TARGET
	return

Move_DIG: @ 81CB0A1
	choosetwoturnanim _81CB0AB, _81CB106
_81CB0AA:
	end
_81CB0AB:
	loadspritegfx ANIM_TAG_MUD_SAND
	loadspritegfx ANIM_TAG_DIRT_MOUND
	createsprite gDigDirtMoundSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 0, 180
	createsprite gDigDirtMoundSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 1, 180
	monbg_22 ANIM_BATTLER_ATTACKER
	delay 1
	createvisualtask sub_80E1244, 2, 0
	delay 6
	call _81CB16A
	call _81CB16A
	call _81CB16A
	call _81CB16A
	call _81CB16A
	waitforvisualfinish
	clearmonbg_23 ANIM_BATTLER_ATTACKER
	delay 1
	createvisualtask sub_80E1244, 2, 1
	goto _81CB0AA
_81CB106:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_DIRT_MOUND
	createvisualtask sub_80E149C, 2, 0
	waitforvisualfinish
	monbg ANIM_BATTLER_ATTACKER
	createsprite gDigDirtMoundSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 0, 48
	createsprite gDigDirtMoundSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 1, 48
	delay 1
	createvisualtask sub_80E149C, 2, 1
	delay 16
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -8, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	playsewithpan SE_W025B, SOUND_PAN_ATTACKER
	clearmonbg ANIM_BATTLER_ATTACKER
	goto _81CB0AA
_81CB16A:
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 12, 4, -16, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 16, 4, -10, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 1, 14, 4, -18, 18
	createsprite gDirtPlumeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 1, 12, 4, -16, 18
	playsewithpan SE_W091, SOUND_PAN_ATTACKER
	delay 32
	return

Move_MEDITATE: @ 81CB1BD
	call SetPsychicBackground
	createvisualtask sub_80DBC94, 2
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	delay 16
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	waitforvisualfinish
	call BackgroundRestore
	end

Move_AGILITY: @ 81CB1DA
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 24, 6, 4, 4
	createvisualtask sub_80E2DD8, 2, 0, 4, 7, 10
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 12
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 12
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 12
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 12
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 12
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	delay 1
	end

Move_QUICK_ATTACK: @ 81CB224
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 24, 6, 1, 5
	createvisualtask sub_80E2DD8, 2, 0, 4, 7, 3
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	delay 4
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	waitforvisualfinish
	end

Move_RAGE: @ 81CB27C
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ANGER
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_BlendMonInAndOut, 3, ANIM_BATTLER_ATTACKER, 31, 10, 0, 2
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, -20, -28
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_ATTACKER, 2, 0, 20, -28
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 6
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask sub_80A9058, 2, 1, 1, 10, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	end

Move_TELEPORT: @ 81CB2F2
	call SetPsychicBackground
	createvisualtask sub_80DBCFC, 2
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	delay 15
	call BackgroundRestore
	waitforvisualfinish
	end

Move_DOUBLE_TEAM: @ 81CB30B
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	createvisualtask sub_80CE7E0, 2
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 32
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 24
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 16
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	delay 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	delay 1
	end

Move_MINIMIZE: @ 81CB352
	setalpha 10, 8
	createvisualtask sub_80D0488, 2
	loopsewithpan SE_W107, SOUND_PAN_ATTACKER, 34, 3
	waitforvisualfinish
	blendoff
	end

Move_METRONOME: @ 81CB365
	loadspritegfx ANIM_TAG_FINGER
	loadspritegfx ANIM_TAG_THOUGHT_BUBBLE
	createsprite gBattleAnimSpriteTemplate_83D7220, ANIM_BATTLER_ATTACKER, 11, 0, 100
	playsewithpan SE_W118, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D72C8, ANIM_BATTLER_ATTACKER, 12, 0
	delay 24
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 22, 3
	waitforvisualfinish
	end

Move_SKULL_BASH: @ 81CB38F
	choosetwoturnanim _81CB399, _81CB3E6
_81CB398:
	end
_81CB399:
	call _81CB3A9
	call _81CB3A9
	waitforvisualfinish
	goto _81CB398
_81CB3A9:
	createsprite gBattleAnimSpriteTemplate_83C2010, ANIM_BATTLER_ATTACKER, 2, 0, -24, 0, 0, 10, 0
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80A8E04, 2, 16, 96, 0, 2
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83C2010, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 10, 1
	waitforvisualfinish
	return
_81CB3E6:
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask sub_80CDAC8, 2, 0
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	waitforvisualfinish
	playse SE_BAN
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 40, 1
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 10, 0, 40, 1
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 4, 0, 0, 1, 0
	loopsewithpan SE_W025B, SOUND_PAN_TARGET, 8, 3
	waitforvisualfinish
	createvisualtask sub_80CDAC8, 2, 1
	goto _81CB398

Move_AMNESIA: @ 81CB455
	loadspritegfx ANIM_TAG_AMNESIA
	call SetPsychicBackground
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DA88C, ANIM_BATTLER_ATTACKER, 20
	playsewithpan SE_W118, SOUND_PAN_ATTACKER
	delay 54
	loopsewithpan SE_W118, SOUND_PAN_ATTACKER, 16, 3
	waitforvisualfinish
	call BackgroundRestore
	end

Move_KINESIS: @ 81CB479
	loadspritegfx ANIM_TAG_ALERT
	loadspritegfx ANIM_TAG_BENT_SPOON
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	createsprite gBattleAnimSpriteTemplate_83DA824, ANIM_BATTLER_ATTACKER, 20
	createsprite gBattleAnimSpriteTemplate_83D7450, ANIM_BATTLER_ATTACKER, 19, 32, -8, 0
	createsprite gBattleAnimSpriteTemplate_83D7450, ANIM_BATTLER_ATTACKER, 19, 32, 16, 1
	loopsewithpan SE_W109, SOUND_PAN_ATTACKER, 21, 2
	delay 60
	playsewithpan SE_W146, SOUND_PAN_ATTACKER
	delay 30
	loopsewithpan SE_W146, SOUND_PAN_ATTACKER, 20, 2
	delay 70
	playsewithpan SE_W207B, SOUND_PAN_ATTACKER
	waitforvisualfinish
	call BackgroundRestore
	end

Move_GLARE: @ 81CB4CA
	loadspritegfx ANIM_TAG_SMALL_RED_EYE
	loadspritegfx ANIM_TAG_EYE_SPARKLE
	createvisualtask sub_81301EC, 5, 0
	playsewithpan SE_W060B, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80E2A38, 5, 1, 0, 0, 16, 0
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, -16, -8
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, 16, -8
	createvisualtask sub_80D23B4, 5
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	delay 2
	createvisualtask sub_80D60B4, 3, 20, 1, 0
	waitforvisualfinish
	createvisualtask sub_80E2A38, 5, 1, 0, 16, 0, 0
	end

Move_BARRAGE: @ 81CB533
	loadspritegfx ANIM_TAG_RED_BALL
	createvisualtask sub_8130554, 3
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	delay 24
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, 8, 1, 40, 1
	createvisualtask AnimTask_ShakeMon, 3, 1, 0, 4, 20, 1
	createvisualtask AnimTask_ShakeMon, 3, 3, 0, 4, 20, 1
	loopsewithpan SE_W070, SOUND_PAN_TARGET, 8, 2
	end

Move_SKY_ATTACK: @ 81CB57B
	choosetwoturnanim _81CB585, _81CB68E
_81CB584:
	end
_81CB585:
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 11
	createvisualtask sub_80E3BA4, 5, 7
	jumpargeq 7, 0, _81CB5A0
	goto _81CB617
_81CB5A0:
	createvisualtask sub_80E2A38, 10, 27, 1, 0, 12, 0
	waitforvisualfinish
	delay 12
	createvisualtask sub_80E2A38, 10, 2, 1, 8, 0, 0
	createvisualtask sub_80E1864, 5, 0, 2, 16
	loopsewithpan SE_W287, SOUND_PAN_ATTACKER, 4, 8
	createvisualtask sub_80E2A38, 10, 2, 1, 0, 15, 32767
	delay 20
	createvisualtask sub_80E2A38, 10, 2, 1, 15, 0, 32767
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 25, 1, 8, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81CB584
_81CB617:
	createvisualtask sub_80E2A7C, 10, 1, 1, 0, 12, 0
	waitforvisualfinish
	delay 12
	createvisualtask sub_80E2A38, 10, 2, 1, 8, 0, 0
	createvisualtask sub_80E1864, 5, 0, 2, 16
	playsewithpan SE_W287, SOUND_PAN_ATTACKER
	delay 8
	createvisualtask sub_80E2A38, 10, 2, 1, 0, 15, 32767
	delay 20
	createvisualtask sub_80E2A38, 10, 2, 1, 15, 0, 32767
	waitforvisualfinish
	createvisualtask sub_80E2A7C, 10, 4, 1, 8, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81CB584
_81CB68E:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_BIRD
	call Unknown_81D61FB
	monbg ANIM_BATTLER_ATTACKER
	createvisualtask sub_80E2A38, 10, 2, 0, 0, 16, 32767
	delay 4
	createvisualtask sub_80DFC24, 5, 0
	waitforvisualfinish
	createvisualtask sub_812B340, 5, 238, -64
	createsprite gBattleAnimSpriteTemplate_83DA65C, ANIM_BATTLER_TARGET, 2
	delay 14
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 10, 0, 18, 1
	createvisualtask sub_812B30C, 5, 141, 63
	delay 20
	createvisualtask sub_80DFD24, 5, 1
	delay 2
	createvisualtask sub_80E2A38, 10, 2, 0, 15, 0, 32767
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	call Unknown_81D622B
	goto _81CB584

Move_FLASH: @ 81CB713
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	createvisualtask sub_80E388C, 2
	waitforvisualfinish
	end

Move_SPLASH: @ 81CB720
	createvisualtask AnimTask_Splash, 2, 0, 3
	delay 8
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 38, 3
	waitforvisualfinish
	end

Move_ACID_ARMOR: @ 81CB735
	monbg ANIM_BATTLER_ATTACKER
	setalpha 15, 0
	createvisualtask sub_812F314, 2, 0
	playsewithpan SE_W151, SOUND_PAN_ATTACKER
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	end

Move_SHARPEN: @ 81CB74E
	loadspritegfx ANIM_TAG_SPHERE_TO_CUBE
	createsprite gBattleAnimSpriteTemplate_83D6EF0, ANIM_BATTLER_ATTACKER, 2
	waitforvisualfinish
	end

Move_SUPER_FANG: @ 81CB75A
	loadspritegfx ANIM_TAG_FANG_ATTACK
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 1, 0, 20, 1
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 3, 0, 48, 1
	createvisualtask AnimTask_BlendMonInAndOut, 2, ANIM_BATTLER_ATTACKER, 1247, 12, 4, 1
	waitforvisualfinish
	delay 20
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7080, ANIM_BATTLER_TARGET, 2
	playsewithpan SE_W044, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 2143, 14, 32767, 14
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 7, 12, 1
	waitforvisualfinish
	blendoff
	end

Move_SLASH: @ 81CB7DB
	loadspritegfx ANIM_TAG_SLASH
	createsprite gBattleAnimSpriteTemplate_83D6E38, ANIM_BATTLER_TARGET, 2, 1, -8, 0
	playsewithpan SE_W013, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6E38, ANIM_BATTLER_TARGET, 2, 1, 8, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 18, 1
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_STRUGGLE: @ 81CB815
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_MOVEMENT_WAVES
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 3, 0, 12, 4
	createsprite gBattleAnimSpriteTemplate_83D7C90, ANIM_BATTLER_ATTACKER, 2, 0, 0, 2
	createsprite gBattleAnimSpriteTemplate_83D7C90, ANIM_BATTLER_ATTACKER, 2, 0, 1, 2
	loopsewithpan SE_W029, SOUND_PAN_ATTACKER, 12, 4
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_SKETCH: @ 81CB87B
	loadspritegfx ANIM_TAG_PENCIL
	monbg ANIM_BATTLER_TARGET
	createvisualtask sub_80D0C88, 2
	createsprite gBattleAnimSpriteTemplate_83D77E0, ANIM_BATTLER_TARGET, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	createvisualtask AnimTask_Splash, 2, 0, 2
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 38, 2
	end

Move_NIGHTMARE: @ 81CB8A3
	fadetobg BG_GHOST
	waitbgfadein
	jumpifcontest _81CB8CF
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80DE1B0, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 40, 1
	playsewithpan SE_W171, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	restorebg
	waitbgfadein
	end
_81CB8CF:
	createvisualtask AnimTask_BlendMonInAndOut, 2, ANIM_BATTLER_ATTACKER, 32767, 10, 2, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 3, 0, 32, 1
	playsewithpan SE_W171, SOUND_PAN_TARGET
	waitforvisualfinish
	restorebg
	waitbgfadein
	end

Move_FLAIL: @ 81CB8F9
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createvisualtask sub_812E860, 2, 0
	loopsewithpan SE_W029, SOUND_PAN_ATTACKER, 8, 2
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 3
	createvisualtask sub_80A9058, 2, 0, 1, 30, 1, 0
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_SPITE: @ 81CB936
	fadetobg BG_GHOST
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	waitbgfadein
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80E1F8C, 2, 2, 2, 6, 0, 8, 32767
	createvisualtask sub_80DE3AC, 2
	loopsewithpan SE_W060, SOUND_PAN_TARGET, 20, 3
	waitforvisualfinish
	restorebg
	waitbgfadein
	clearmonbg ANIM_BATTLER_TARGET
	end

Move_MACH_PUNCH: @ 81CB965
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E3B4C, 2
	jumpargeq 7, 1, _81CB9E6
	fadetobg BG_HIGHSPEED_OPPONENT
_81CB97E:
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 0, 1, -1
	waitbgfadein
	delay 0
	setalpha 9, 8
	createvisualtask sub_807A69C, 2, 28968, 10
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 8, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81CB9E6:
	fadetobg BG_HIGHSPEED_PLAYER
	goto _81CB97E

Move_FORESIGHT: @ 81CB9ED
	loadspritegfx ANIM_TAG_MAGNIFYING_GLASS
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 16, 0
	createsprite gBattleAnimSpriteTemplate_8402A24, ANIM_BATTLER_TARGET, 2, 1
	delay 17
	loopsewithpan SE_W166, SOUND_PAN_TARGET, 16, 4
	delay 48
	delay 24
	playsewithpan SE_W166, SOUND_PAN_TARGET
	delay 10
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_TARGET, 32767, 12, 2, 1
	playsewithpan SE_W197, SOUND_PAN_TARGET
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_DESTINY_BOND: @ 81CBA2C
	loadspritegfx ANIM_TAG_WHITE_SHADOW
	fadetobg BG_GHOST
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	waitbgfadein
	createvisualtask sub_80DE918, 5, 0, 48
	playsewithpan SE_W109, SOUND_PAN_ATTACKER
	delay 48
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 24, 1
	createvisualtask sub_80E2A7C, 2, 6, 1, 0, 12, 30653
	delay 24
	createvisualtask sub_80E2A7C, 2, 6, 1, 12, 0, 30653
	playsewithpan SE_W171, SOUND_PAN_TARGET
	waitforvisualfinish
	restorebg
	waitbgfadein
	blendoff
	clearmonbg 5
	end

Move_ENDURE: @ 81CBA87
	loadspritegfx ANIM_TAG_FOCUS_ENERGY
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	call EndureFlamesAnim
	delay 8
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 11, 31
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 32, 1
	call EndureFlamesAnim
	delay 8
	call EndureFlamesAnim
	waitforvisualfinish
	end

EndureFlamesAnim:
	createsprite gBattleAnimSpriteTemplate_EndureFlame, ANIM_BATTLER_ATTACKER, 2, 0, -24, 26, 2
	delay 4
	createsprite gBattleAnimSpriteTemplate_EndureFlame, ANIM_BATTLER_ATTACKER, 2, 0, 14, 28, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_EndureFlame, ANIM_BATTLER_ATTACKER, 2, 0, -5, 10, 2
	delay 4
	createsprite gBattleAnimSpriteTemplate_EndureFlame, ANIM_BATTLER_ATTACKER, 2, 0, 28, 26, 3
	delay 4
	createsprite gBattleAnimSpriteTemplate_EndureFlame, ANIM_BATTLER_ATTACKER, 2, 0, -12, 0, 1
	return

Move_CHARM: @ 81CBB1B
	loadspritegfx ANIM_TAG_MAGENTA_HEART
	createvisualtask sub_812E568, 5, 0, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 0, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, -20, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 20, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	waitforvisualfinish
	end

Move_ROLLOUT: @ 81CBB5E
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_MUD_SAND
	loadspritegfx ANIM_TAG_ROCKS
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask sub_80DD4D4, 2
	waitforvisualfinish
	createvisualtask sub_80A9058, 2, 0, 1, 30, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 4, 0, 0, 1, 2
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_FALSE_SWIPE: @ 81CBB9F
	loadspritegfx ANIM_TAG_SLASH_2
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBattleAnimSpriteTemplate_83D6E50, ANIM_BATTLER_TARGET, 2
	playsewithpan SE_W233, SOUND_PAN_TARGET
	delay 16
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 0
	playsewithpan SE_W104, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 32
	playsewithpan SE_W104, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 48
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 64
	playsewithpan SE_W104, SOUND_PAN_TARGET
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6E68, ANIM_BATTLER_TARGET, 2, 80
	delay 2
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 6, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 1, 3
	playsewithpan SE_W004, SOUND_PAN_TARGET
	end

Move_SWAGGER: @ 81CBC26
	loadspritegfx ANIM_TAG_BREATH
	loadspritegfx ANIM_TAG_ANGER
	createvisualtask sub_80D08C8, 2
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7764, ANIM_BATTLER_ATTACKER, 2
	loopsewithpan SE_W207, SOUND_PAN_ATTACKER, 4, 2
	waitforvisualfinish
	delay 24
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, -20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, 20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	waitforvisualfinish
	end

Move_MILK_DRINK: @ 81CBC6E
	loadspritegfx ANIM_TAG_MILK_BOTTLE
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_BATTLER_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6C48, ANIM_BATTLER_ATTACKER, 2
	delay 40
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	delay 12
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	delay 20
	playsewithpan SE_W152, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 0
	playsewithpan SE_W208, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	call Unknown_81D5F3E
	waitforvisualfinish
	end

Move_MAGNITUDE: @ 81CBCB0
	createvisualtask sub_80E1B88, 2
	waitforvisualfinish
	jumpargeq 15, 0, _81CBCC9
	jumpargeq 15, 1, _81CBCEE
_81CBCC8:
	end
_81CBCC9:
	createvisualtask sub_80E1864, 5, 5, 0, 50
	createvisualtask sub_80E1864, 5, 4, 0, 50
	loopsewithpan SE_W070, SOUND_PAN_TARGET, 8, 10
	goto _81CBCC8
_81CBCEE:
	createvisualtask sub_80E1864, 5, 5, 0, 50
	createvisualtask sub_80E1864, 5, 4, 0, 50
	loopsewithpan SE_W070, SOUND_PAN_TARGET, 8, 10
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	delay 16
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, 0, 14, 32767, 14
	goto _81CBCC8

Move_RAPID_SPIN: @ 81CBD41
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_RAPID_SPIN
	monbg ANIM_BATTLER_ATTACKER
	createsprite gBattleAnimSpriteTemplate_84023E8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 32, -32, 40, -2
	createvisualtask sub_812CDC8, 2, 0, 2, 0
	loopsewithpan SE_W013B, SOUND_PAN_ATTACKER, 8, 4
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 2
	createvisualtask sub_80A9058, 2, 0, 1, 10, 1, 0
	playsewithpan SE_W003, SOUND_PAN_TARGET
	waitforvisualfinish
	delay 8
	createvisualtask sub_812CDC8, 2, 0, 2, 1
	loopsewithpan SE_W013B, SOUND_PAN_ATTACKER, 8, 4
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	end

Move_MOONLIGHT: @ 81CBDAE
	loadspritegfx ANIM_TAG_MOON
	loadspritegfx ANIM_TAG_SPARKLE_5
	loadspritegfx ANIM_TAG_BLUE_STAR
	setalpha 0, 16
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 16, rgb(0, 0, 0)
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D6FC8, ANIM_BATTLER_ATTACKER, 2, 120, 56
	createvisualtask sub_8079670, 3, 0, 16, 16, 0, 1
	playsewithpan SE_W236, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6FF8, ANIM_BATTLER_ATTACKER, 40, -12, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6FF8, ANIM_BATTLER_ATTACKER, 40, -24, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6FF8, ANIM_BATTLER_ATTACKER, 40, 21, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6FF8, ANIM_BATTLER_ATTACKER, 40, 0, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6FF8, ANIM_BATTLER_ATTACKER, 40, 10, 0
	delay 20
	createvisualtask sub_80CE3EC, 2
	waitforvisualfinish
	call Unknown_81D5EF5
	waitforvisualfinish
	end

Move_EXTREME_SPEED: @ 81CBE3E
	loadspritegfx ANIM_TAG_SPEED_DUST
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask sub_80E3B4C, 2
	jumpargeq 7, 1, _81CBEF5
	fadetobg BG_HIGHSPEED_OPPONENT
_81CBE55:
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 0, 1, -1
	waitbgfadein
	createvisualtask sub_80D15A4, 2
	loopsewithpan SE_W013B, SOUND_PAN_ATTACKER, 8, 3
	waitforvisualfinish
	delay 1
	createvisualtask sub_80E4300, 2
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	delay 18
	createvisualtask sub_80D1638, 2
	delay 2
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB508, ANIM_BATTLER_TARGET, 2, 1, 0, -12, 3
	delay 10
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB508, ANIM_BATTLER_TARGET, 2, 1, 0, 12, 3
	delay 10
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB508, ANIM_BATTLER_TARGET, 2, 1, 0, 0, 3
	waitforvisualfinish
	createvisualtask sub_80D18D4, 2
	delay 10
	createvisualtask sub_80D17C4, 2
	loopsewithpan SE_W104, SOUND_PAN_ATTACKER, 8, 4
	waitforvisualfinish
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 1
	setarg ARG_RET_ID, 4096
	delay 1
	end
_81CBEF5:
	fadetobg BG_HIGHSPEED_PLAYER
	goto _81CBE55

Move_UPROAR: @ 81CBEFC
	loadspritegfx ANIM_TAG_JAGGED_MUSIC_NOTE
	loadspritegfx ANIM_TAG_THIN_RING
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80D2CF8, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D79A4, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 0, 31, 8
	playsewithpan SE_W253, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, 29, -12, 0
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, -12, -29, 1
	delay 16
	createvisualtask sub_80D2CF8, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D79A4, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 0, 31, 8
	playsewithpan SE_W253, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, 12, -29, 1
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, -29, -12, 0
	delay 16
	createvisualtask sub_80D2CF8, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D79A4, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 0, 31, 8
	playsewithpan SE_W253, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, 24, -24, 1
	createsprite gBattleAnimSpriteTemplate_83D7CC8, ANIM_BATTLER_ATTACKER, 2, 0, -24, -24, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_HEAT_WAVE: @ 81CBFC6
	loadspritegfx ANIM_TAG_FLYING_DIRT
	createvisualtask AnimTask_BlendSpriteColor, 5, 10261, 0, 6, 6, rgb(31, 0, 0)
	createvisualtask do_boulder_dust, 5, 1
	createvisualtask AnimTask_BlendInterfaceColor, 6, 6, 31
	panse_1B SE_W257, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	delay 4
	createvisualtask sub_80D5DDC, 5
	delay 12
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 10, 2304, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 90, 2048, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 50, 2560, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 20, 2304, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 70, 1984, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 2816, 96, 1
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 60, 2560, 96, 1
	end

Move_HAIL: @ 81CC076
	loadspritegfx ANIM_TAG_HAIL
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	createvisualtask sub_80E2A38, 10, 1, 3, 0, 6, 0
	waitforvisualfinish
	createvisualtask AnimTask_Hail1, 5
	loopsewithpan SE_W258, 0, 8, 10
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1, 3, 6, 0, 0
	end

Move_TORMENT: @ 81CC0AE
	loadspritegfx ANIM_TAG_ANGER
	loadspritegfx ANIM_TAG_THOUGHT_BUBBLE
	createvisualtask sub_812D008, 2
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 2, ANIM_BATTLER_TARGET, 31, 10, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, -20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, 20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	end

Move_MEMENTO: @ 81CC0F2
	setalpha 0, 16
	delay 1
	createvisualtask sub_80E0918, 2
	delay 1
	createvisualtask sub_80E00EC, 5
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	delay 48
	playsewithpan SE_W060B, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80E09C4, 2
	delay 12
	setalpha 0, 16
	delay 1
	monbg_22 ANIM_BATTLER_TARGET
	createvisualtask sub_80E03BC, 5
	playsewithpan SE_W060, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg_23 ANIM_BATTLER_TARGET
	delay 1
	blendoff
	delay 1
	end

Move_FACADE: @ 81CC136
	loadspritegfx ANIM_TAG_SWEAT_DROP
	createvisualtask sub_812FD7C, 2, 0, 3
	createvisualtask sub_812FFE4, 2, 0, 72
	loopsewithpan SE_W207, SOUND_PAN_ATTACKER, 24, 3
	end

Move_SMELLING_SALT: @ 81CC156
	loadspritegfx ANIM_TAG_TAG_HAND
	loadspritegfx ANIM_TAG_SMELLINGSALT_EFFECT
	createsprite gBattleAnimSpriteTemplate_84029C4, ANIM_BATTLER_TARGET, 2, 1, 0, 2
	createsprite gBattleAnimSpriteTemplate_84029C4, ANIM_BATTLER_TARGET, 2, 1, 1, 2
	delay 32
	createvisualtask sub_8130918, 3, 1, 2
	loopsewithpan SE_W003, SOUND_PAN_TARGET, 12, 2
	waitforvisualfinish
	delay 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 6, 2
	createsprite gBattleAnimSpriteTemplate_84029F4, ANIM_BATTLER_TARGET, 2, 1, 8, 3
	loopsewithpan SE_W207B, SOUND_PAN_TARGET, 16, 3
	end

Move_FOLLOW_ME: @ 81CC1B1
	loadspritegfx ANIM_TAG_FINGER
	createsprite gBattleAnimSpriteTemplate_83D72E0, ANIM_BATTLER_ATTACKER, 2, 0
	playsewithpan SE_W039, SOUND_PAN_ATTACKER
	delay 18
	playsewithpan SE_W213, SOUND_PAN_ATTACKER
	delay 71
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 22, 3
	end

Move_CHARGE: @ 81CC1D0
	loadspritegfx ANIM_TAG_ELECTRIC_ORBS
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	loadspritegfx ANIM_TAG_ELECTRICITY
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 4, rgb(0, 0, 0)
	waitforvisualfinish
	createvisualtask sub_80D6B3C, 2, 0, 60, 2, 12
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 30
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 30
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9A6C, ANIM_BATTLER_ATTACKER, 2, 0
	delay 25
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 20
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 15
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 10
	delay 6
	loopsewithpan SE_W268, SOUND_PAN_ATTACKER, 6, 5
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 0, 16, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 0, -16, -16
	playsewithpan SE_W085B, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 4, 4, 0, rgb(0, 0, 0)
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	end

Move_TAUNT: @ 81CC26B
	loadspritegfx ANIM_TAG_FINGER_2
	loadspritegfx ANIM_TAG_THOUGHT_BUBBLE
	loadspritegfx ANIM_TAG_ANGER
	createsprite gBattleAnimSpriteTemplate_83D7220, ANIM_BATTLER_ATTACKER, 11, 0, 45
	playsewithpan SE_W118, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D7358, ANIM_BATTLER_ATTACKER, 12, 0
	delay 4
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 16, 2
	waitforvisualfinish
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, -20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	waitforvisualfinish
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D7798, ANIM_BATTLER_TARGET, 2, 1, 20, -28
	playsewithpan SE_W207B, SOUND_PAN_TARGET
	end

Move_HELPING_HAND: @ 81CC2BF
	loadspritegfx ANIM_TAG_TAG_HAND
	createvisualtask sub_8130D20, 5
	createsprite gBattleAnimSpriteTemplate_8402A0C, ANIM_BATTLER_ATTACKER, 40, 0
	createsprite gBattleAnimSpriteTemplate_8402A0C, ANIM_BATTLER_ATTACKER, 40, 1
	delay 19
	playsewithpan SE_W227, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATK_PARTNER, 2, 0, 5, 1
	delay 14
	playsewithpan SE_W227, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATK_PARTNER, 2, 0, 5, 1
	delay 20
	playsewithpan SE_W227, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATK_PARTNER, 3, 0, 10, 1
	createvisualtask AnimTask_BlendMonInAndOut, 2, ANIM_BATTLER_ATK_PARTNER, 1023, 12, 1, 1
	end

Move_ASSIST: @ 81CC332
	loadspritegfx ANIM_TAG_PAW_PRINT
	createsprite gBattleAnimSpriteTemplate_8402964, ANIM_BATTLER_ATTACKER, 50, 112, -16, 140, 128, 36
	delay 2
	createsprite gBattleAnimSpriteTemplate_8402964, ANIM_BATTLER_ATTACKER, 50, 208, 128, -16, 48, 36
	playsewithpan SE_W010, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_8402964, ANIM_BATTLER_ATTACKER, 50, -16, 112, 256, -16, 36
	playsewithpan SE_W010, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_8402964, ANIM_BATTLER_ATTACKER, 50, 108, 128, 84, -16, 36
	playsewithpan SE_W010, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_8402964, ANIM_BATTLER_ATTACKER, 50, -16, 56, 256, 56, 36
	playsewithpan SE_W010, 0
	end

Move_SUPERPOWER: @ 81CC3A3
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	loadspritegfx ANIM_TAG_METEOR
	loadspritegfx ANIM_TAG_FLAT_ROCK
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_28 0
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83DA0FC, ANIM_BATTLER_TARGET, 2, 0
	playsewithpan SE_W025, SOUND_PAN_ATTACKER
	delay 20
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, 4, 1, 180, 1
	createvisualtask sub_812B340, 5, 234, 0
	delay 40
	createsprite gBattleAnimSpriteTemplate_83DA114, ANIM_BATTLER_ATTACKER, 41, 200, 96, 1, 120
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DA114, ANIM_BATTLER_ATTACKER, 41, 20, 248, 4, 112
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DA114, ANIM_BATTLER_ATTACKER, 41, 130, 160, 2, 104
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DA114, ANIM_BATTLER_ATTACKER, 41, 160, 192, 0, 96
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DA114, ANIM_BATTLER_ATTACKER, 41, 60, 288, 3, 88
	delay 74
	createsprite gBattleAnimSpriteTemplate_83DA12C, ANIM_BATTLER_TARGET, 3, 0
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	delay 16
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 8, 0, 16, 1
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	delay 1
	end

Move_RECYCLE: @ 81CC45E
	loadspritegfx ANIM_TAG_RECYCLE
	monbg ANIM_BATTLER_ATTACKER
	setalpha 0, 16
	delay 1
	createsprite gBattleAnimSpriteTemplate_8402B10, ANIM_BATTLER_ATTACKER, 2
	loopsewithpan SE_W036, SOUND_PAN_ATTACKER, 24, 3
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 32767, 12, 2, 1
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	end

Move_BRICK_BREAK: @ 81CC492
	loadspritegfx ANIM_TAG_BLUE_LIGHT_WALL
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_TORN_METAL
	choosetwoturnanim _81CC4A7, _81CC576
_81CC4A7:
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 8
	delay 4
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -18, -18, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -18, -18, 10, 1, 0
	playsewithpan SE_W233, SOUND_PAN_TARGET
	delay 20
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 8
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 18, 18, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 18, 18, 10, 1, 0
	playsewithpan SE_W233, SOUND_PAN_TARGET
	delay 20
	createvisualtask AnimTask_WindUpLunge, 2, ANIM_BATTLER_ATTACKER, -24, 0, 24, 10, 24, 3
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 6, rgb(0, 0, 0)
	delay 37
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 10, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 6, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	end
_81CC576:
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 8
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DA0A0, ANIM_BATTLER_ATTACKER, 3, 1, 0, 0, 90, 10
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -18, -18, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -18, -18, 10, 1, 0
	playsewithpan SE_W233, SOUND_PAN_TARGET
	delay 20
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 8
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 18, 18, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 18, 18, 10, 1, 0
	playsewithpan SE_W233, SOUND_PAN_TARGET
	delay 20
	createvisualtask AnimTask_WindUpLunge, 2, ANIM_BATTLER_ATTACKER, -24, 0, 24, 10, 24, 3
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 6, rgb(0, 0, 0)
	delay 37
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 10, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DA0B8, ANIM_BATTLER_ATTACKER, 2, 1, 0, -8, -12
	createsprite gBattleAnimSpriteTemplate_83DA0B8, ANIM_BATTLER_ATTACKER, 2, 1, 1, 8, -12
	createsprite gBattleAnimSpriteTemplate_83DA0B8, ANIM_BATTLER_ATTACKER, 2, 1, 2, -8, 12
	createsprite gBattleAnimSpriteTemplate_83DA0B8, ANIM_BATTLER_ATTACKER, 2, 1, 3, 8, 12
	playsewithpan SE_W280, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 6, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	end

Move_YAWN: @ 81CC697
	loadspritegfx ANIM_TAG_PINK_CLOUD
	createvisualtask sub_812F724, 2, 0
	playsewithpan SE_W281, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_84027EC, ANIM_BATTLER_TARGET, 5, 2
	playsewithpan SE_W255, SOUND_PAN_ATTACKER
	delay 4
	createsprite gBattleAnimSpriteTemplate_84027EC, ANIM_BATTLER_TARGET, 5, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_84027EC, ANIM_BATTLER_TARGET, 5, 0
	waitforvisualfinish
	createvisualtask sub_812F724, 2, 1
	playsewithpan SE_W281, SOUND_PAN_TARGET
	end

Move_ENDEAVOR: @ 81CC6DA
	loadspritegfx ANIM_TAG_SWEAT_DROP
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask sub_812FD7C, 2, 0, 2
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 24, 2
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 703, 12, 1, 2
	delay 6
	createvisualtask sub_80A9058, 5, 0, 1, 8, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 12, -12, 1, 2
	playsewithpan SE_W003, SOUND_PAN_TARGET
	delay 24
	createvisualtask sub_80A9058, 5, 0, 1, 8, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -12, 12, 1, 2
	playsewithpan SE_W004, SOUND_PAN_TARGET
	end

Move_ERUPTION: @ 81CC74F
	loadspritegfx ANIM_TAG_WARM_ROCK
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 2, 0, 4, rgb(31, 0, 0)
	waitforvisualfinish
	createvisualtask sub_80D5470, 2
	waitplaysewithpan SE_W153, SOUND_PAN_ATTACKER, 60
	waitforvisualfinish
	createvisualtask sub_80D5470, 2
	waitplaysewithpan SE_W153, SOUND_PAN_ATTACKER, 60
	waitforvisualfinish
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 200, -32, 0, 100, 0
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 30, -32, 16, 90, 1
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 150, -32, 32, 60, 2
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 90, -32, 48, 80, 3
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 110, -32, 64, 50, 0
	createsprite gBattleAnimSpriteTemplate_83D96F8, ANIM_BATTLER_ATTACKER, 40, 60, -32, 80, 70, 1
	delay 22
	createvisualtask sub_80E1864, 5, 5, 8, 60
	createvisualtask sub_80E1864, 5, 4, 8, 60
	loopsewithpan SE_W088, SOUND_PAN_TARGET, 16, 12
	delay 80
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 31, 4, 4, 0, rgb(31, 0, 0)
	end

Move_SKILL_SWAP: @ 81CC81C
	loadspritegfx ANIM_TAG_BLUEGREEN_ORB
	call SetPsychicBackground
	createvisualtask sub_80DC0B0, 3, 1
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_TARGET, 32767, 12, 3, 1
	loopsewithpan SE_W179, SOUND_PAN_ATTACKER, 24, 3
	delay 16
	createvisualtask sub_80DC0B0, 3, 0
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 32767, 12, 3, 1
	waitforvisualfinish
	call BackgroundRestore
	end

Move_IMPRISON: @ 81CC867
	loadspritegfx ANIM_TAG_HOLLOW_ORB
	loadspritegfx ANIM_TAG_X_SIGN
	call SetPsychicBackground
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80DBE00, 5
	delay 8
	loopsewithpan SE_W030, SOUND_PAN_ATTACKER, 8, 5
	waitforvisualfinish
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DA8F4, ANIM_BATTLER_ATTACKER, 5, 0, 40
	createvisualtask sub_80E1864, 5, 4, 1, 10
	playsewithpan SE_W063, SOUND_PAN_ATTACKER
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	call BackgroundRestore
	end

Move_GRUDGE: @ 81CC8AA
	loadspritegfx ANIM_TAG_PURPLE_FLAME
	monbg ANIM_BATTLER_ATTACKER
	monbgprio_29
	fadetobg BG_GHOST
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	waitbgfadein
	createvisualtask sub_80DF1A4, 3
	loopsewithpan SE_W052, SOUND_PAN_ATTACKER, 16, 4
	delay 10
	delay 80
	playsewithpan SE_W171, SOUND_PAN_TARGET
	waitforvisualfinish
	restorebg
	waitbgfadein
	clearmonbg ANIM_BATTLER_ATTACKER
	end

Move_CAMOUFLAGE: @ 81CC8D2
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_28 0
	setalpha 16, 0
	createvisualtask sub_80E2B74, 5, 2, 3, 0, 14
	delay 16
	createvisualtask sub_80DFC24, 2, 4
	playsewithpan SE_W185, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 8
	createvisualtask sub_80E2B74, 5, 2, 0, 0, 0
	waitforvisualfinish
	createvisualtask sub_80DFD24, 2, 1
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	end

Move_TAIL_GLOW: @ 81CC918
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 4, rgb(0, 0, 0)
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DAC10, ANIM_BATTLER_ATTACKER, 66, 0
	delay 18
	loopsewithpan SE_W234, SOUND_PAN_ATTACKER, 16, 6
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 4, 4, 0, rgb(0, 0, 0)
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	delay 1
	end

Move_LUSTER_PURGE: @ 81CC95B
	loadspritegfx ANIM_TAG_WHITE_CIRCLE_OF_LIGHT
	loadspritegfx ANIM_TAG_IMPACT
	fadetobg BG_PSYCHIC
	waitbgfadeout
	createvisualtask sub_812C624, 5
	waitbgfadein
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	playsewithpan SE_W076, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA9E0, ANIM_BATTLER_ATTACKER, 41, 0, 0, 0, 0
	delay 20
	createvisualtask sub_80E2A7C, 5, 5, 2, 0, 16, -1
	createvisualtask AnimTask_BlendSpriteColor, 5, 10267, 2, 0, 16, 0xFFFF
	waitforvisualfinish
	createvisualtask AnimTask_BlendSpriteColor, 5, 10135, 0, 12, 12, rgb(0, 0, 23)
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 2
	createvisualtask sub_812B30C, 5, 215, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80E2A7C, 5, 5, 2, 16, 0, -1
	createvisualtask sub_80E1864, 5, 1, 5, 14
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	call BackgroundRestore
	end

Move_MIST_BALL: @ 81CCA72
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	loadspritegfx ANIM_TAG_WHITE_FEATHER
	delay 0
	playsewithpan SE_W081, SOUND_PAN_ATTACKER
	createsprite gMistBallSpriteTemplate, ANIM_BATTLER_TARGET, 0, 0, 0, 0, 0, 30, 0
	waitforvisualfinish
	playsewithpan SE_W028, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 10, 0
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 0, 1, 1, 1, 32279, 16, 32767, 16
	delay 0
	playsewithpan SE_W114, 0
	createvisualtask AnimTask_LoadMistTiles, 5
	createvisualtask sub_80E2A38, 10, 4, 3, 0, 16, 32767
	delay 8
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 4, 0, 70, 0
	delay 70
	createvisualtask sub_80E2A38, 10, 4, 2, 16, 0, 32767
	end

Move_FEATHER_DANCE: @ 81CCB01
	loadspritegfx ANIM_TAG_WHITE_FEATHER
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_29
	playsewithpan SE_W080, SOUND_PAN_TARGET
	delay 0
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 64, 2, 104, 11304, 32, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 32, 2, 104, 11304, 32, 1
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 0, 2, 104, 11304, 32, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 224, 2, 104, 11304, 32, 1
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 128, 2, 104, 11304, 32, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 192, 2, 104, 11304, 32, 1
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 160, 2, 104, 11304, 32, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA498, ANIM_BATTLER_TARGET, 0, 0, -16, 96, 2, 104, 11304, 32, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_TEETER_DANCE: @ 81CCBD1
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	loadspritegfx ANIM_TAG_DUCK
	createvisualtask AnimTask_TeeterDanceMovement, 5
	createsprite gBattleAnimSpriteTemplate_83D715C, ANIM_BATTLER_ATTACKER, 2, 0, 16, -2
	playsewithpan SE_W298, SOUND_PAN_ATTACKER
	delay 24
	createsprite gBattleAnimSpriteTemplate_83D715C, ANIM_BATTLER_ATTACKER, 2, 0, 0, -2
	playsewithpan SE_W298, SOUND_PAN_ATTACKER
	delay 24
	createsprite gBattleAnimSpriteTemplate_83D715C, ANIM_BATTLER_ATTACKER, 2, 0, -16, -2
	playsewithpan SE_W298, SOUND_PAN_ATTACKER
	delay 24
	createsprite gBattleAnimSpriteTemplate_83D715C, ANIM_BATTLER_ATTACKER, 2, 1, -8, -2
	playsewithpan SE_W298, SOUND_PAN_ATTACKER
	delay 24
	createsprite gBattleAnimSpriteTemplate_83D715C, ANIM_BATTLER_ATTACKER, 2, 2, 8, -2
	playsewithpan SE_W298, SOUND_PAN_ATTACKER
	end

Move_MUD_SPORT: @ 81CCC3C
	loadspritegfx ANIM_TAG_MUD_SAND
	createvisualtask AnimTask_Splash, 2, 0, 6
	delay 24
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -4, -16
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 4, -12
	playsewithpan SE_W091, SOUND_PAN_ATTACKER
	delay 32
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -3, -12
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 5, -14
	playsewithpan SE_W091, SOUND_PAN_ATTACKER
	delay 32
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -5, -18
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 3, -14
	playsewithpan SE_W091, SOUND_PAN_ATTACKER
	delay 16
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 220, 60
	waitplaysewithpan SE_W145B, 0, 15
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 60, 100
	waitplaysewithpan SE_W145B, 0, 25
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 140, 55
	waitplaysewithpan SE_W145B, 0, 14
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 180, 50
	waitplaysewithpan SE_W145B, 0, 10
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 20, 90
	waitplaysewithpan SE_W145B, 0, 22
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 90, 90
	waitplaysewithpan SE_W145B, 0, 22
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 160, 60
	waitplaysewithpan SE_W145B, 0, 15
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 30, 90
	waitplaysewithpan SE_W145B, 0, 22
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 120, 60
	waitplaysewithpan SE_W145B, 0, 15
	delay 2
	createsprite gMudSportDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 200, 40
	waitplaysewithpan SE_W145B, 0, 10
	end

Move_NEEDLE_ARM: @ 81CCD73
	loadspritegfx ANIM_TAG_GREEN_SPIKE
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loopsewithpan SE_W030, SOUND_PAN_TARGET, 2, 16
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 0, -32, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 22, -22, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 30, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 20, 20, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 0, 28, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, -19, 19, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, -27, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, -18, -18, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 0, -25, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 17, -17, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 23, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 0, 16, 16, 16
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 18, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 8, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, 0, -24, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, 17, -17, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, 24, 0, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, 17, 17, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, 0, 24, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, -17, 17, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, -24, 0, 10
	createsprite gBattleAnimSpriteTemplate_83D6994, ANIM_BATTLER_TARGET, 2, 1, 1, -17, -17, 10
	end

Move_SLACK_OFF: @ 81CCF23
	loadspritegfx ANIM_TAG_BLUE_STAR
	createvisualtask AnimTask_SlackOffSquish, 2, 0
	playsewithpan SE_W281, SOUND_PAN_ATTACKER
	waitforvisualfinish
	call Unknown_81D5EF5
	waitforvisualfinish
	end

Move_CRUSH_CLAW: @ 81CCF3B
	loadspritegfx ANIM_TAG_BLUE_LIGHT_WALL
	loadspritegfx ANIM_TAG_CLAW_SLASH
	loadspritegfx ANIM_TAG_TORN_METAL
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 18, 1
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, -10, 0
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, 10, 0
	playsewithpan SE_W013, SOUND_PAN_TARGET
	delay 12
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, -10, 1
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, 10, 1
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_TARGET
	end

Move_AROMATHERAPY: @ 81CCFAB
	playsewithpan SE_W080, 0
	loadspritegfx ANIM_TAG_FLOWER
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_SPARKLE_2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 1, 0, 0, 7, rgb(13, 31, 12)
	delay 1
	monbg ANIM_BATTLER_ATTACKER
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 0, 24, 16, 0, 2, 2, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 66, 64, 24, 0, 3, 1, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D68D0, ANIM_BATTLER_ATTACKER, 0, 16, 24, 0, 2, 1, 0, 0
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 66, 48, 12, 0, 4, 3, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 0, 100, 16, 0, 3, 2, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 0, 74, 24, 180, 3, 2, 0, 0
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 66, 80, 30, 0, 4, 1, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D68B8, ANIM_BATTLER_ATTACKER, 0, 128, 12, 0, 3, 3, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D68D0, ANIM_BATTLER_ATTACKER, 0, 90, 16, 0, 2, 1, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 1, 0, 7, 0, rgb(13, 31, 12)
	delay 1
	playsewithpan SE_W287, SOUND_PAN_ATTACKER
	createvisualtask sub_81300A4, 2, 1
	waitforvisualfinish
	playsewithpan SE_W234, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6CA0, ANIM_BATTLER_ATTACKER, 16, -15, 0, 0, 0, 32, 60, 1
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D6CA0, ANIM_BATTLER_ATTACKER, 16, 12, -5, 0, 0, 32, 60, 1
	waitforvisualfinish
	playsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 43, 3, 10, 0, rgb(13, 31, 12)
	createsprite gBattleAnimSpriteTemplate_83D7974, ANIM_BATTLER_ATTACKER, 16, 0, 0, 0, 1
	waitforvisualfinish
	end

Move_FAKE_TEARS: @ 81CD10D
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	loadspritegfx ANIM_TAG_THOUGHT_BUBBLE
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createvisualtask AnimTask_BlendSpriteColor, 5, 10155, 0, 4, 4, rgb(12, 11, 31)
	waitforvisualfinish
	createvisualtask sub_812E568, 5, 0, 2, 1
	loopsewithpan SE_W039, SOUND_PAN_ATTACKER, 12, 4
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 0
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 1
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 2
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 3
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 0
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 1
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 2
	createsprite gBattleAnimSpriteTemplate_83DB238, ANIM_BATTLER_ATTACKER, 2, 0, 3
	waitforvisualfinish
	end

Move_AIR_CUTTER: @ 81CD19D
	loadspritegfx ANIM_TAG_AIR_WAVE
	loadspritegfx ANIM_TAG_CUT
	loadspritegfx ANIM_TAG_IMPACT
	delay 0
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	delay 0
	createvisualtask sub_80CFB04, 2, 32, -24, 1536, 2, 128
	waitforvisualfinish
	playsewithpan SE_W015, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6B40, ANIM_BATTLER_ATTACKER, 2, 40, -32, 0, 2
	delay 5
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 2, 0, 8, 1
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	end

Move_ODOR_SLEUTH: @ 81CD1FF
	monbg ANIM_BATTLER_TARGET
	createvisualtask sub_81316F8, 5
	delay 24
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 4
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	delay 6
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, 4
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 3, 1, -1, 16, -1, 0
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	end

Move_GRASS_WHISTLE: @ 81CD249
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 4, rgb(18, 31, 12)
	waitforvisualfinish
	createvisualtask sub_80CEA20, 2
	waitforvisualfinish
	panse_1B SE_W320, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 7, 1, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 6, 1, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 1, 1, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 3, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 5, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 6, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 2, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 1, 1, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D7114, ANIM_BATTLER_TARGET, 2, 5, 1, 0
	delay 4
	waitforvisualfinish
	createvisualtask sub_80CEAD8, 2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 4, 4, 0, rgb(18, 31, 12)
	waitforvisualfinish
	end

Move_TICKLE: @ 81CD33C
	loadspritegfx ANIM_TAG_EYE_SPARKLE
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 0, 0, 16, rgb(0, 0, 0)
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, -16, -8
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, 16, -8
	playsewithpan SE_W197, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 0, 16, 0, rgb(0, 0, 0)
	waitforvisualfinish
	delay 20
	createvisualtask AnimTask_SwayMon, 3, 0, 6, 1280, 3, 0
	delay 12
	createvisualtask sub_812E568, 3, 1, 6, 2
	loopsewithpan SE_W039, SOUND_PAN_TARGET, 8, 8
	waitforvisualfinish
	end

Move_WATER_SPOUT: @ 81CD3A8
	loadspritegfx ANIM_TAG_GLOWY_BLUE_ORB
	loadspritegfx ANIM_TAG_WATER_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask sub_80D40F4, 5
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	delay 44
	playsewithpan SE_W291, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 16
	createvisualtask sub_80D45D8, 5
	playsewithpan SE_W057, SOUND_PAN_TARGET
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SHADOW_PUNCH: @ 81CD3D6
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	fadetobg BG_GHOST
	waitbgfadein
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 9, 8
	createvisualtask sub_807A69C, 2, 0, 13
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 8, 1, 0
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	restorebg
	waitbgfadein
	end

Move_EXTRASENSORY: @ 81CD431
	call SetPsychicBackground
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 891, 12, 1, 1
	createvisualtask sub_80DC2D4, 5, 0
	playsewithpan SE_W020, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_BlendMonInAndOut, 5, ANIM_BATTLER_ATTACKER, 891, 12, 1, 1
	createvisualtask sub_80DC2D4, 5, 1
	playsewithpan SE_W020, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80DC4F4, 5, 0
	createvisualtask sub_80DC2D4, 5, 2
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	call BackgroundRestore
	end

Move_AERIAL_ACE: @ 81CD499
	loadspritegfx ANIM_TAG_CUT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 24, 6, 1, 5
	createvisualtask sub_80E2DD8, 2, 0, 4, 7, 3
	createsprite gCuttingSliceSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 40, -32, 0
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	delay 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 10, 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 10, 0, 0
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_IRON_DEFENSE: @ 81CD503
	loopsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 1, 8, 2, -1, 14, -1, 0
	waitforvisualfinish
	end

Move_BLOCK: @ 81CD52D
	loadspritegfx ANIM_TAG_X_SIGN
	createsprite gBattleAnimSpriteTemplate_8402A6C, ANIM_BATTLER_TARGET, 66
	playsewithpan SE_W207, SOUND_PAN_TARGET
	end

Move_HOWL: @ 81CD53C
	loadspritegfx ANIM_TAG_NOISE_LINE
	createvisualtask sub_812F724, 2, 0
	delay 12
	call _81CE35E
	createvisualtask sub_812B18C, 2, 0, 3
	waitforvisualfinish
	delay 30
	end

Move_BULK_UP: @ 81CD55E
	loadspritegfx ANIM_TAG_BREATH
	createvisualtask sub_80D08C8, 2
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7764, ANIM_BATTLER_ATTACKER, 2
	loopsewithpan SE_W207, SOUND_PAN_ATTACKER, 4, 2
	waitforvisualfinish
	end

Move_COVET: @ 81CD57C
	loadspritegfx ANIM_TAG_MAGENTA_HEART
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask sub_812E568, 5, 0, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 0, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, -20, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 20, 20
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	loopsewithpan SE_W146, SOUND_PAN_TARGET, 4, 3
	end

Move_VOLT_TACKLE: @ 81CD5D9
	loadspritegfx ANIM_TAG_SPARK
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	loadspritegfx ANIM_TAG_ELECTRICITY
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	createvisualtask sub_80E2A38, 10, 1, 0, 0, 8, 0
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D9AB4, ANIM_BATTLER_ATTACKER, 1
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	delay 8
	createvisualtask sub_80D700C, 5, 0
	playsewithpan SE_W085, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80D700C, 5, 1
	playsewithpan SE_W085, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80D700C, 5, 2
	playsewithpan SE_W085, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80D700C, 5, 3
	playsewithpan SE_W085, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80D700C, 5, 4
	playsewithpan SE_W085, SOUND_PAN_ATTACKER
	delay 8
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 10, 0, 18, 1
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 1, 16, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 1, -16, -16
	delay 8
	createvisualtask sub_80D6E9C, 5
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 3, 0, 9, 1
	playsewithpan SE_W085B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 0, 16, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9A9C, ANIM_BATTLER_ATTACKER, 2, 0, -16, -16
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1, 0, 8, 0, 0
	waitforvisualfinish
	end

Move_WATER_SPORT: @ 81CD6D1
	loadspritegfx ANIM_TAG_GLOWY_BLUE_ORB
	createvisualtask sub_80D48F4, 5
	delay 8
	playsewithpan SE_W057, SOUND_PAN_ATTACKER
	delay 44
	playsewithpan SE_W057, SOUND_PAN_ATTACKER
	delay 44
	playsewithpan SE_W057, SOUND_PAN_ATTACKER
	delay 44
	panse_1B SE_W057, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	end

Move_CALM_MIND: @ 81CD6F7
	loadspritegfx ANIM_TAG_THIN_RING
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E2A7C, 5, 0, 0, 0, 16, 0
	waitforvisualfinish
	createvisualtask sub_80E3BDC, 5, 1
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D795C, ANIM_BATTLER_ATTACKER, 40, 0, 0, 0, 0
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	delay 14
	createsprite gBattleAnimSpriteTemplate_83D795C, ANIM_BATTLER_ATTACKER, 40, 0, 0, 0, 0
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	delay 14
	createsprite gBattleAnimSpriteTemplate_83D795C, ANIM_BATTLER_ATTACKER, 40, 0, 0, 0, 0
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80E3BDC, 5, 0
	waitforvisualfinish
	createvisualtask sub_80E2A7C, 5, 0, 0, 16, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	end

Move_LEAF_BLADE: @ 81CD775
	loadspritegfx ANIM_TAG_LEAF
	loadspritegfx ANIM_TAG_CROSS_IMPACT
	createvisualtask sub_80CBDF4, 5
	delay 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	playsewithpan SE_W015, SOUND_PAN_TARGET
	delay 50
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	playsewithpan SE_W015, SOUND_PAN_TARGET
	delay 50
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	playsewithpan SE_W015, SOUND_PAN_TARGET
	waitforvisualfinish
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	delay 12
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 8, 0, 18, 1
	createsprite gBattleAnimSpriteTemplate_83DB520, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 36
	playsewithpan SE_W043, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_DRAGON_DANCE: @ 81CD7F8
	loadspritegfx ANIM_TAG_HOLLOW_ORB
	monbg ANIM_BATTLER_ATTACKER
	monbgprio_28 0
	delay 1
	createvisualtask sub_80DF924, 5
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	delay 8
	createvisualtask sub_80798AC, 5, 10249, 19456, 14, 0, 3
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 0
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 43
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 85
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 128
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 170
	createsprite gBattleAnimSpriteTemplate_83DB0E8, ANIM_BATTLER_ATTACKER, 2, 213
	delay 30
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	delay 30
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	end

Move_SHOCK_WAVE: @ 81CD867
	loadspritegfx ANIM_TAG_ELECTRIC_ORBS
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	loadspritegfx ANIM_TAG_SPARK
	loadspritegfx ANIM_TAG_LIGHTNING
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 4, rgb(0, 0, 0)
	waitforvisualfinish
	createvisualtask sub_80D6B3C, 2, 0, 20, 0, 2
	playsewithpan SE_W268, SOUND_PAN_ATTACKER
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D9B28, ANIM_BATTLER_ATTACKER, 2
	delay 30
	createvisualtask sub_80D72DC, 5
	delay 12
	waitforvisualfinish
	createvisualtask sub_80D759C, 5
	playsewithpan SE_W161B, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 6, 18, 1
	createvisualtask sub_80E2A38, 5, 1, 3, 16, 0, 32767
	createvisualtask sub_80E2A38, 5, 4, 0, 16, 16, 0
	delay 4
	createvisualtask sub_80E2A38, 5, 4, 0, 0, 0, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	end

Move_HARDEN: @ 81CD909
	loopsewithpan SE_W231, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 0, 0, 0
	waitforvisualfinish
	end

Move_BELLY_DRUM: @ 81CD91E
	loadspritegfx ANIM_TAG_MUSIC_NOTES
	loadspritegfx ANIM_TAG_PURPLE_HAND_OUTLINE
	createvisualtask sub_80CEA20, 2
	waitforvisualfinish
	call _81CD9EB
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0, 0
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	delay 15
	call _81CD9D0
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 1, 1, 1, 0
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	delay 15
	call _81CD9EB
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 0, 3, 3, 128
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	delay 7
	call _81CD9D0
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 128
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	delay 7
	call _81CD9EB
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 0, 1, 1, 0
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	delay 7
	call _81CD9D0
	createsprite gBattleAnimSpriteTemplate_83D71A8, ANIM_BATTLER_ATTACKER, 2, 1, 0, 3, 0
	playsewithpan SE_W187, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask sub_80CEAD8, 2
	waitforvisualfinish
	end
_81CD9D0:
	createsprite gBattleAnimSpriteTemplate_83D7174, ANIM_BATTLER_ATTACKER, 3, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 0, 8, 2, 1
	return
_81CD9EB:
	createsprite gBattleAnimSpriteTemplate_83D7174, ANIM_BATTLER_ATTACKER, 3, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 0, 8, 2, 1
	return

Move_MIND_READER: @ 81CDA06
	loadspritegfx ANIM_TAG_TEAL_ALERT
	loadspritegfx ANIM_TAG_OPENING_EYE
	loadspritegfx ANIM_TAG_ROUND_WHITE_HALO
	monbg 4
	playsewithpan SE_W109, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_84021DC, ANIM_BATTLER_ATTACKER, 5, 0, 0, 1, 0
	createsprite gBattleAnimSpriteTemplate_84021F4, ANIM_BATTLER_ATTACKER, 5
	delay 40
	playsewithpan SE_W043, SOUND_PAN_TARGET
	createvisualtask sub_80E1F8C, 2, 1, 1, 2, 0, 10, 0
	call _81CDA4D
	waitforvisualfinish
	clearmonbg 4
	end
_81CDA4D:
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 70, 0, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 40, 40, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 10, -60, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -50, -40, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -40, 40, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 50, -50, 6
	delay 2
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 50, -30, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 60, 10, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 0, 60, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 0, -40, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -60, 20, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -60, -30, 6
	delay 2
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -50, 50, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -60, 20, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, -40, -40, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 20, -60, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 50, -50, 6
	createsprite gBattleAnimSpriteTemplate_840220C, ANIM_BATTLER_ATTACKER, 4, 35, 40, 6
	delay 2
	return

Move_ICE_PUNCH: @ 81CDB3E
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 7, rgb(0, 0, 0)
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 9, 32588
	delay 20
	playsewithpan SE_W081, SOUND_PAN_TARGET
	createsprite gSmallIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0
	createsprite gSmallIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 64
	createsprite gSmallIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 128
	createsprite gSmallIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 192
	delay 5
	createsprite gLargeIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 32
	createsprite gLargeIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 96
	createsprite gLargeIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 160
	createsprite gLargeIcePunchCrystalSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 224
	delay 17
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 4, 0, -10, 8, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, -10, 1, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 3, 1
	waitforvisualfinish
	delay 15
	call Effect_LightIceDamage
	delay 5
	createvisualtask sub_80E2A38, 10, 4, 2, 9, 0, 32588
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 7, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_REST: @ 81CDC29
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	loadspritegfx ANIM_TAG_LETTER_Z
	createsprite gBattleAnimSpriteTemplate_83D6D94, ANIM_BATTLER_ATTACKER, 2, 4, -10, 16, 0, 0
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D6D94, ANIM_BATTLER_ATTACKER, 2, 4, -10, 16, 0, 0
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D6D94, ANIM_BATTLER_ATTACKER, 2, 4, -10, 16, 0, 0
	waitforvisualfinish
	end

Move_CONFUSION: @ 81CDC69
	monbg ANIM_BATTLER_DEF_PARTNER
	call SetPsychicBackground
	setalpha 8, 8
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 10, 1
	createvisualtask sub_80E1F8C, 2, 2, 0, 2, 0, 8, 32767
	waitforvisualfinish
	playsewithpan SE_W048, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -4, -4, 15, ANIM_BATTLER_TARGET, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	delay 1
	call BackgroundRestore
	end

Move_PSYCHIC: @ 81CDCCA
	monbg ANIM_BATTLER_DEF_PARTNER
	call SetPsychicBackground
	setalpha 8, 8
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 10, 1
	createvisualtask sub_80E1F8C, 2, 2, 0, 2, 0, 8, 767
	waitforvisualfinish
	loopsewithpan SE_W048, SOUND_PAN_TARGET, 10, 3
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -6, -6, 15, ANIM_BATTLER_TARGET, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	delay 1
	call BackgroundRestore
	end

Move_FUTURE_SIGHT: @ 81CDD2D
	goto _81CDD3B
_81CDD32:
	waitforvisualfinish
	delay 1
	call BackgroundRestore
	end
_81CDD3B:
	monbg ANIM_BATTLER_ATK_PARTNER
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	setalpha 8, 8
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	createvisualtask sub_80E1F8C, 2, 2, 0, 2, 0, 8, 32767
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -4, -4, 15, ANIM_BATTLER_ATTACKER, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	goto _81CDD32

Unknown_81CDD7A: @ 81CDD7A
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	setalpha 8, 8
	playsewithpan SE_W048, SOUND_PAN_TARGET
	waitplaysewithpan SE_W048, SOUND_PAN_TARGET, 8
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 4, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 15, ANIM_BATTLER_TARGET, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 4, 0, 24, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81CDD32

Move_THUNDER: @ 81CDDCE
	loadspritegfx ANIM_TAG_LIGHTNING
	fadetobg BG_THUNDER
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -256, 0, 1, -1
	waitbgfadein
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 16, rgb(0, 0, 0)
	delay 16
	createvisualtask sub_80E2324, 2, 257, 257, 257
	playsewithpan SE_W086, SOUND_PAN_TARGET
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 16, -36
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 16, -20
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 16, 12
	delay 20
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 6, -16, -32
	playsewithpan SE_W086, SOUND_PAN_TARGET
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 6, -16, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 6, -16, 16
	playsewithpan SE_W086, SOUND_PAN_TARGET
	delay 5
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 24, -32
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 24, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 24, 16
	delay 30
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 5
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, -32
	playsewithpan SE_W161B, SOUND_PAN_TARGET
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, 16
	delay 10
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createvisualtask sub_80D60B4, 2, 30, 3, 1, 0
	delay 2
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_TARGET, 2, 1, 2, 16, 0, rgb(0, 0, 0)
	waitforvisualfinish
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end

Move_THUNDER_PUNCH: @ 81CDF28
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_LIGHTNING
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 16, rgb(0, 0, 0)
	waitforvisualfinish
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 8, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	delay 1
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, -48
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_ATTACKER, 2, 0, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_ATTACKER, 2, 0, 16
	delay 1
	playsewithpan SE_W161B, SOUND_PAN_TARGET
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 15, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 16, 0, rgb(0, 0, 0)
	delay 20
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_SACRED_FIRE: @ 81CDFF1
	loadspritegfx ANIM_TAG_FIRE
	loadspritegfx ANIM_TAG_FIRE_PLUME
	loopsewithpan SE_W221, SOUND_PAN_ATTACKER, 7, 5
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -32, 0, 50, 5, -2, 0
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, -20, -10, 50, 5, -1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 0, -16, 50, 5, 0, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 20, -10, 50, 5, 1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 32, 0, 50, 5, 2, 0
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 20, 10, 50, 5, 1, 1
	delay 1
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 0, 16, 50, 5, 0, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -20, 10, 50, 5, -1, 1
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	waitforvisualfinish
	playsewithpan SE_W221B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9508, ANIM_BATTLER_TARGET, 2, -16, 0, 70, 16, 0, 1
	delay 10
	playsewithpan SE_W221B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9508, ANIM_BATTLER_TARGET, 2, 0, 0, 70, 16, 0, 1
	delay 10
	playsewithpan SE_W221B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9508, ANIM_BATTLER_TARGET, 2, 16, 0, 80, 16, 0, 1
	delay 1
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	waitforvisualfinish
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 1
	playsewithpan SE_W172B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, 0
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 0, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 2, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 1, -2
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 3, 1
	waitforvisualfinish
	end

Move_SCRATCH: @ 81CE1D8
	loadspritegfx ANIM_TAG_SCRATCH
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W010, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_8402180, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end

Move_DRAGON_BREATH: @ 81CE20A
	loadspritegfx ANIM_TAG_SMALL_EMBER
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	loopsewithpan SE_W172, SOUND_PAN_ATTACKER, 7, 7
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createvisualtask sub_80E2A38, 10, 4, 1, 0, 9, 31
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 21, 1
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DB044, ANIM_BATTLER_TARGET, 2, 0, 0, 0, 0, 20
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 4, 1, 9, 0, 31
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_ROAR: @ 81CE31E
	loadspritegfx ANIM_TAG_NOISE_LINE
	monbg ANIM_BATTLER_ATTACKER
	monbgprio_28 0
	setalpha 8, 8
	createvisualtask sub_812B18C, 2, 0, 2
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 10, ANIM_BATTLER_ATTACKER, 1
	call _81CE35E
	delay 20
	createvisualtask sub_80A8A80, 5, 1, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	waitforvisualfinish
	delay 20
	end
_81CE35E:
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, -8, 0
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, 0, 2
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, 8, 1
	delay 15
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, -8, 0
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, 0, 2
	createsprite gBattleAnimSpriteTemplate_8402934, ANIM_BATTLER_ATTACKER, 2, 24, 8, 1
	return

Move_GROWL: @ 81CE3AF
	loadspritegfx ANIM_TAG_NOISE_LINE
	createvisualtask sub_812B18C, 2, 0, 255
	call _81CE35E
	delay 10
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 9, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 1, 0, 9, 1
	waitforvisualfinish
	delay 20
	end

Move_SNORE: @ 81CE3EA
	loadspritegfx ANIM_TAG_SNORE_Z
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 8, 8
	call _81CE403
	delay 30
	call _81CE403
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end
_81CE403:
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -7, -7, 7, ANIM_BATTLER_ATTACKER, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 7, 1
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, 6, 1, 14, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D77F8, ANIM_BATTLER_ATTACKER, 2, 0, 0, -42, -38, 24, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D77F8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0, -42, 24, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D77F8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 42, -38, 24, 0, 0
	return

Move_LIGHT_SCREEN: @ 81CE47A
	loadspritegfx ANIM_TAG_SPARKLE_3
	loadspritegfx ANIM_TAG_GREEN_LIGHT_WALL
	setalpha 0, 16
	waitplaysewithpan SE_W115, SOUND_PAN_ATTACKER, 15
	createsprite gBattleAnimSpriteTemplate_83DA6A8, ANIM_BATTLER_ATTACKER, 1, 40, 0, 10166
	delay 10
	call _81CE4A1
	waitforvisualfinish
	delay 1
	blendoff
	end
_81CE4A1:
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 23, 0, 0, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 31, -8, 0, 1
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 30, 20, 0, 1
	delay 7
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 10, -15, 0, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 20, 10, 0, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83DA76C, ANIM_BATTLER_ATTACKER, 2, 10, 18, 0, 1
	return

Move_MIRROR_COAT: @ 81CE506
	loadspritegfx ANIM_TAG_SPARKLE_3
	loadspritegfx ANIM_TAG_RED_LIGHT_WALL
	setalpha 0, 16
	createsprite gBattleAnimSpriteTemplate_83DA6D8, ANIM_BATTLER_ATTACKER, 1, 40, 0, 10168
	delay 10
	playsewithpan SE_W115, SOUND_PAN_ATTACKER
	call _81CE4A1
	waitforvisualfinish
	delay 1
	blendoff
	end

Move_REFLECT: @ 81CE52C
	loadspritegfx ANIM_TAG_SPARKLE_4
	loadspritegfx ANIM_TAG_BLUE_LIGHT_WALL
	setalpha 0, 16
	waitplaysewithpan SE_W115, SOUND_PAN_ATTACKER, 15
	createsprite gBattleAnimSpriteTemplate_83DA6C0, ANIM_BATTLER_ATTACKER, 1, 40, 0, 10167
	delay 20
	createsprite gBattleAnimSpriteTemplate_83DA73C, ANIM_BATTLER_ATTACKER, 2, 30, 0, 0, 1
	delay 7
	createsprite gBattleAnimSpriteTemplate_83DA73C, ANIM_BATTLER_ATTACKER, 2, 19, -12, 0, 1
	delay 7
	createsprite gBattleAnimSpriteTemplate_83DA73C, ANIM_BATTLER_ATTACKER, 2, 10, 20, 0, 1
	waitforvisualfinish
	delay 1
	blendoff
	end

Move_BARRIER: @ 81CE57F
	loadspritegfx ANIM_TAG_GRAY_LIGHT_WALL
	setalpha 0, 16
	waitplaysewithpan SE_W112, SOUND_PAN_ATTACKER, 15
	createsprite gBattleAnimSpriteTemplate_83DA6F0, ANIM_BATTLER_ATTACKER, 3, 40, 0, 10169
	waitforvisualfinish
	delay 1
	blendoff
	end

Move_BUBBLE: @ 81CE59C
	loadspritegfx ANIM_TAG_BUBBLE
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 15, -15, 10, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 35, 37, 40, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 10, -37, 30, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 30, 10, 15, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 20, 33, 20, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D9178, ANIM_BATTLER_ATTACKER, 2, 18, 0, 25, -30, 10, 128, 100
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W145B, SOUND_PAN_TARGET, 100
	waitforvisualfinish
	call WaterBubbleEffect2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_SMOG: @ 81CE672
	loadspritegfx ANIM_TAG_PURPLE_GAS_CLOUD
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_29
	setalpha 12, 8
	loopsewithpan SE_W054, SOUND_PAN_TARGET, 17, 10
	call _81CE6D7
	call _81CE6D7
	call _81CE6D7
	call _81CE6D7
	call _81CE6D7
	call _81CE6D7
	call _81CE6D7
	delay 120
	loopsewithpan SE_W092, SOUND_PAN_TARGET, 18, 2
	createvisualtask sub_80E1F8C, 2, 4, 2, 2, 0, 12, 26650
	delay 10
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 15, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81CE6D7:
	createsprite gSmogCloudSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -24, 48, 240, 1, 0
	delay 7
	return

Move_FAINT_ATTACK: @ 81CE6ED
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_ATTACKER
	fadetobg BG_DARK
	waitbgfadein
	delay 0
	playsewithpan SE_W185, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 18, 6, 1, 3
	createvisualtask sub_80DFC24, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	invisible ANIM_BATTLER_ATTACKER
	delay 1
	createvisualtask sub_80E4300, 2
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	delay 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 9, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 1
	setarg ARG_RET_ID, 4096
	delay 32
	createvisualtask sub_80DFDC0, 2
	monbg ANIM_BATTLER_ATTACKER
	createvisualtask sub_80DFD24, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	restorebg
	waitbgfadein
	end

Move_SAND_ATTACK: @ 81CE774
	loadspritegfx ANIM_TAG_MUD_SAND
	monbg ANIM_BATTLER_ATK_PARTNER
	monbgprio_28 0
	setalpha 12, 8
	playsewithpan SE_W028, SOUND_PAN_ATTACKER
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -10, 0, 0, 3
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 2
	call Move_SAND_ATTACK_CreateDirtSpray
	call Move_SAND_ATTACK_CreateDirtSpray
	call Move_SAND_ATTACK_CreateDirtSpray
	call Move_SAND_ATTACK_CreateDirtSpray
	call Move_SAND_ATTACK_CreateDirtSpray
	call Move_SAND_ATTACK_CreateDirtSpray
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end
Move_SAND_ATTACK_CreateDirtSpray:
	createsprite gSandAttackDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 0, 0
	createsprite gSandAttackDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 10, 10
	createsprite gSandAttackDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, -10, -10
	createsprite gSandAttackDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 20, 5
	createsprite gSandAttackDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, -20, -5
	delay 2
	return

Move_MUD_SLAP: @ 81CE81C
	loadspritegfx ANIM_TAG_MUD_SAND
	playsewithpan SE_W028, SOUND_PAN_ATTACKER
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -10, 0, 0, 3
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 2
	call Move_MUD_SLAP_CreateMudSpray
	call Move_MUD_SLAP_CreateMudSpray
	call Move_MUD_SLAP_CreateMudSpray
	call Move_MUD_SLAP_CreateMudSpray
	call Move_MUD_SLAP_CreateMudSpray
	call Move_MUD_SLAP_CreateMudSpray
	waitforvisualfinish
	end
Move_MUD_SLAP_CreateMudSpray:
	createsprite gMudSlapDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 0, 0
	createsprite gMudSlapDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 10, 5
	createsprite gMudSlapDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, -10, -5
	createsprite gMudSlapDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, 20, 10
	createsprite gMudSlapDirtSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 15, 20, -20, -10
	delay 2
	return

Move_DRAGON_RAGE: @ 81CE8BA
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loadspritegfx ANIM_TAG_FIRE_PLUME
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 40, 1
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 15, 0, 0, 4
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DB0D0, ANIM_BATTLER_TARGET, 2, 30, 15, 0, 10, 10
	waitforvisualfinish
	loopsewithpan SE_W172B, SOUND_PAN_TARGET, 11, 3
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 3, 25, 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 66, 1, 5, 0
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 66, 1, -10, -15
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 2, 1, 0, 25
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 66, 1, 15, 5
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 66, 1, -25, 0
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 2, 1, 30, 30
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 2, 1, -27, 25
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB078, ANIM_BATTLER_TARGET, 66, 1, 0, 8
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_TARGET, 66, 0, 0, 4
	waitforvisualfinish
	end

Move_RAIN_DANCE: @ 81CE997
	loadspritegfx ANIM_TAG_RAIN_DROPS
	playsewithpan SE_W240, SOUND_PAN_ATTACKER
	createvisualtask sub_80E2A38, 10, 1921, 2, 0, 4, 0
	waitforvisualfinish
	createvisualtask CreateAnimRaindrops, 2, 0, 3, 120
	createvisualtask CreateAnimRaindrops, 2, 0, 3, 120
	delay 120
	delay 30
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1921, 2, 4, 0, 0
	waitforvisualfinish
	end

Move_BITE: @ 81CE9E2
	loadspritegfx ANIM_TAG_SHARP_TEETH
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W044, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, 0, -32, 0, 0, 819, 10
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, 0, 32, 4, 0, -819, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 4, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 1
	end

Move_CRUNCH: @ 81CEA40
	loadspritegfx ANIM_TAG_SHARP_TEETH
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	fadetobg BG_DARK
	waitbgfadein
	setalpha 12, 8
	playsewithpan SE_W044, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, -32, -32, 1, 819, 819, 10
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, 32, 32, 5, -819, -819, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -8, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 7, 5, 2
	waitforvisualfinish
	playsewithpan SE_W044, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, 32, -32, 7, -819, 819, 10
	createsprite gBattleAnimSpriteTemplate_83DB1D0, ANIM_BATTLER_ATTACKER, 2, -32, 32, 3, 819, -819, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 8, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 8, 4, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	delay 1
	restorebg
	waitbgfadein
	end

Move_CLAMP: @ 81CEAF0
	loadspritegfx ANIM_TAG_CLAMP
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W011, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB1E8, ANIM_BATTLER_ATTACKER, 2, -32, 0, 2, 819, 0, 10
	createsprite gBattleAnimSpriteTemplate_83DB1E8, ANIM_BATTLER_ATTACKER, 2, 32, 0, 6, -819, 0, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end

Move_ICE_BEAM: @ 81CEB4D
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 7, rgb(0, 0, 0)
	waitforvisualfinish
	createsoundtask sub_812B058, 183, -64, 63, 4, 4, 0, 10
	createsprite gIceBeamOuterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 12, 0, 12, 20
	createsprite gIceBeamOuterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -12, 0, -12, 20
	delay 1
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, -31, 0, 7, rgb(0, 20, 31)
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 25, 1
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	call _81CEC4E
	createsprite IceBeamCenterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 0, 0, 0, 11
	delay 1
	createsprite IceBeamCenterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 0, 0, 0, 11
	waitforvisualfinish
	delay 20
	call Effect_LightIceDamage
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 5, 7, 0, rgb(0, 20, 31)
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 7, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end
_81CEC4E:
	createsprite gIceBeamOuterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 12, 0, 12, 20
	createsprite gIceBeamOuterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -12, 0, -12, 20
	createsprite IceBeamCenterParticleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 0, 0, 0, 11
	delay 1
	return

Move_WITHDRAW: @ 81CEC84
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	createvisualtask sub_80CF4D8, 5
	waitforvisualfinish
	end

Move_AURORA_BEAM: @ 81CEC91
	loadspritegfx ANIM_TAG_RAINBOW_RINGS
	fadetobg BG_AURORABEAM
	waitbgfadein
	playsewithpan SE_W062, SOUND_PAN_ATTACKER
	setarg ARG_RET_ID, 0
	createvisualtask AnimTask_RotateMonPalette1, 10, 130
	call _81CED18
	createvisualtask AnimTask_ShakeMon2, 5, 1, 1, 0, 17, 1
	call _81CED18
	call _81CED18
	call _81CED18
	setarg ARG_RET_ID, -1
	createsoundtask sub_812B058, 183, -64, 63, 3, 6, 0, 10
	createvisualtask AnimTask_ShakeMon2, 5, 1, 2, 0, 40, 1
	call _81CED18
	call _81CED18
	call _81CED18
	call _81CED18
	call _81CED18
	call _81CED18
	waitforvisualfinish
	restorebg
	waitbgfadein
	end
_81CED18:
	createsprite RainbowRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 17
	delay 1
	createsprite RainbowRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 17
	delay 1
	createsprite RainbowRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 17
	delay 1
	createsprite RainbowRingSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 17
	delay 1
	return

Move_SOLAR_BEAM: @ 81CED65
	loadspritegfx ANIM_TAG_ORBS
	choosetwoturnanim _81CED73, _81CEE70
_81CED71:
	waitforvisualfinish
	end
_81CED73:
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	createvisualtask sub_80E1F8C, 2, 2, 1, 4, 0, 11, 12287
	playsewithpan SE_W025, SOUND_PAN_ATTACKER
	call _81CED9D
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	goto _81CED71
_81CED9D:
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 40, 40, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -40, -40, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 0, 40, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 0, -40, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 40, -20, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 40, 20, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -40, -20, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -40, 20, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -20, 30, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 20, -30, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -20, -30, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 20, 30, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -40, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 40, 0, 16
	delay 2
	return
_81CEE70:
	call Unknown_81D6233
	panse_1B SE_W076, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createvisualtask sub_80CA928, 5
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 1
	delay 4
	createvisualtask sub_80E2A38, 10, 4, 1, 0, 10, 1017
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 2
	delay 4
	createvisualtask AnimTask_ShakeMon2, 5, 1, 2, 0, 65, 1
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 3
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 4
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 5
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 6
	delay 4
	call _81CEF42
	call _81CEF42
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 4, 1, 10, 0, 1017
	call Unknown_81D626D
	goto _81CED71
_81CEF42:
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 0
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 2
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 3
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 4
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 5
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D6304, ANIM_BATTLER_TARGET, 3, 15, 0, 20, 6
	delay 4
	return

Move_BLIZZARD: @ 81CEFBA
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	monbg ANIM_BATTLER_DEF_PARTNER
	createvisualtask sub_80E3B4C, 2
	jumpargeq 7, 1, _81CF13F
	fadetobg BG_HIGHSPEED_OPPONENT
_81CEFD0:
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 0, 1, -1
	waitbgfadein
	waitforvisualfinish
	panse_1B SE_W059, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	call _81CF00A
	call _81CF00A
	playsewithpan SE_W059B, SOUND_PAN_TARGET
	waitforvisualfinish
	call Effect_HeavyIceDamage
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 20
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81CF00A:
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -10, 0, -10, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 0, 0, 0, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -15, 0, -15, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, -10, 0, -10, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -5, 0, -5, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 10, 0, 10, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -10, 0, -10, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, -20, 0, -20, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -20, 0, -20, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 15, 0, 15, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -15, 0, -15, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, -20, 0, -20, 80, 0, 0, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate1, ANIM_BATTLER_ATTACKER, 40, 0, -25, 0, -25, 72, 1
	createsprite gLargeSnowballSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 20, 0, 20, 80, 0, 0, 1
	delay 3
	return
_81CF13F:
	fadetobg BG_HIGHSPEED_PLAYER
	goto _81CEFD0

Move_POWDER_SNOW: @ 81CF146
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	monbg ANIM_BATTLER_DEF_PARTNER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 1, 0, 3, rgb(0, 0, 0)
	waitforvisualfinish
	panse_1B SE_W016, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	call _81CF190
	call _81CF190
	playsewithpan SE_W016B, SOUND_PAN_TARGET
	waitforvisualfinish
	waitsound
	call Effect_HeavyIceDamage
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 20
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 1, 3, 0, rgb(0, 0, 0)
	end
_81CF190:
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, 0, 0, 0, 56, 4, 4, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, -10, 0, -10, 56, 4, 4, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, 10, 0, 10, 56, -4, 3, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, -20, 0, -20, 56, -4, 5, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, 15, 0, 15, 56, 4, 4, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, -20, 0, -20, 56, 4, 4, 1
	delay 3
	createsprite gSmallSnowballSpriteTemplate2, ANIM_BATTLER_ATTACKER, 40, 0, 20, 0, 20, 56, 4, 4, 1
	delay 3
	return

Move_HYDRO_PUMP: @ 81CF240
	loadspritegfx ANIM_TAG_WATER_ORB
	loadspritegfx ANIM_TAG_WATER_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 40, 1
	delay 6
	panse_1B SE_W056, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createvisualtask sub_80D3630, 5, 100
	call _81CF2DF
	call _81CF2DF
	call _81CF2DF
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 37, 1
	call _81CF320
	call _81CF2DF
	call _81CF2DF
	call _81CF320
	call _81CF2DF
	call _81CF2DF
	call _81CF320
	call _81CF2DF
	call _81CF2DF
	call _81CF320
	call _81CF2DF
	call _81CF2DF
	call _81CF320
	delay 1
	delay 1
	call _81CF320
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81CF2DF:
	createsprite gBattleAnimSpriteTemplate_83D91F4, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	createsprite gBattleAnimSpriteTemplate_83D91F4, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D91F4, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	createsprite gBattleAnimSpriteTemplate_83D91F4, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, -16
	delay 1
	return
_81CF320:
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 4, 0, 15, 1, 1
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 4, 0, -15, 1, 1
	return

Move_SIGNAL_BEAM: @ 81CF33F
	loadspritegfx ANIM_TAG_GLOWY_RED_ORB
	loadspritegfx ANIM_TAG_GLOWY_GREEN_ORB
	loadspritegfx ANIM_TAG_DUCK
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 25, 1
	delay 6
	panse_1B SE_W062, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 1, 0
	createvisualtask sub_80D3630, 5, 100
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 25, 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 4, 8, 5, 31, 8, 961, 8
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	call _81CF406
	waitforvisualfinish
	end
_81CF406:
	createsprite gBattleAnimSpriteTemplate_83D9224, ANIM_BATTLER_TARGET, 3, 10, 10, 0, 16
	createsprite gBattleAnimSpriteTemplate_83D923C, ANIM_BATTLER_TARGET, 3, 10, 10, 0, -16
	delay 1
	return

Move_ABSORB: @ 81CF427
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 4, rgb(13, 31, 12)
	waitforvisualfinish
	playsewithpan SE_W071, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	delay 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 5, 1
	waitforvisualfinish
	delay 3
	call _81CF496
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 4, 0, rgb(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81CF496:
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W152, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_MEGA_DRAIN: @ 81CF53F
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 8, rgb(13, 31, 12)
	waitforvisualfinish
	playsewithpan SE_W071, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 1
	delay 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 5, 1
	waitforvisualfinish
	delay 3
	call _81CF5AE
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 8, 0, rgb(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81CF5AE:
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_GIGA_DRAIN: @ 81CF6CF
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 12, rgb(13, 31, 12)
	waitforvisualfinish
	playsewithpan SE_W071, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	delay 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 5, 1
	waitforvisualfinish
	delay 3
	call _81CF73E
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 12, 0, rgb(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81CF73E:
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -40, 35
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 28, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 40, 39
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -32, 26
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -40, 26
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 36, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W202, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_LEECH_LIFE: @ 81CF8D7
	loadspritegfx ANIM_TAG_NEEDLE
	loadspritegfx ANIM_TAG_ORBS
	delay 1
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	setalpha 12, 8
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DAB10, ANIM_BATTLER_ATTACKER, 2, -20, 15, 12
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	playsewithpan SE_W071, SOUND_PAN_TARGET
	delay 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 5, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 7, rgb(0, 0, 0)
	waitforvisualfinish
	call _81CF496
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 7, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SYNTHESIS: @ 81CF959
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_SPARKLE_2
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 16, 19451
	playsewithpan SE_W025, SOUND_PAN_ATTACKER
	call Unknown_81D5ECA
	waitforvisualfinish
	call Unknown_81D5EF5
	waitforvisualfinish
	end

Move_TOXIC: @ 81CF983
	loadspritegfx ANIM_TAG_TOXIC_BUBBLE
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	call _81CF99D
	call _81CF99D
	waitforvisualfinish
	delay 15
	call PoisonBubblesAnim
	waitforvisualfinish
	end
_81CF99D:
	createsprite gBattleAnimSpriteTemplate_83DA244, ANIM_BATTLER_TARGET, 2, -24, 16, 1, 1
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 15
	createsprite gBattleAnimSpriteTemplate_83DA244, ANIM_BATTLER_TARGET, 2, 8, 16, 1, 1
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 15
	createsprite gBattleAnimSpriteTemplate_83DA244, ANIM_BATTLER_TARGET, 2, -8, 16, 1, 1
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 15
	createsprite gBattleAnimSpriteTemplate_83DA244, ANIM_BATTLER_TARGET, 2, 24, 16, 1, 1
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 15
	return

Move_SLUDGE: @ 81CF9F2
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA2B8, ANIM_BATTLER_TARGET, 2, 20, 0, 40, 0
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 5, 1
	createvisualtask sub_80E1F8C, 2, 4, 1, 2, 0, 12, 31774
	call PoisonBubblesAnim
	waitforvisualfinish
	end

Move_SLUDGE_BOMB: @ 81CFA34
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	call _81CFB44
	createvisualtask AnimTask_ShakeMon2, 5, 1, 3, 0, 15, 1
	createvisualtask sub_80E1F8C, 2, 4, 1, 2, 0, 12, 31774
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 42, 27, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -27, 44, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 39, -28, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -42, -42, 20
	playsewithpan SE_W091, SOUND_PAN_TARGET
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 0, 40, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -8, -44, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -46, -28, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 46, 9, 20
	playsewithpan SE_W091, SOUND_PAN_TARGET
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 42, 0, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -43, -12, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, 16, -46, 20
	createsprite gBattleAnimSpriteTemplate_83DA2E8, ANIM_BATTLER_TARGET, 2, -16, 44, 20
	playsewithpan SE_W091, SOUND_PAN_TARGET
	delay 0
	waitsound
	waitforvisualfinish
	call PoisonBubblesAnim
	waitforvisualfinish
	end
_81CFB44:
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA2B8, ANIM_BATTLER_TARGET, 2, 20, 0, 40, 0
	delay 3
	return

Move_ACID: @ 81CFB5A
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	monbg ANIM_BATTLER_DEF_PARTNER
	createsprite gBattleAnimSpriteTemplate_83DA2D0, ANIM_BATTLER_TARGET, 2, 20, 0, 40, 1, 0, 0
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DA2D0, ANIM_BATTLER_TARGET, 2, 20, 0, 40, 1, 24, 0
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DA2D0, ANIM_BATTLER_TARGET, 2, 20, 0, 40, 1, -24, 0
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 15
	createvisualtask AnimTask_ShakeMon2, 5, 1, 2, 0, 10, 1
	createvisualtask AnimTask_ShakeMon2, 5, 3, 2, 0, 10, 1
	createvisualtask sub_80E1F8C, 2, 20, 2, 2, 0, 12, 31774
	createsprite gBattleAnimSpriteTemplate_83DA31C, ANIM_BATTLER_TARGET, 2, 0, -22, 0, 15, 55
	playsewithpan SE_W145, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DA31C, ANIM_BATTLER_TARGET, 2, -26, -24, 0, 15, 55
	playsewithpan SE_W145, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DA31C, ANIM_BATTLER_TARGET, 2, 15, -27, 0, 15, 50
	playsewithpan SE_W145, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DA31C, ANIM_BATTLER_TARGET, 2, -15, -17, 0, 10, 45
	playsewithpan SE_W145, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83DA31C, ANIM_BATTLER_TARGET, 2, 27, -22, 0, 15, 50
	playsewithpan SE_W145, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_BONEMERANG: @ 81CFC54
	loadspritegfx ANIM_TAG_BONE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W155, SOUND_PAN_ATTACKER
	createsprite gBonemerangSpriteTemplate, ANIM_BATTLER_ATTACKER, 2
	delay 20
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 5, 0, 5, 1
	delay 17
	playsewithpan SE_W233, SOUND_PAN_ATTACKER
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, -4
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_BONE_CLUB: @ 81CFCA8
	loadspritegfx ANIM_TAG_BONE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W155, SOUND_PAN_TARGET
	createsprite gBoneHitSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -42, -25, 0, 0, 15
	delay 12
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 5, 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 7, 5, 1, 0, 10, 0, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_BONE_RUSH: @ 81CFD0A
	loadspritegfx ANIM_TAG_BONE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W155, SOUND_PAN_TARGET
	createsprite gBoneHitSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -42, -25, 0, 0, 15
	delay 12
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 3, 5, 1
	playsewithpan SE_W030, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SPIKES: @ 81CFD55
	loadspritegfx ANIM_TAG_SPIKES
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W030, SOUND_PAN_TARGET, 28
	createsprite gBattleAnimSpriteTemplate_840227C, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 24, 30
	delay 10
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W030, SOUND_PAN_TARGET, 28
	createsprite gBattleAnimSpriteTemplate_840227C, ANIM_BATTLER_TARGET, 2, 20, 0, -24, 24, 30
	delay 10
	waitplaysewithpan SE_W030, SOUND_PAN_TARGET, 28
	createsprite gBattleAnimSpriteTemplate_840227C, ANIM_BATTLER_TARGET, 2, 20, 0, 24, 24, 30
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_MEGAHORN: @ 81CFDAC
	loadspritegfx ANIM_TAG_HORN_HIT_2
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	jumpifcontest _81CFE83
	fadetobg BG_DRILL
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 768, 1, -1
_81CFDCF:
	waitbgfadein
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 5, 0, 2, 0, 15, 1
	waitforvisualfinish
	delay 10
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 6
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DAABC, ANIM_BATTLER_ATTACKER, 3, -42, 25, 0, 0, 6
	delay 4
	playsewithpan SE_W011, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -16, 4, 1, 4
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, -4, 1, 12, 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 7, 5, 1, 32767, 10, 0, 0
	delay 10
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 11
	delay 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 7
	waitforvisualfinish
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81CFE83:
	fadetobg BG_DRILL_CONTESTS
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, 2304, 768, 0, -1
	goto _81CFDCF

Move_GUST: @ 81CFE9A
	loadspritegfx ANIM_TAG_GUST
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W016, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA380, ANIM_BATTLER_ATTACKER, 2, 0, -16
	createvisualtask sub_80DA09C, 5, 1, 70
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 5, 1, 1, 0, 7, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	playsewithpan SE_W016B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_WING_ATTACK: @ 81CFEEB
	loadspritegfx ANIM_TAG_GUST
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	loopsewithpan SE_W017, SOUND_PAN_ATTACKER, 20, 2
	createvisualtask AnimTask_TranslateMonElliptical, 2, ANIM_BATTLER_ATTACKER, 12, 4, 1, 4
	createvisualtask sub_80DA09C, 5, 1, 70
	createsprite gBattleAnimSpriteTemplate_83DA3B4, ANIM_BATTLER_ATTACKER, 2, -25, 0, 0, 0, 20
	createsprite gBattleAnimSpriteTemplate_83DA3B4, ANIM_BATTLER_ATTACKER, 2, 25, 0, 0, 0, 20
	delay 24
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 9
	delay 17
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, 0, 1, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -16, 0, 1, 1
	loopsewithpan SE_W003, SOUND_PAN_TARGET, 5, 2
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 11
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_PECK: @ 81CFF88
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_W030, SOUND_PAN_TARGET
	createvisualtask sub_80A8EFC, 2, 3, -768, 1, 2
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -12, 0, 1, 3
	waitforvisualfinish
	end

Move_AEROBLAST: @ 81CFFAF
	loadspritegfx ANIM_TAG_AIR_WAVE_2
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	call Unknown_81D61FB
	monbgprio_28 1
	setalpha 12, 8
	call _81D000B
	createvisualtask AnimTask_ShakeMon, 5, 1, 5, 0, 50, 1
	call _81D000B
	call _81D000B
	call _81D000B
	call _81D000B
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	delay 0
	call Unknown_81D622B
	end
_81D000B:
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, -12, 0, -12, 15, 0, 0
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 26, 8, 12, 8, 15, 0, 0
	delay 3
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, -12, 0, -12, 15, 1, 0
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 26, 8, 12, 8, 15, 1, 0
	delay 3
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, -12, 0, -12, 15, 2, 0
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 26, 8, 12, 8, 15, 2, 0
	delay 3
	playsewithpan SE_W026, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, -12, 0, -12, 15, 3, 0
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 26, 8, 12, 8, 15, 3, 0
	delay 3
	return

Move_WATER_GUN: @ 81D00CC
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	loadspritegfx ANIM_TAG_WATER_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83D9318, ANIM_BATTLER_ATTACKER, 2, 20, 0, 0, 0, 40, -25
	playsewithpan SE_W145, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 5, 1, 1, 0, 8, 1
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 4, 0, 0, 1, 2
	createsprite gBattleAnimSpriteTemplate_83D9330, ANIM_BATTLER_ATTACKER, 2, 0, -15, 0, 15, 55
	playsewithpan SE_W152, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D9330, ANIM_BATTLER_ATTACKER, 2, 15, -20, 0, 15, 50
	playsewithpan SE_W152, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D9330, ANIM_BATTLER_ATTACKER, 2, -15, -10, 0, 10, 45
	playsewithpan SE_W152, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_CRABHAMMER: @ 81D0159
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	loadspritegfx ANIM_TAG_WATER_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_ATTACKER, 4, 0, 0, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 32429, 10, 0, 0
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -24, 0, 0, 4
	waitforvisualfinish
	delay 8
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 4
	waitforvisualfinish
	loopsewithpan SE_W152, SOUND_PAN_TARGET, 20, 3
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 4, 8, 1
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 10, 10, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 20, -20, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -15, 15, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 0, 0, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -10, -20, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 16, -8, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, 5, 8, 20, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9348, ANIM_BATTLER_ATTACKER, 2, -16, 0, 20, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SURF: @ 81D0253
	createvisualtask AnimTask_CreateSurfWave, 2, 0
	delay 24
	panse_1B SE_W057, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	waitforvisualfinish
	end

Move_FLAMETHROWER: @ 81D0267
	loadspritegfx ANIM_TAG_SMALL_EMBER
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 46, 1
	delay 6
	createvisualtask sub_80D3630, 5, 100
	panse_1B SE_W053, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	call _81D02E1
	call _81D02E1
	call _81D02E1
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 43, 1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	call _81D02E1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D02E1:
	createsprite gBattleAnimSpriteTemplate_83D9268, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9268, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	return

Move_SANDSTORM: @ 81D0304
	loadspritegfx ANIM_TAG_FLYING_DIRT
	playsewithpan SE_W201, 0
	createvisualtask do_boulder_dust, 5, 0
	delay 16
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 10, 2304, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 90, 2048, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 50, 2560, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 20, 2304, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 70, 1984, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 0, 2816, 96, 0
	delay 10
	createsprite gFlyingDirtSpriteTemplate, ANIM_BATTLER_ATTACKER, 40, 60, 2560, 96, 0
	end

Move_WHIRLPOOL: @ 81D038C
	loadspritegfx ANIM_TAG_WATER_ORB
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	delay 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 0, 7, rgb(0, 13, 23)
	playsewithpan SE_W250, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 50, 1
	call _81D03E4
	call _81D03E4
	call _81D03E4
	delay 12
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 7, 0, rgb(0, 13, 23)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end
_81D03E4:
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 28, 384, 50, 8, 50, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 32, 240, 40, 11, -46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 33, 416, 40, 4, 42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 31, 288, 45, 6, -42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 28, 448, 45, 11, 46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACB8, ANIM_BATTLER_TARGET, 2, 0, 33, 464, 50, 10, -50, 1
	delay 2
	return

Move_FLY: @ 81D046F
	loadspritegfx ANIM_TAG_ROUND_SHADOW
	loadspritegfx ANIM_TAG_IMPACT
	choosetwoturnanim _81D0480, _81D0498
_81D047E:
	waitforvisualfinish
	end
_81D0480:
	playsewithpan SE_W019, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA450, ANIM_BATTLER_ATTACKER, 2, 0, 0, 13, 336
	goto _81D047E
_81D0498:
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA468, ANIM_BATTLER_ATTACKER, 2, 20
	delay 20
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81D047E

Move_BOUNCE: @ 81D04D9
	loadspritegfx ANIM_TAG_ROUND_SHADOW
	loadspritegfx ANIM_TAG_IMPACT
	choosetwoturnanim _81D04E9, _81D04FD
_81D04E8:
	end
_81D04E9:
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA568, ANIM_BATTLER_ATTACKER, 2, 0, 0
	goto _81D04E8
_81D04FD:
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA594, ANIM_BATTLER_TARGET, 3
	delay 7
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 5, 11, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81D04E8

Move_KARATE_CHOP: @ 81D053C
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	playsewithpan SE_W104, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9F78, ANIM_BATTLER_ATTACKER, 2, -16, 0, 0, 0, 10, 1, 3, 0
	waitforvisualfinish
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 4, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_CROSS_CHOP: @ 81D058E
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_CROSS_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W025, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9FD8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9FD8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1
	delay 40
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 32767, 10, 0, 10
	createsprite gBattleAnimSpriteTemplate_83DB520, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 20
	createvisualtask AnimTask_ShakeMon, 5, 1, 7, 0, 9, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_JUMP_KICK: @ 81D05F7
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D9F90, ANIM_BATTLER_ATTACKER, 2, -16, 8, 0, 0, 10, 1, 1, 1
	playsewithpan SE_W026, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 5, 0, 7, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_HI_JUMP_KICK: @ 81D0654
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -24, 0, 0, 8
	waitforvisualfinish
	delay 10
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 3
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D9F90, ANIM_BATTLER_ATTACKER, 2, -16, 8, 0, 0, 10, 1, 1, 1
	playsewithpan SE_W026, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -28, 0, 0, 3
	delay 3
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 3, 0, 11, 1
	waitforvisualfinish
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_DOUBLE_KICK: @ 81D06EA
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83D9FC0, ANIM_BATTLER_ATTACKER, 3, 1, 20, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 4, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_TRIPLE_KICK: @ 81D071D
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	jumpifmoveturn 0, _81D0742
	jumpifmoveturn 1, _81D0778
	goto _81D07AE
_81D073D:
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D0742:
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, -16, -8, 20, 1, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -16, -16, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 4, 0, 6, 1
	goto _81D073D
_81D0778:
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 8, 8, 20, 1, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 8, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 4, 0, 6, 1
	goto _81D073D
_81D07AE:
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 4, 0, 0, 20, 1, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, -8, 1, 1
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	goto _81D073D

Move_DYNAMIC_PUNCH: @ 81D07E4
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_EXPLOSION
	loadspritegfx ANIM_TAG_UNUSED_EXPLOSION
	delay 1
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 20, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 5, 0, 7, 1
	delay 1
	waitsound
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 5, 1, 5, 0, 28, 1
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 16, 16, 1, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_COUNTER: @ 81D08AC
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 18, 6, 1, 4
	playsewithpan SE_W233, SOUND_PAN_ATTACKER
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 0, 0, 4
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -15, 18, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 25, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -15, 18, 8, 1, 0
	delay 3
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -4, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, -4, 8, 1, 0
	delay 3
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 15, 9, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 15, 9, 8, 1, 0
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_VITAL_THROW: @ 81D097B
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W233, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 12, 4, 1, 2
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 20, 0, 0, 4
	delay 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -24, 0, 0, 4
	waitforvisualfinish
	delay 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 7
	delay 11
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 10
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_ROCK_SMASH: @ 81D09F6
	loadspritegfx ANIM_TAG_ROCKS
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	delay 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 8, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 5, 1
	waitforvisualfinish
	playsewithpan SE_W088, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, 0, 20, 24, 14, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 5, 0, -20, 24, 14, 1
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, 5, 20, -24, 14, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, -5, 0, -20, -24, 14, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, -5, 30, 18, 8, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, 0, 30, -18, 8, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, 0, -30, 18, 8, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_ATTACKER, 2, 0, 0, -30, -18, 8, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 7, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_SUBMISSION: @ 81D0AEE
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W004, SOUND_PAN_TARGET, 10
	waitplaysewithpan SE_W104, SOUND_PAN_ATTACKER, 20
	waitplaysewithpan SE_W004, SOUND_PAN_TARGET, 30
	waitplaysewithpan SE_W104, SOUND_PAN_ATTACKER, 40
	waitplaysewithpan SE_W004, SOUND_PAN_TARGET, 50
	waitplaysewithpan SE_W104, SOUND_PAN_ATTACKER, 60
	waitplaysewithpan SE_W004, SOUND_PAN_TARGET, 70
	waitplaysewithpan SE_W104, SOUND_PAN_ATTACKER, 80
	waitplaysewithpan SE_W004, SOUND_PAN_TARGET, 90
	createvisualtask AnimTask_TranslateMonElliptical, 2, ANIM_BATTLER_ATTACKER, -18, 6, 6, 4
	createvisualtask AnimTask_TranslateMonElliptical, 2, ANIM_BATTLER_TARGET, 18, 6, 6, 4
	call _81D0B5D
	call _81D0B5D
	call _81D0B5D
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D0B5D:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, -12, 1, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, -12, 8, 1, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 12, 0, 1, 1
	delay 8
	return

Move_SUNNY_DAY: @ 81D0B91
	loadspritegfx ANIM_TAG_SUNLIGHT
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 13, 3
	createvisualtask sub_80E2A38, 10, 1921, 1, 0, 6, 32767
	waitforvisualfinish
	panse_26 SE_W080, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 1, 0
	call _81D0BDD
	call _81D0BDD
	call _81D0BDD
	call _81D0BDD
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1921, 1, 6, 0, 32767
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end
_81D0BDD:
	createsprite gBattleAnimSpriteTemplate_83D95B0, ANIM_BATTLER_ATTACKER, 40
	delay 6
	return

Move_COTTON_SPORE: @ 81D0BE7
	loadspritegfx ANIM_TAG_SPORE
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	loopsewithpan SE_W077, SOUND_PAN_TARGET, 18, 10
	call _81D0C07
	call _81D0C07
	call _81D0C07
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end
_81D0C07:
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_ATTACKER, 2, 0, -20, 85, 80, 0
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_ATTACKER, 2, 0, -10, 170, 80, 0
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_ATTACKER, 2, 0, -15, 0, 80, 0
	delay 12
	return

Move_SPORE: @ 81D0C41
	loadspritegfx ANIM_TAG_SPORE
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask sub_80CACEC, 2
	loopsewithpan SE_W077, SOUND_PAN_TARGET, 16, 11
	call _81D0C6C
	call _81D0C6C
	call _81D0C6C
	waitforvisualfinish
	delay 1
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D0C6C:
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_TARGET, 2, 0, -20, 85, 80, 1
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_TARGET, 2, 0, -10, 170, 80, 1
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D63F8, ANIM_BATTLER_TARGET, 2, 0, -15, 0, 80, 1
	delay 12
	return

Move_PETAL_DANCE: @ 81D0CA6
	loadspritegfx ANIM_TAG_FLOWER
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W080, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 12, 6, 6, 3
	createsprite gBattleAnimSpriteTemplate_83D6428, ANIM_BATTLER_ATTACKER, 2, 0, -24, 8, 140
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, 16, -24, 8, 100
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, -16, -24, 8, 100
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D6428, ANIM_BATTLER_ATTACKER, 2, 0, -24, 8, 140
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, 32, -24, 8, 100
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, -32, -24, 8, 100
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D6428, ANIM_BATTLER_ATTACKER, 2, 0, -24, 8, 140
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, 24, -24, 8, 100
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, -24, -24, 8, 100
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, 16, -24, 0, 100
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, -16, -24, 0, 100
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, 20, -16, 14, 80
	createsprite gBattleAnimSpriteTemplate_83D6440, ANIM_BATTLER_ATTACKER, 2, -20, -14, 16, 80
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 5
	delay 3
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 6, 0, 8, 1
	waitforvisualfinish
	delay 8
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 7
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_RAZOR_LEAF: @ 81D0DDE
	loadspritegfx ANIM_TAG_LEAF
	loadspritegfx ANIM_TAG_RAZOR_LEAF
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	delay 1
	loopsewithpan SE_W077, SOUND_PAN_ATTACKER, 10, 5
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -2, 10
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -1, -1, 15
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -4, -4, 7
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 3, -3, 11
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -1, -6, 8
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 2, -1, 12
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -4, 13
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 4, -5, 7
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 2, -6, 11
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -5, 8
	delay 60
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D64E4, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 22, 20, 1
	createsprite gBattleAnimSpriteTemplate_83D64E4, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 22, -20, 1
	delay 20
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 2, 0, 8, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_ANCIENT_POWER: @ 81D0EE5
	loadspritegfx ANIM_TAG_ROCKS
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, 4, 1, 10, 1
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 32, -48, 50, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 32, -38, 25, 5
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 32, 32, -28, 40, 3
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -20, 32, -48, 50, 2
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, 32, -28, 60, 1
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 32, -28, 30, 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 30, 1
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	delay 10
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 15, 32, -48, 25, 5
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, 32, -42, 30, 4
	delay 10
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 32, -42, 25, 5
	createsprite gAncientPowerRockSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -25, 32, -48, 30, 4
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 16, 0, 0, 4
	delay 3
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 7
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_OCTAZOOKA: @ 81D100D
	loadspritegfx ANIM_TAG_GRAY_SMOKE
	loadspritegfx ANIM_TAG_BLACK_BALL
	playsewithpan SE_W025B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6F08, ANIM_BATTLER_TARGET, 2, 20, 0, 0, 0, 20, 0
	waitforvisualfinish
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6F3C, ANIM_BATTLER_TARGET, 2, 8, 8, 1, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6F3C, ANIM_BATTLER_TARGET, 2, -8, -8, 1, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6F3C, ANIM_BATTLER_TARGET, 2, 8, -8, 1, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D6F3C, ANIM_BATTLER_TARGET, 2, -8, 8, 1, 0
	waitforvisualfinish
	end

Move_MIST: @ 81D1073
	loadspritegfx ANIM_TAG_MIST_CLOUD
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	loopsewithpan SE_W054, SOUND_PAN_ATTACKER, 20, 15
	call _81D10BE
	call _81D10BE
	call _81D10BE
	call _81D10BE
	call _81D10BE
	call _81D10BE
	call _81D10BE
	delay 32
	createvisualtask sub_80E1F8C, 2, 10, 8, 2, 0, 14, 32767
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end
_81D10BE:
	createsprite gMistCloudSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, -24, 48, 240, 0, 1
	delay 7
	return

Move_HAZE: @ 81D10D4
	waitforvisualfinish
	playsewithpan SE_W114, 0
	createvisualtask AnimTask_Haze1, 5
	delay 30
	createvisualtask sub_80E2A38, 10, 1920, 2, 0, 16, 0
	delay 90
	createvisualtask sub_80E2A38, 10, 1920, 1, 16, 0, 0
	end

Move_FIRE_PUNCH: @ 81D1107
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 9, 31
	createsprite gBattleAnimSpriteTemplate_83D9478, ANIM_BATTLER_TARGET, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D9478, ANIM_BATTLER_TARGET, 1, 64
	createsprite gBattleAnimSpriteTemplate_83D9478, ANIM_BATTLER_TARGET, 1, 128
	createsprite gBattleAnimSpriteTemplate_83D9478, ANIM_BATTLER_TARGET, 1, 196
	playsewithpan SE_W172, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gFistFootSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 8, 1, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 15, 1
	call _81D11A2
	delay 4
	playsewithpan SE_W007, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 4, 0, 9, 0, 31
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D11A2:
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, 192, 176, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, -192, 240, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, 192, -160, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, -192, -112, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, 160, 48, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, -224, -32, 40
	createsprite gBattleAnimSpriteTemplate_83D9490, ANIM_BATTLER_TARGET, 1, 0, 10, 112, -128, 40
	return

Move_LEER: @ 81D121A
	loadspritegfx ANIM_TAG_LEER
	monbg ANIM_BATTLER_ATTACKER
	monbgprio_28 0
	setalpha 8, 8
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_84022B0, ANIM_BATTLER_ATTACKER, 2, 24, -12
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 10, ANIM_BATTLER_ATTACKER, 1
	waitforvisualfinish
	delay 10
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 9, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 1, 0, 9, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	blendoff
	delay 1
	waitforvisualfinish
	end

Move_DREAM_EATER: @ 81D1271
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	setalpha 8, 8
	playsewithpan SE_W107, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 5, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -6, -6, 15, ANIM_BATTLER_TARGET, 1
	waitforvisualfinish
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 2, 25, 1
	call _81D12DB
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	delay 1
	call BackgroundRestore
	end
_81D12DB:
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -40, 35
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 28, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 40, 39
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -32, 26
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, -15, -16, 36
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 16, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -40, 26
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -5, 15, 36, 33
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 10, -5, -8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, -10, 20, 20, 39
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 0, 5, 8, 26
	createsprite gBattleAnimSpriteTemplate_83D637C, ANIM_BATTLER_ATTACKER, 3, 5, -18, -20, 35
	delay 4
	return

Move_POISON_GAS: @ 81D1474
	loadspritegfx ANIM_TAG_PURPLE_GAS_CLOUD
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	delay 0
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_29
	setalpha 12, 8
	delay 0
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 4
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 4
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 4
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 4
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 4
	playsewithpan SE_W054, SOUND_PAN_ATTACKER
	createsprite gPoisonGasCloudSpriteTemplate, ANIM_BATTLER_TARGET, 0, 64, 0, 0, -32, -6, 4192, 1072, 0
	delay 40
	loopsewithpan SE_W054, SOUND_PAN_TARGET, 28, 6
	createvisualtask sub_80E1F8C, 2, 4, 6, 2, 0, 12, 26650
	waitforvisualfinish
	blendoff
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	end

Move_BIND: @ 81D1552
	createvisualtask AnimTask_SwayMon, 5, 0, 6, 3328, 4, 0
	goto _81D1568
_81D1568:
	playsewithpan SE_W020, SOUND_PAN_TARGET
	call _81D1578
	call _81D1578
	waitforvisualfinish
	end
_81D1578:
	createvisualtask AnimTask_ScaleMonAndRestore, 5, 10, -5, 5, ANIM_BATTLER_TARGET, 0
	delay 16
	return

Move_WRAP: @ 81D158C
	createvisualtask AnimTask_TranslateMonEllipticalRespectSide, 2, ANIM_BATTLER_ATTACKER, 6, 4, 2, 4
	goto _81D1568

Move_PSYBEAM: @ 81D15A2
	loadspritegfx ANIM_TAG_GOLD_RING
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	createsoundtask sub_812B058, 200, -64, 63, 3, 4, 0, 15
	call _81D1626
	call _81D1626
	createvisualtask AnimTask_SwayMon, 5, 0, 6, 2048, 4, 1
	createvisualtask sub_80E1F8C, 2, 4, 2, 2, 0, 12, 32351
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	call _81D1626
	waitforvisualfinish
	delay 1
	call BackgroundRestore
	end
_81D1626:
	createsprite gBattleAnimSpriteTemplate_83DA784, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 13, 0
	delay 4
	return

Move_HYPNOSIS: @ 81D163C
	loadspritegfx ANIM_TAG_GOLD_RING
	call SetPsychicBackground
	call _81D166F
	call _81D166F
	call _81D166F
	createvisualtask sub_80E1F8C, 2, 4, 2, 2, 0, 12, 32351
	waitforvisualfinish
	delay 1
	call BackgroundRestore
	end
_81D166F:
	playsewithpan SE_W048, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA784, ANIM_BATTLER_TARGET, 2, 0, 8, 0, 8, 27, 0
	createsprite gBattleAnimSpriteTemplate_83DA784, ANIM_BATTLER_TARGET, 2, 16, -8, 0, -8, 27, 0
	delay 6
	return

Move_PSYWAVE: @ 81D169C
	loadspritegfx ANIM_TAG_BLUE_RING
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	createvisualtask sub_80D3630, 5, 100
	createsoundtask sub_812B058, 203, -64, 63, 2, 9, 0, 10
	call _81D16FF
	call _81D16FF
	createvisualtask sub_80E1F8C, 2, 4, 1, 4, 0, 12, 32351
	call _81D16FF
	call _81D16FF
	call _81D16FF
	call _81D16FF
	waitforvisualfinish
	delay 1
	call BackgroundRestore
	end
_81D16FF:
	createsprite gBattleAnimSpriteTemplate_83D9280, ANIM_BATTLER_TARGET, 3, 10, 10, 0, 16
	delay 4
	createsprite gBattleAnimSpriteTemplate_83D9280, ANIM_BATTLER_TARGET, 3, 10, 10, 0, 16
	delay 4
	return

Move_ZAP_CANNON: @ 81D1722
	loadspritegfx ANIM_TAG_BLACK_BALL_2
	loadspritegfx ANIM_TAG_SPARK_2
	playsewithpan SE_W086, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9874, ANIM_BATTLER_TARGET, 3, 10, 0, 0, 0, 30, 0
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 16, 30, 0, 40, 0
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 16, 30, 64, 40, 1
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 16, 30, 128, 40, 0
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 16, 30, 192, 40, 2
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 8, 30, 32, 40, 0
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 8, 30, 96, 40, 1
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 8, 30, 160, 40, 0
	createsprite gBattleAnimSpriteTemplate_83D98A0, ANIM_BATTLER_TARGET, 4, 10, 0, 8, 30, 224, 40, 2
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 5, 1
	delay 15
	waitplaysewithpan SE_W085B, SOUND_PAN_TARGET, 19
	call ElectricityEffect
	waitforvisualfinish
	end

Move_STEEL_WING: @ 81D1807
	loadspritegfx ANIM_TAG_GUST
	loadspritegfx ANIM_TAG_IMPACT
	loopsewithpan SE_W231, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 0, 0, 0
	waitforvisualfinish
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	loopsewithpan SE_W017, SOUND_PAN_ATTACKER, 20, 2
	createvisualtask AnimTask_TranslateMonElliptical, 2, ANIM_BATTLER_ATTACKER, 12, 4, 1, 4
	createvisualtask sub_80DA09C, 5, 1, 70
	createsprite gBattleAnimSpriteTemplate_83DA3B4, ANIM_BATTLER_ATTACKER, 2, -25, 0, 0, 0, 20
	createsprite gBattleAnimSpriteTemplate_83DA3B4, ANIM_BATTLER_ATTACKER, 2, 25, 0, 0, 0, 20
	delay 24
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 9
	delay 17
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, 0, 1, 1
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -16, 0, 1, 1
	playsewithpan SE_W013, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 11
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_IRON_TAIL: @ 81D18B6
	loadspritegfx ANIM_TAG_IMPACT
	loopsewithpan SE_W231, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 1, 0, 0
	waitforvisualfinish
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80E0E24, 5, 0, 1
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end

Move_POISON_TAIL: @ 81D1914
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	loopsewithpan SE_W231, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 1, 1, 23768
	waitforvisualfinish
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 4
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask sub_80E0E24, 5, 0, 1
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	call PoisonBubblesAnim
	waitforvisualfinish
	end

Move_METAL_CLAW: @ 81D197A
	loadspritegfx ANIM_TAG_CLAW_SLASH
	loopsewithpan SE_W231, SOUND_PAN_ATTACKER, 28, 2
	createvisualtask sub_80E0A4C, 5, 0, 0, 0
	waitforvisualfinish
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 2
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, -10, 0
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, 10, 0
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, -4, 1, 10, 3, 1
	delay 8
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 2
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, -10, 1
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, 10, 1
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, -4, 1, 10, 3, 1
	waitforvisualfinish
	end

Move_NIGHT_SHADE: @ 81D1A0D
	monbg ANIM_BATTLER_ATTACKER
	monbgprio_28 0
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	fadetobg BG_GHOST
	waitbgfadein
	delay 10
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	createvisualtask sub_80DDDF0, 5, 85
	delay 70
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 12, 1
	createvisualtask sub_80E1F8C, 2, 4, 0, 2, 0, 13, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 1
	restorebg
	waitbgfadein
	end

Move_EGG_BOMB: @ 81D1A55
	loadspritegfx ANIM_TAG_EXPLOSION
	loadspritegfx ANIM_TAG_LARGE_FRESH_EGG
	playsewithpan SE_W039, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7594, ANIM_BATTLER_TARGET, 2, 10, 0, 0, 0, 25, -32
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 16, 1
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 4, 6, 5, 1, 0
	playsewithpan SE_W120, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 4, -16, -15, 1, 0
	playsewithpan SE_W120, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 4, 16, -5, 1, 0
	playsewithpan SE_W120, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 4, -12, 18, 1, 0
	playsewithpan SE_W120, SOUND_PAN_TARGET
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 4, 0, 5, 1, 0
	playsewithpan SE_W120, SOUND_PAN_TARGET
	delay 3
	waitforvisualfinish
	end

Move_SHADOW_BALL: @ 81D1AEF
	loadspritegfx ANIM_TAG_SHADOW_BALL
	fadetobg BG_GHOST
	waitbgfadein
	delay 15
	createsoundtask sub_812B058, 168, -64, 63, 5, 5, 0, 5
	createsprite gShadowBallSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 16, 8
	waitforvisualfinish
	playsewithpan SE_W028, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 8, 1
	waitforvisualfinish
	restorebg
	waitbgfadein
	end

Move_LICK: @ 81D1B32
	loadspritegfx ANIM_TAG_LICK
	delay 15
	playsewithpan SE_W122, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAEDC, ANIM_BATTLER_TARGET, 2, 0, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 16, 1
	waitforvisualfinish
	end

Move_FOCUS_ENERGY: @ 81D1B59
	loadspritegfx ANIM_TAG_FOCUS_ENERGY
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	call EndureFlamesAnim
	delay 8
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 11, 32767
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 32, 1
	call EndureFlamesAnim
	delay 8
	call EndureFlamesAnim
	waitforvisualfinish
	end

Move_BIDE: @ 81D1B99
	choosetwoturnanim _81D1BA3, _81D1BCF
	end
_81D1BA3:
	loopsewithpan SE_W036, SOUND_PAN_ATTACKER, 9, 2
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 11, 31
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 32, 1
	waitforvisualfinish
	end
_81D1BCF:
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	loopsewithpan SE_W036, SOUND_PAN_ATTACKER, 9, 2
	createvisualtask sub_80E2A38, 10, 2, 2, 0, 11, 31
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 32, 1
	waitforvisualfinish
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 24, 0, 0, 4
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_ATTACKER, 2, 0, 12, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 16, 1
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, 18, -8, 1, 1
	delay 5
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, -18, 8, 1, 1
	delay 5
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 1, -8, -5, 1, 1
	waitforvisualfinish
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 7
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 2, 2, 11, 0, 31
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_STRING_SHOT: @ 81D1C98
	loadspritegfx ANIM_TAG_STRING
	loadspritegfx ANIM_TAG_STRING_DOT
	monbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 5, 1, 2, 0, 9, rgb(0, 0, 0)
	waitforvisualfinish
	loopsewithpan SE_W081, SOUND_PAN_ATTACKER, 9, 6
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	call _81D1D56
	waitforvisualfinish
	playsewithpan SE_W081B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAB40, ANIM_BATTLER_TARGET, 2, 0, 10
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DAB40, ANIM_BATTLER_TARGET, 2, 0, -2
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DAB40, ANIM_BATTLER_TARGET, 2, 0, 22
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 5, 1, 2, 9, 0, rgb(0, 0, 0)
	end
_81D1D56:
	createsprite gBattleAnimSpriteTemplate_83DAB28, ANIM_BATTLER_TARGET, 2, 20, 0, 512, 20, 1
	delay 1
	return

Move_SPIDER_WEB: @ 81D1D6A
	loadspritegfx ANIM_TAG_WEB
	loadspritegfx ANIM_TAG_STRING_DOT
	monbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 5, 1, 2, 0, 9, rgb(0, 0, 0)
	waitforvisualfinish
	monbgprio_28 1
	loopsewithpan SE_W081, SOUND_PAN_ATTACKER, 9, 6
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	call _81D1DF7
	waitforvisualfinish
	playsewithpan SE_W081B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAB74, ANIM_BATTLER_ATTACKER, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 5, 1, 2, 9, 0, rgb(0, 0, 0)
	end
_81D1DF7:
	createsprite gBattleAnimSpriteTemplate_83DAB28, ANIM_BATTLER_TARGET, 2, 20, 0, 512, 20, 0
	delay 1
	return

Move_RAZOR_WIND: @ 81D1E0B
	choosetwoturnanim _81D1E16, _81D1E66
_81D1E14:
	waitforvisualfinish
	end
_81D1E16:
	loadspritegfx ANIM_TAG_GUST
	playsewithpan SE_W016, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D765C, ANIM_BATTLER_ATTACKER, 2, 32, 0, 16, 16, 0, 7, 40
	createsprite gBattleAnimSpriteTemplate_83D765C, ANIM_BATTLER_ATTACKER, 2, 32, 0, 16, 16, 85, 7, 40
	createsprite gBattleAnimSpriteTemplate_83D765C, ANIM_BATTLER_ATTACKER, 2, 32, 0, 16, 16, 170, 7, 40
	waitforvisualfinish
	playsewithpan SE_W016B, SOUND_PAN_ATTACKER
	goto _81D1E14
_81D1E66:
	loadspritegfx ANIM_TAG_AIR_WAVE_2
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, 8, 0, 0, 22, 2, 1
	delay 2
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, -8, 16, 14, 22, 1, 1
	delay 2
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA3E4, ANIM_BATTLER_ATTACKER, 2, 14, 12, -16, -14, 22, 0, 1
	delay 17
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 10, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 2, 0, 10, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	goto _81D1E14

Move_DISABLE: @ 81D1EF1
	loadspritegfx ANIM_TAG_SPARKLE_4
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 8, 8
	playsewithpan SE_W197, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83930F4, ANIM_BATTLER_ATTACKER, 13, 24, -16
	waitforvisualfinish
	createvisualtask sub_80D03C4, 5
	loopsewithpan SE_W020, SOUND_PAN_TARGET, 15, 4
	waitforvisualfinish
	delay 1
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_RECOVER: @ 81D1F1F
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_BATTLER_ATK_PARTNER
	setalpha 12, 8
	loopsewithpan SE_W025, SOUND_PAN_ATTACKER, 13, 3
	createvisualtask sub_80E1F8C, 2, 2, 0, 6, 0, 11, 12287
	call _81D1F5F
	call _81D1F5F
	call _81D1F5F
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	delay 1
	call Unknown_81D5EF5
	waitforvisualfinish
	end
_81D1F5F:
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 40, -10, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -35, -10, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 15, -40, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -10, -32, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 25, -20, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, -40, -20, 13
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D62EC, ANIM_BATTLER_ATTACKER, 2, 5, -40, 13
	delay 3
	return

Move_MIMIC: @ 81D1FC9
	loadspritegfx ANIM_TAG_ORBS
	monbg_22 ANIM_BATTLER_DEF_PARTNER
	setalpha 11, 5
	panse_1B SE_W107, SOUND_PAN_TARGET, SOUND_PAN_ATTACKER, 253, 0
	createvisualtask sub_80CB340, 5, 128, 24
	delay 15
	createsprite gBattleAnimSpriteTemplate_83D65E8, ANIM_BATTLER_TARGET, 2, -12, 24
	delay 10
	setarg ARG_RET_ID, -1
	waitforvisualfinish
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_80E1F8C, 2, 2, 0, 2, 0, 11, 32767
	waitforvisualfinish
	clearmonbg_23 ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_CONSTRICT: @ 81D2013
	loadspritegfx ANIM_TAG_TENDRILS
	loopsewithpan SE_W010, SOUND_PAN_TARGET, 6, 4
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 4, 0, 16, 0, 2
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 3, 0, 0, 0, 2
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 2, 0, 8, 1, 2
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 3, 0, -8, 1, 2
	delay 8
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	delay 20
	playsewithpan SE_W020, SOUND_PAN_TARGET
	setarg ARG_RET_ID, -1
	waitforvisualfinish
	end

Move_CURSE: @ 81D207B
	choosetwoturnanim _81D2084, _81D2101
_81D2084:
	loadspritegfx ANIM_TAG_NAIL
	loadspritegfx ANIM_TAG_GHOSTLY_SPIRIT
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80DECB0, 5
	waitforvisualfinish
	delay 20
	createsprite gBattleAnimSpriteTemplate_83DAF20, ANIM_BATTLER_ATTACKER, 2
	delay 60
	call _81D20EB
	delay 41
	call _81D20EB
	delay 41
	call _81D20EB
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	delay 1
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W171, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAF38, ANIM_BATTLER_TARGET, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 14, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 16, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end
_81D20EB:
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 4, 0, 10, 0
	playsewithpan SE_W020, SOUND_PAN_ATTACKER
	return
_81D2101:
	createvisualtask AnimTask_SwayMon, 5, 0, 10, 1536, 3, 0
	waitforvisualfinish
	delay 10
	call _81D211C
	waitforvisualfinish
	end
_81D211C:
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask sub_80E2F2C, 5
	createvisualtask sub_80E1F8C, 5, 2, 4, 2, 0, 10, 31
	return

Move_SOFT_BOILED: @ 81D213B
	loadspritegfx ANIM_TAG_BREAKING_EGG
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_BATTLER_ATK_PARTNER
	playsewithpan SE_W039, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 0, 2, 6, 1
	createsprite gBattleAnimSpriteTemplate_83D78BC, ANIM_BATTLER_ATTACKER, 4, 0, 16, 0
	createsprite gBattleAnimSpriteTemplate_83D78BC, ANIM_BATTLER_ATTACKER, 4, 0, 16, 1
	delay 120
	delay 7
	playsewithpan SE_W030, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 3, 10, 0, rgb(12, 24, 30)
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 3, 31, 16, 0, 1
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 3, 31, 16, 0, 1
	delay 60
	setarg ARG_RET_ID, -1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	call Unknown_81D5F3E
	end

Move_HEAL_BELL: @ 81D21BD
	loadspritegfx ANIM_TAG_BELL
	loadspritegfx ANIM_TAG_MUSIC_NOTES_2
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_SPARKLE_2
	createvisualtask sub_80E2A38, 10, 10, 0, 0, 10, 32767
	waitforvisualfinish
	createvisualtask sub_80D1ADC, 5
	createsprite gBattleAnimSpriteTemplate_83D7A44, ANIM_BATTLER_ATTACKER, 2, 0, -24, 0, 1
	delay 12
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 48, -18, 35, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -48, 20, 30, 1, 1
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -38, -29, 30, 2, 2
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 36, 18, 30, 3, 3
	call _81D2372
	delay 33
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 19, 26, 35, 4, 4
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -34, -12, 30, 5, 5
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 41, -20, 34, 6, 6
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -15, 26, 32, 7, 0
	call _81D2372
	delay 33
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -48, 18, 31, 0, 2
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 48, -20, 30, 2, 5
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, 38, 29, 33, 4, 3
	createsprite gBattleAnimSpriteTemplate_83D7A68, ANIM_BATTLER_ATTACKER, 40, 0, -24, -36, -18, 30, 6, 1
	call _81D2372
	waitforvisualfinish
	createvisualtask sub_80D1B80, 5
	waitforvisualfinish
	playsewithpan SE_W234, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6CA0, ANIM_BATTLER_ATTACKER, 16, -15, 0, 0, 0, 32, 60, 1
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D6CA0, ANIM_BATTLER_ATTACKER, 16, 12, -5, 0, 0, 32, 60, 1
	waitforvisualfinish
	playsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER
	createvisualtask sub_80E2A7C, 10, 4, 3, 10, 0, 31500
	createvisualtask sub_80E2A38, 10, 10, 3, 10, 0, 32767
	createsprite gBattleAnimSpriteTemplate_83D7974, ANIM_BATTLER_ATTACKER, 16, 0, 0, 0, 1
	end
_81D2372:
	createvisualtask sub_80E2A7C, 10, 4, 3, 8, 0, 31500
	createvisualtask sub_80E2A38, 10, 10, 3, 2, 10, 32767
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 40, 0, -24, 0, 1
	playsewithpan SE_W215, SOUND_PAN_ATTACKER
	return

Move_FAKE_OUT: @ 81D23A8
	playsewithpan SE_W260, 0
	createvisualtask sub_80D1CD0, 5
	waitforvisualfinish
	playsewithpan SE_W166, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 5, 1
	createvisualtask sub_80D1E38, 3
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 16, 0, rgb(31, 31, 31)
	end

Move_SCARY_FACE: @ 81D23E3
	loadspritegfx ANIM_TAG_EYE_SPARKLE
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 27, 3, 0, 16, rgb(0, 0, 0)
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	waitforvisualfinish
	delay 10
	playsewithpan SE_W043, SOUND_PAN_ATTACKER
	createvisualtask sub_80D23B4, 5
	delay 13
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, -16, -8
	createsprite gBattleAnimSpriteTemplate_83D7B94, ANIM_BATTLER_ATTACKER, 0, 16, -8
	waitforvisualfinish
	createvisualtask sub_80D60B4, 3, 20, 1, 0
	playsewithpan SE_W081B, SOUND_PAN_TARGET
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 27, 3, 16, 0, rgb(0, 0, 0)
	waitforvisualfinish
	end

Move_SWEET_KISS: @ 81D2446
	loadspritegfx ANIM_TAG_RED_HEART
	loadspritegfx ANIM_TAG_ANGEL
	createsprite gBattleAnimSpriteTemplate_83D7BB8, ANIM_BATTLER_TARGET, 2, 16, -48
	playsewithpan SE_W215, SOUND_PAN_TARGET
	delay 23
	playsewithpan SE_W215, SOUND_PAN_TARGET
	delay 23
	playsewithpan SE_W215, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 160, -30
	playsewithpan SE_W213, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -256, -42
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 128, -14
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, 416, -38
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -128, -22
	createsprite gBattleAnimSpriteTemplate_83D7AC8, ANIM_BATTLER_TARGET, 3, -384, -31
	end

Move_LOVELY_KISS: @ 81D24AF
	loadspritegfx ANIM_TAG_PINK_HEART
	loadspritegfx ANIM_TAG_DEVIL
	createsprite gBattleAnimSpriteTemplate_83D7C00, ANIM_BATTLER_TARGET, 2, 0, -24
	playsewithpan SE_W060B, SOUND_PAN_TARGET
	waitforvisualfinish
	playsewithpan SE_W213, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7BD0, ANIM_BATTLER_TARGET, 3, -256, -42
	createsprite gBattleAnimSpriteTemplate_83D7BD0, ANIM_BATTLER_TARGET, 3, 128, -14
	createsprite gBattleAnimSpriteTemplate_83D7BD0, ANIM_BATTLER_TARGET, 3, 416, -38
	createsprite gBattleAnimSpriteTemplate_83D7BD0, ANIM_BATTLER_TARGET, 3, -128, -22
	end

Move_FURY_SWIPES: @ 81D24F6
	loadspritegfx ANIM_TAG_SWIPE
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 5, 5
	delay 4
	playsewithpan SE_W010, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7C48, ANIM_BATTLER_TARGET, 2, 16, 0, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 5, 1
	delay 10
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, 5
	delay 4
	playsewithpan SE_W010, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7C48, ANIM_BATTLER_TARGET, 2, -16, 0, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 7, 1
	end

Move_INGRAIN: @ 81D255A
	loadspritegfx ANIM_TAG_ROOTS
	loadspritegfx ANIM_TAG_ORBS
	createsprite gBattleAnimSpriteTemplate_83D6658, ANIM_BATTLER_ATTACKER, 2, 16, 26, -1, 2, 150
	playsewithpan SE_W010, SOUND_PAN_ATTACKER
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D6658, ANIM_BATTLER_ATTACKER, 2, -32, 20, 1, 1, 140
	playsewithpan SE_W010, SOUND_PAN_ATTACKER
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D6658, ANIM_BATTLER_ATTACKER, 2, 32, 22, 1, 0, 130
	playsewithpan SE_W010, SOUND_PAN_ATTACKER
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D6658, ANIM_BATTLER_ATTACKER, 2, -16, 25, -1, 3, 120
	playsewithpan SE_W010, SOUND_PAN_ATTACKER
	delay 40
	createsprite gBattleAnimSpriteTemplate_83D6698, ANIM_BATTLER_ATTACKER, 3, 32, 26, -1, 3, 30
	delay 5
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6698, ANIM_BATTLER_ATTACKER, 3, -48, 20, 1, 2, 30
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 5
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6698, ANIM_BATTLER_ATTACKER, 3, 48, 26, -2, 3, 18
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	delay 10
	waitforvisualfinish
	end

Move_PRESENT: @ 81D260B
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask sub_812C960, 2
	createsprite gBattleAnimSpriteTemplate_83D671C, ANIM_BATTLER_TARGET, 2, 0, -5, 10, 2, -1
	playsewithpan SE_W039, SOUND_PAN_ATTACKER
	delay 14
	playsewithpan SE_W145B, SOUND_PAN_ATTACKER
	delay 14
	playsewithpan SE_W145B, 0
	delay 20
	playsewithpan SE_W145B, SOUND_PAN_TARGET
	waitforvisualfinish
	jumpargeq 7, 0, _81D264E
	jumpargeq 7, 1, _81D26B9
	end
_81D264E:
	loadspritegfx ANIM_TAG_EXPLOSION
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_TARGET, 3, 16, 16, 1, 1
	end
_81D26B9:
	loadspritegfx ANIM_TAG_SPARKLE_5
	loadspritegfx ANIM_TAG_BLUE_STAR
	playsewithpan SE_W234, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, -16, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, 16, 32, -3, -1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, 32, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, -32, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, 0, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, -8, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, -8, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, 24, 32, -3, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D6764, ANIM_BATTLER_TARGET, 4, -24, 32, -3, 1
	waitforvisualfinish
	waitsound
	call Unknown_81D5F3E
	end

Move_BATON_PASS: @ 81D2762
	loadspritegfx ANIM_TAG_POKEBALL
	playsewithpan SE_W226, SOUND_PAN_ATTACKER
	createvisualtask sub_80E1F8C, 2, 31, 1, 2, 0, 11, 31455
	createsprite gBattleAnimSpriteTemplate_84024D0, ANIM_BATTLER_ATTACKER, 2
	end

Move_PERISH_SONG: @ 81D2784
	loadspritegfx ANIM_TAG_MUSIC_NOTES_2
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 1, 1, 16
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 2, 1, 32
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 3, 2, 48
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 4, 2, 64
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 5, 0, 80
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 6, 0, 96
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 7, 1, 112
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 8, 2, 128
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 9, 0, 144
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 10, 2, 160
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 11, 0, 176
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 12, 1, 192
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 13, 3, 208
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 14, 3, 224
	createsprite gBattleAnimSpriteTemplate_83D7D1C, ANIM_BATTLER_ATTACKER, 4, 15, 0, 240
	createsprite gBattleAnimSpriteTemplate_83D7D34, ANIM_BATTLER_ATTACKER, 4, 15, 0, 0
	delay 20
	panse_1B SE_W195, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	delay 80
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 0, 16, rgb(0, 0, 0)
	createvisualtask sub_80E0E24, 5, 4, 0
	createvisualtask sub_80E0E24, 5, 5, 0
	createvisualtask sub_80E0E24, 5, 6, 0
	createvisualtask sub_80E0E24, 5, 7, 0
	delay 100
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 16, 0, rgb(0, 0, 0)
	createvisualtask sub_80E0E24, 5, 4, 1
	createvisualtask sub_80E0E24, 5, 5, 1
	createvisualtask sub_80E0E24, 5, 6, 1
	createvisualtask sub_80E0E24, 5, 7, 1
	waitforvisualfinish
	end

Move_SLEEP_TALK: @ 81D28ED
	loadspritegfx ANIM_TAG_LETTER_Z
	createvisualtask AnimTask_SwayMon, 5, 0, 4, 4096, 2, 0
	delay 20
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -1
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -1
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -1
	delay 20
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -5
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -5
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -5
	delay 20
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -3
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -3
	delay 6
	createsprite gBattleAnimSpriteTemplate_84022F0, ANIM_BATTLER_TARGET, 2, 0, 20, 5, -3
	waitforvisualfinish
	end

Move_HYPER_FANG: @ 81D29A8
	loadspritegfx ANIM_TAG_FANG_ATTACK
	playsewithpan SE_W044, SOUND_PAN_TARGET
	delay 1
	delay 2
	createvisualtask sub_80E4200, 2
	jumpargeq 7, 1, _81D2A08
	createvisualtask sub_812C924, 2
	jumpargeq 7, 0, _81D29FA
	goto _81D2A01
_81D29D6:
	waitbgfadeout
	createsprite gBattleAnimSpriteTemplate_840233C, ANIM_BATTLER_TARGET, 2
	waitbgfadein
	createvisualtask AnimTask_ShakeMon, 3, 1, 0, 10, 10, 1
	playsewithpan SE_W043, SOUND_PAN_TARGET
	delay 20
	restorebg
	waitbgfadein
	waitforvisualfinish
	end
_81D29FA:
	fadetobg BG_IMPACT_OPPONENT
	goto _81D29D6
_81D2A01:
	fadetobg BG_IMPACT_PLAYER
	goto _81D29D6
_81D2A08:
	fadetobg BG_IMPACT_CONTESTS
	goto _81D29D6

Move_TRI_ATTACK: @ 81D2A0F
	loadspritegfx ANIM_TAG_TRI_FORCE_TRIANGLE
	createsprite gBattleAnimSpriteTemplate_8402458, ANIM_BATTLER_TARGET, 2, 16, 0
	playsewithpan SE_W161, SOUND_PAN_ATTACKER
	delay 20
	playsewithpan SE_W161, SOUND_PAN_ATTACKER
	delay 20
	createsoundtask sub_812B058, 220, -64, 63, 5, 6, 0, 7
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 16, rgb(0, 0, 0)
	delay 16
	loadspritegfx ANIM_TAG_FIRE
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, 0
	playsewithpan SE_W172B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 0, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 2, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 1, -1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, -1, 1
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 1, -2
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D9520, ANIM_BATTLER_TARGET, 2, 0, 0, 30, 30, 3, 1
	delay 2
	createvisualtask sub_80D60B4, 2, 20, 3, 1, 1
	waitforvisualfinish
	loadspritegfx ANIM_TAG_LIGHTNING
	createvisualtask sub_80E2324, 2, 257, 257, 257
	playsewithpan SE_W161B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, -48
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, -16
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D97D0, ANIM_BATTLER_TARGET, 2, 0, 16
	delay 20
	createvisualtask sub_80D60B4, 2, 20, 3, 1, 0
	delay 2
	createvisualtask sub_80E2324, 2, 257, 257, 257
	waitforvisualfinish
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	call Effect_LightIceDamage
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 16, 0, rgb(0, 0, 0)
	waitforvisualfinish
	end

Move_WILL_O_WISP: @ 81D2B83
	loadspritegfx ANIM_TAG_WISP_FIRE
	loadspritegfx ANIM_TAG_WISP_ORB
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	playsewithpan SE_W052, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W052, SOUND_PAN_ATTACKER, 10
	createvisualtask sub_812B374, 2, -64, -64, 1, 0
	createsprite gBattleAnimSpriteTemplate_83D974C, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D974C, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D974C, ANIM_BATTLER_ATTACKER, 4, 0, 0, 2
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D974C, ANIM_BATTLER_ATTACKER, 4, 0, 0, 3
	delay 40
	createvisualtask sub_812B374, 2, -64, 63, 2, 0
	waitforvisualfinish
	monbgprio_29
	playsewithpan SE_W172B, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 13, 1
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 42
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 84
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 126
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 168
	createsprite gBattleAnimSpriteTemplate_83D977C, ANIM_BATTLER_ATTACKER, 2, 210
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_ENCORE: @ 81D2C41
	loadspritegfx ANIM_TAG_SPOTLIGHT
	loadspritegfx ANIM_TAG_TAG_HAND
	createvisualtask sub_812CC44, 2
	createvisualtask sub_80E2D78, 2, 248, 3, 0, 10, 0
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_840238C, ANIM_BATTLER_TARGET, 2, 0, -8
	createsprite gBattleAnimSpriteTemplate_84023A4, ANIM_BATTLER_ATTACKER, 2, -2, 0, 0, 0, 9
	createsprite gBattleAnimSpriteTemplate_84023A4, ANIM_BATTLER_ATTACKER, 2, 2, 0, 1, 0, 9
	createsprite gBattleAnimSpriteTemplate_84023BC, ANIM_BATTLER_ATTACKER, 3, -2, 0, 0, 0, 9
	createsprite gBattleAnimSpriteTemplate_84023BC, ANIM_BATTLER_ATTACKER, 3, 2, 0, 1, 0, 9
	delay 16
	createvisualtask sub_812B340, 5, 223, 63
	createvisualtask AnimTask_SwayMon, 5, 1, 8, 1536, 5, 1
	waitforvisualfinish
	createvisualtask sub_80E2D78, 2, 248, 3, 10, 0, 1
	waitforvisualfinish
	createvisualtask sub_812CCA8, 2
	end

Move_TRICK: @ 81D2CE8
	loadspritegfx ANIM_TAG_ITEM_BAG
	loadspritegfx ANIM_TAG_SPEED_DUST
	createsprite gBattleAnimSpriteTemplate_83D67F4, ANIM_BATTLER_ATTACKER, 2, -40, 80
	createsprite gBattleAnimSpriteTemplate_83D67F4, ANIM_BATTLER_ATTACKER, 2, -40, 208
	delay 16
	playsewithpan SE_W166, 0
	createvisualtask sub_80D1E38, 3
	createvisualtask sub_80D1EC8, 3
	delay 30
	playsewithpan SE_W104, 0
	delay 24
	playsewithpan SE_W104, 0
	delay 16
	playsewithpan SE_W104, 0
	delay 16
	playsewithpan SE_W104, 0
	delay 16
	playsewithpan SE_W104, 0
	delay 16
	playsewithpan SE_W104, 0
	delay 16
	playsewithpan SE_W213, 0
	createvisualtask AnimTask_ShakeMon, 3, 0, 5, 0, 7, 2
	createvisualtask AnimTask_ShakeMon, 3, 1, 5, 0, 7, 2
	waitforvisualfinish
	end

Move_WISH: @ 81D2D66
	loadspritegfx ANIM_TAG_GOLD_STARS
	loadspritegfx ANIM_TAG_SPARKLE_2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 0, 10, rgb(0, 0, 0)
	waitforvisualfinish
	panse_27 SE_W115, SOUND_PAN_TARGET, SOUND_PAN_ATTACKER, 253, 0
	createsprite gBattleAnimSpriteTemplate_84024E8, ANIM_BATTLER_ATTACKER, 40
	waitforvisualfinish
	delay 60
	loopsewithpan SE_W215, SOUND_PAN_ATTACKER, 16, 3
	call Unknown_81D5ECA
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 10, 0, rgb(0, 0, 0)
	waitforvisualfinish
	end

Move_STOCKPILE: @ 81D2DAE
	loadspritegfx ANIM_TAG_GRAY_ORB
	playsewithpan SE_W025, SOUND_PAN_ATTACKER
	createvisualtask sub_80E1F8C, 2, 2, 8, 1, 0, 12, 32767
	createvisualtask sub_812D674, 5
	call _81D2DEC
	call _81D2DEC
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 0, 12, 0, rgb(31, 31, 31)
	end
_81D2DEC:
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, 55, 55, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, -55, -55, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, 0, 55, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, 0, -55, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, 55, -34, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, 55, 34, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, -55, -34, 13
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D6350, ANIM_BATTLER_ATTACKER, 2, -55, 34, 13
	delay 1
	return

Move_SPIT_UP: @ 81D2E65
	loadspritegfx ANIM_TAG_RED_ORB_2
	loadspritegfx ANIM_TAG_IMPACT
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_812D6CC, 5
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 8, 2
	delay 45
	playsewithpan SE_W255, SOUND_PAN_ATTACKER
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 0, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 32, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 64, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 96, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 128, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 160, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 192, 12
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 224, 12
	delay 5
	jumpifmoveturn 2, _81D2F32
	jumpifmoveturn 3, _81D2F5B
_81D2EF5:
	delay 5
	createvisualtask sub_80A9058, 2, 0, 1, 8, 1, 0
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, -12, 10, 1, 1
	delay 5
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB538, ANIM_BATTLER_TARGET, 3, 12, -10, 1, 1
	waitforvisualfinish
	end
_81D2F32:
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 16
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 80
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 144
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 208
	goto _81D2EF5
_81D2F5B:
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 16
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 48
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 80
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 112
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 144
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 176
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 208
	createsprite gBattleAnimSpriteTemplate_83D7B60, ANIM_BATTLER_ATTACKER, 2, 240
	goto _81D2EF5

Move_SWALLOW: @ 81D2FA8
	loadspritegfx ANIM_TAG_BLUE_ORB
	loadspritegfx ANIM_TAG_BLUE_STAR
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_812D790, 5
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 8, 2
	delay 38
	playsewithpan SE_W255, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 2, 0, 12, 1
	call _81D2FF9
	jumpifmoveturn 2, _81D303B
	jumpifmoveturn 3, _81D3045
_81D2FF2:
	waitforvisualfinish
	call Unknown_81D5EF5
	end
_81D2FF9:
	createsprite gBattleAnimSpriteTemplate_8402578, ANIM_BATTLER_ATTACKER, 2, 0, -8
	delay 1
	createsprite gBattleAnimSpriteTemplate_8402578, ANIM_BATTLER_ATTACKER, 2, -24, -8
	delay 1
	createsprite gBattleAnimSpriteTemplate_8402578, ANIM_BATTLER_ATTACKER, 2, 16, -8
	delay 1
	createsprite gBattleAnimSpriteTemplate_8402578, ANIM_BATTLER_ATTACKER, 2, -16, -8
	delay 1
	createsprite gBattleAnimSpriteTemplate_8402578, ANIM_BATTLER_ATTACKER, 2, 24, -8
	delay 1
	return
_81D303B:
	call _81D2FF9
	goto _81D2FF2
_81D3045:
	call _81D2FF9
	call _81D2FF9
	goto _81D2FF2

Move_TRANSFORM: @ 81D3054
	monbg ANIM_BATTLER_ATTACKER
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W107, SOUND_PAN_ATTACKER, 48
	createvisualtask sub_812D7E8, 2, 0
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	end

Move_MORNING_SUN: @ 81D306C
	loadspritegfx ANIM_TAG_GREEN_STAR
	loadspritegfx ANIM_TAG_BLUE_STAR
	createvisualtask sub_812DB84, 5
	delay 8
	createvisualtask sub_80E2A38, 10, 1921, 8, 0, 12, 32767
	delay 14
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	call _81D30F2
	createvisualtask sub_80E2A38, 10, 1921, 3, 12, 0, 32767
	waitforvisualfinish
	waitsound
	call Unknown_81D5EF5
	end
_81D30F2:
	createsprite gBattleAnimSpriteTemplate_84025EC, ANIM_BATTLER_ATTACKER, 2, 30, 640
	delay 5
	return

Move_SWEET_SCENT: @ 81D3100
	loadspritegfx ANIM_TAG_PINK_PETAL
	playsewithpan SE_W230, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 100, 0, 100
	delay 25
	setpan 0
	call _81D3144
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 55, 0
	setpan SOUND_PAN_TARGET
	createvisualtask sub_80E1F8C, 2, 20, 1, 5, 5, 13, 22207
	call _81D3144
	waitforvisualfinish
	end
_81D3144:
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 70, 1, 64
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 60, 0, 64
	delay 5
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 80, 1, 64
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 58, 0, 120
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 100, 0, 120
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 90, 0, 64
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 48, 0, 64
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 95, 1, 80
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 100, 0, 120
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 75, 1, 64
	delay 2
	createsprite gBattleAnimSpriteTemplate_84026A4, ANIM_BATTLER_ATTACKER, 2, 85, 0, 120
	delay 2
	return

Move_HYPER_BEAM: @ 81D31EA
	loadspritegfx ANIM_TAG_ORBS
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 4, 0, 16, rgb(0, 0, 0)
	waitforvisualfinish
	delay 10
	playsewithpan SE_W063, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 4, 1
	waitforvisualfinish
	delay 30
	createsoundtask sub_812B058, 247, -64, 63, 1, 15, 0, 5
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 0, 4, 50, 1
	createvisualtask sub_80E21A8, 2, 10147, 1, 12, 31, 16, 0, 0
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 50, 1
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 11, 26425
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	call _81D331B
	createvisualtask sub_80E2A38, 10, 4, 2, 11, 0, 26425
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 4, 16, 0, rgb(0, 0, 0)
	end
_81D331B:
	createsprite gBattleAnimSpriteTemplate_83D6394, ANIM_BATTLER_TARGET, 2
	createsprite gBattleAnimSpriteTemplate_83D6394, ANIM_BATTLER_TARGET, 2
	delay 1
	return

Move_FLATTER: @ 81D332C
	loadspritegfx ANIM_TAG_SPOTLIGHT
	loadspritegfx ANIM_TAG_CONFETTI
	createvisualtask sub_812B340, 5, 223, 63
	createvisualtask sub_812CC44, 2
	createvisualtask sub_80E2D78, 2, 248, 3, 0, 10, 0
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_8402720, ANIM_BATTLER_TARGET, 2, 0, -8, 80
	delay 0
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 5, 2, ANIM_BATTLER_TARGET
	delay 10
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 5, 2, ANIM_BATTLER_TARGET
	delay 0
	createvisualtask sub_812B30C, 5, 229, -64
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	call _81D3415
	delay 5
	createvisualtask sub_812B30C, 5, 229, 63
	waitforvisualfinish
	createvisualtask sub_80E2D78, 2, 248, 3, 10, 0, 1
	waitforvisualfinish
	createvisualtask sub_812CCA8, 2
	end
_81D3415:
	createsprite gBattleAnimSpriteTemplate_8402708, ANIM_BATTLER_ATTACKER, 40, 0
	createsprite gBattleAnimSpriteTemplate_8402708, ANIM_BATTLER_ATTACKER, 40, 1
	return

Move_ROLE_PLAY: @ 81D3428
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 16, 32767
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 0, 10, rgb(0, 0, 0)
	waitforvisualfinish
	playsewithpan SE_W161, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W197, SOUND_PAN_ATTACKER, 30
	createvisualtask AnimTask_RolePlaySilhouette, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E2A38, 10, 4, 2, 16, 0, 32767
	delay 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 2, 10, 0, rgb(0, 0, 0)
	end

Move_REFRESH: @ 81D3485
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_SPARKLE_2
	playsewithpan SE_W287, SOUND_PAN_ATTACKER
	createvisualtask sub_81300A4, 2, 0
	waitforvisualfinish
	playsewithpan SE_W234, SOUND_PAN_ATTACKER
	call Unknown_81D5ECA
	waitforvisualfinish
	playsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 3, 10, 0, rgb(12, 24, 30)
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 0
	end

Move_BLAZE_KICK: @ 81D34C8
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_SMALL_EMBER
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W172, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA024, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 30
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 7, 32767
	delay 30
	playsewithpan SE_W007, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 14, 1
	createvisualtask sub_80E2A38, 10, 4, 2, 0, 0, 32767
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 3, 1, 0, 8, 0, 0
	call _81D11A2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_HYPER_VOICE: @ 81D3550
	loadspritegfx ANIM_TAG_THIN_RING
	call _81D3562
	waitforvisualfinish
	delay 8
	call _81D3562
	waitforvisualfinish
	end
_81D3562:
	createvisualtask sub_812B2B8, 5
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 31, 3, 8, 0, rgb(31, 31, 0)
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 5, ANIM_BATTLER_ATTACKER, 0
	createsprite gBattleAnimSpriteTemplate_83D798C, ANIM_BATTLER_ATTACKER, 0, 45, 0, 0, 0, 0, 0, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 1, 0, 6, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_DEF_PARTNER, 1, 0, 6, 1
	createvisualtask sub_80E26BC, 2, 1, 0, 6, 1
	return

Move_SAND_TOMB: @ 81D35D2
	loadspritegfx ANIM_TAG_MUD_SAND
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 0, 7, rgb(19, 17, 0)
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 43, 1
	playsewithpan SE_W328, SOUND_PAN_TARGET
	call _81D361F
	call _81D361F
	call _81D361F
	delay 22
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 7, 0, rgb(19, 17, 0)
	waitforvisualfinish
	end
_81D361F:
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 32, 528, 30, 10, 50, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 36, 480, 20, 13, -46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 37, 576, 20, 5, 42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 35, 400, 25, 8, -42, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 32, 512, 25, 13, 46, 1
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DAC7C, ANIM_BATTLER_TARGET, 2, 0, 37, 464, 30, 12, -50, 1
	delay 2
	return

Move_SHEER_COLD: @ 81D36AA
	fadetobg BG_ICE
	waitbgfadeout
	playsewithpan SE_W196, 0
	waitbgfadein
	loadspritegfx ANIM_TAG_ICE_CUBE
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask sub_807B920, 2
	waitplaysewithpan SE_W258, SOUND_PAN_TARGET, 17
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	restorebg
	waitbgfadein
	end

Move_ARM_THRUST: @ 81D36CF
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	loadspritegfx ANIM_TAG_IMPACT
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask sub_80A8E04, 5, 8, 5, 0, 0
	delay 6
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 3
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA144, ANIM_BATTLER_TARGET, 2, 10, -8, 14, 3
	waitforvisualfinish
	createvisualtask sub_80A8E04, 5, 8, 5, 0, 1
	playsewithpan SE_W003, SOUND_PAN_TARGET
	choosetwoturnanim _81D373C, _81D3750
_81D3728:
	createvisualtask AnimTask_ShakeMon, 5, 1, 4, 0, 6, 1
	waitforvisualfinish
	blendoff
	end
_81D373C:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, 8, 0, 1, 2
	goto _81D3728
_81D3750:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -8, 0, 1, 2
	goto _81D3728

Move_MUDDY_WATER: @ 81D3764
	panse_1B SE_W250, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createvisualtask AnimTask_CreateSurfWave, 2, 1
	waitforvisualfinish
	end

Move_BULLET_SEED: @ 81D3776
	loadspritegfx ANIM_TAG_SEED
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 30, 1
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D7628, ANIM_BATTLER_TARGET, 2, 20, 0
	waitforvisualfinish
	end

Move_DRAGON_CLAW: @ 81D380C
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loadspritegfx ANIM_TAG_CLAW_SLASH
	playsewithpan SE_W221B, SOUND_PAN_ATTACKER
	createvisualtask sub_80E2A38, 10, 2, 4, 0, 8, 639
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 15, 1
	call _81D39E9
	call _81D39E9
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 528, 30, 13, 50, 0
	delay 2
	createvisualtask sub_812B30C, 5, 136, 63
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, -10, 0
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, -10, 10, 0
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, -4, 1, 10, 3, 1
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 32, 480, 20, 16, -46, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 576, 20, 8, 42, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 31, 400, 25, 11, -42, 0
	delay 2
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 512, 25, 16, 46, 0
	delay 2
	createvisualtask sub_812B30C, 5, 136, 63
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, -10, 1
	createsprite gBattleAnimSpriteTemplate_83DB288, ANIM_BATTLER_TARGET, 2, 10, 10, 1
	createsprite gBattleAnimSpriteTemplate_83DB428, ANIM_BATTLER_ATTACKER, 2, -4, 1, 10, 3, 1
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 464, 30, 15, -50, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 528, 30, 13, 50, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 32, 480, 20, 16, -46, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 576, 20, 8, 42, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 31, 400, 25, 11, -42, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 512, 25, 16, 46, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 464, 30, 15, -50, 0
	createvisualtask sub_80E2A38, 10, 2, 4, 8, 0, 639
	waitforvisualfinish
	end
_81D39E9:
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 528, 30, 13, 50, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 32, 480, 20, 16, -46, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 576, 20, 8, 42, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 31, 400, 25, 11, -42, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 28, 512, 25, 16, 46, 0
	delay 2
	createsprite gBattleAnimSpriteTemplate_83DACD0, ANIM_BATTLER_ATTACKER, 2, 0, 33, 464, 30, 15, -50, 0
	delay 2
	return

Unknown_81D3A74: @ 81D3A74
	end

Move_MUD_SHOT: @ 81D3A75
	loadspritegfx ANIM_TAG_BROWN_ORB
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	createvisualtask AnimTask_ShakeMon, 5, 0, 0, 2, 46, 1
	delay 6
	createvisualtask sub_80D3630, 5, 100
	panse_1B SE_W250, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 1, 0
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 43, 1
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	call _81D3AEF
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D3AEF:
	createsprite gBattleAnimSpriteTemplate_83D920C, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D920C, ANIM_BATTLER_ATTACKER, 3, 10, 10, 0, 16
	delay 2
	return

Move_METEOR_MASH: @ 81D3B12
	loadspritegfx ANIM_TAG_GOLD_STARS
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	panse_1B SE_W112, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 3, 0
	fadetobg BG_COSMIC
	waitbgfadein
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_8402A3C, ANIM_BATTLER_TARGET, 3, -48, -64, 72, 32, 30
	delay 10
	createsprite gBattleAnimSpriteTemplate_8402A3C, ANIM_BATTLER_TARGET, 3, -112, -64, 8, 32, 30
	delay 40
	createsprite gBattleAnimSpriteTemplate_83DA024, ANIM_BATTLER_TARGET, 3, 0, 0, 0, 30
	createsprite gBattleAnimSpriteTemplate_8402A3C, ANIM_BATTLER_TARGET, 3, -80, -64, 40, 32, 30
	delay 20
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 5, 0, 20, 1
	waitforvisualfinish
	delay 10
	restorebg
	waitbgfadein
	waitforvisualfinish
	end

Move_REVENGE: @ 81D3B99
	loadspritegfx ANIM_TAG_PURPLE_SCRATCH
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA198, ANIM_BATTLER_ATTACKER, 2, 10, -10
	waitforvisualfinish
	createvisualtask sub_80E1F8C, 2, 2, 0, 4, 2, 8, 31
	waitforvisualfinish
	unloadspritegfx ANIM_TAG_PURPLE_SCRATCH
	loadspritegfx ANIM_TAG_PURPLE_SWIPE
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 4
	delay 4
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA1E0, ANIM_BATTLER_TARGET, 2, 10, -10
	waitforvisualfinish
	unloadspritegfx ANIM_TAG_PURPLE_SWIPE
	loadspritegfx ANIM_TAG_IMPACT
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 3, 0, 10, 1
	createsprite gBattleAnimSpriteTemplate_83DB550, ANIM_BATTLER_TARGET, 3, -10, -8, 1, 1, 8
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB550, ANIM_BATTLER_TARGET, 3, 10, 8, 1, 1, 8
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_POISON_FANG: @ 81D3C30
	loadspritegfx ANIM_TAG_FANG_ATTACK
	loadspritegfx ANIM_TAG_POISON_BUBBLE
	playsewithpan SE_W044, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_840233C, ANIM_BATTLER_TARGET, 2
	delay 10
	createvisualtask AnimTask_ShakeMon, 3, 1, 3, 0, 10, 1
	waitforvisualfinish
	createvisualtask sub_80E1F8C, 2, 4, 0, 4, 0, 12, 26650
	call PoisonBubblesAnim
	waitforvisualfinish
	end

Move_SUBSTITUTE: @ 81D3C6F
	playsewithpan SE_W213, SOUND_PAN_ATTACKER
	createvisualtask sub_81312E4, 2
	end

Move_FRENZY_PLANT: @ 81D3C7B
	loadspritegfx ANIM_TAG_ROOTS
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 1, 2, 0, 5, rgb(0, 0, 0)
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 10, 8, 2, 0, 0, 100
	playsewithpan SE_W010, SOUND_PAN_ATTACKER
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 20, -8, -2, 0, 1, 95
	playsewithpan SE_W010, 213
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 30, 8, -4, 0, 0, 90
	playsewithpan SE_W010, 234
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 40, -8, 4, 0, 1, 85
	playsewithpan SE_W010, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 50, 8, 0, 0, 0, 85
	playsewithpan SE_W010, 21
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 60, -8, -2, 0, 1, 85
	playsewithpan SE_W010, 42
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 75, 8, 0, 0, 0, 85
	playsewithpan SE_W010, SOUND_PAN_TARGET
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 85, 16, 6, 0, 3, 80
	playsewithpan SE_W010, SOUND_PAN_TARGET
	delay 5
	createsprite gBattleAnimSpriteTemplate_83D6670, ANIM_BATTLER_ATTACKER, 2, 85, -16, -6, 0, 2, 75
	playsewithpan SE_W010, SOUND_PAN_TARGET
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -10, 1, 3
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 3, 1, 8, 0, 20, 1
	delay 3
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 8, 1, 3
	playsewithpan SE_W003, SOUND_PAN_TARGET
	delay 3
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, -3, 1, 2
	playsewithpan SE_W003, SOUND_PAN_TARGET
	delay 3
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -3, 1, 1, 2
	playsewithpan SE_W003, SOUND_PAN_TARGET
	delay 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, 1, 1, 1
	playsewithpan SE_W003, SOUND_PAN_TARGET
	delay 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 10, 1, 1
	playsewithpan SE_W003, SOUND_PAN_TARGET
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 1, 2, 5, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Move_METAL_SOUND: @ 81D3E1F
	loadspritegfx ANIM_TAG_METAL_SOUND_WAVES
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_2A ANIM_BATTLER_TARGET
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 2, 0, 8, 1
	call _81D3E52
	call _81D3E52
	call _81D3E52
	call _81D3E52
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	waitforvisualfinish
	end
_81D3E52:
	panse_1B SE_W103, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	createsprite gBattleAnimSpriteTemplate_83D7564, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 30, 0
	delay 2
	return

Move_FOCUS_PUNCH: @ 81D3E6F
	goto _81D3E76
_81D3E74:
	waitforvisualfinish
	end
_81D3E76:
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_HANDS_AND_FEET
	delay 1
	createvisualtask sub_80E4200, 2
	jumpargeq 7, 1, _81D3F2F
	createvisualtask sub_812C924, 2
	jumpargeq 7, 0, _81D3F21
	jumpargeq 7, 1, _81D3F28
_81D3EA4:
	waitbgfadein
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W207, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA214, ANIM_BATTLER_TARGET, 2
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 8, 0, 24, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 2, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, -6, 1, 0
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 8, 1, 0
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	waitforvisualfinish
	restorebg
	waitbgfadein
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81D3E74
_81D3F21:
	fadetobg BG_IMPACT_OPPONENT
	goto _81D3EA4
_81D3F28:
	fadetobg BG_IMPACT_PLAYER
	goto _81D3EA4
_81D3F2F:
	fadetobg BG_IMPACT_CONTESTS
	goto _81D3EA4

Move_RETURN: @ 81D3F36
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createvisualtask AnimTask_GetReturnPowerLevel, 2
	delay 2
	jumpargeq 7, 0, _81D3F6C
	jumpargeq 7, 1, _81D3FBE
	jumpargeq 7, 2, _81D401E
	jumpargeq 7, 3, _81D4139
_81D3F67:
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D3F6C:
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 139, 63
	goto _81D3F67
_81D3FBE:
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	delay 11
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 5, 4
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 2
	createvisualtask sub_812B30C, 5, 141, 63
	goto _81D3F67
_81D401E:
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 6, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 10, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, -5, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -5, 3, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	goto _81D3F67
_81D4139:
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 0, 6, rgb(0, 0, 0)
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, -5, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 12, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	waitforvisualfinish
	delay 4
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 8, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	waitforvisualfinish
	delay 2
	createvisualtask sub_80E2DD8, 2, 0, 4, 5, 1
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 1, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	createvisualtask sub_80E2DD8, 2, 0, 4, 5, 1
	waitforvisualfinish
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 2, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	delay 5
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	createvisualtask sub_80E2DD8, 2, 0, 4, 5, 1
	waitforvisualfinish
	call _81D4371
	call _81D4371
	call _81D4371
	call _81D4371
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -10, -8, 1, 0
	createvisualtask sub_812B30C, 5, 141, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 8, 0, 24, 1
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 10, 1, 0
	createvisualtask sub_812B30C, 5, 141, 63
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 3, -5, 1, 0
	createvisualtask sub_812B30C, 5, 141, 63
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -5, 3, 1, 0
	createvisualtask sub_812B30C, 5, 141, 63
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6, 0, rgb(0, 0, 0)
	goto _81D3F67
_81D4371:
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 3, ANIM_BATTLER_ATTACKER
	createvisualtask sub_812B340, 5, 167, -64
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask sub_812B30C, 5, 123, 63
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	createvisualtask sub_80E2DD8, 2, 0, 4, 5, 1
	waitforvisualfinish
	return

Move_COSMIC_POWER: @ 81D43C5
	loadspritegfx ANIM_TAG_SPARKLE_2
	createvisualtask sub_812B340, 5, 243, 0
	playsewithpan SE_W322, 0
	createvisualtask sub_80E3A08, 2, 0, 0, 15, 0
	waitforvisualfinish
	fadetobg BG_COSMIC
	waitbgfadeout
	createvisualtask sub_80E3A58, 2, 0, 128, 0, -1
	waitbgfadein
	delay 70
	createvisualtask sub_812B30C, 5, 228, -64
	createsprite gBattleAnimSpriteTemplate_83D6C88, ANIM_BATTLER_ATTACKER, 2, -15, 0, 0, 0, 32, 60
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D6C88, ANIM_BATTLER_ATTACKER, 2, 12, -5, 0, 0, 32, 60
	delay 40
	createvisualtask sub_80E3A08, 2, 0, 15, 0, 0
	waitforvisualfinish
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	waitforvisualfinish
	end

Move_BLAST_BURN: @ 81D444A
	loadspritegfx ANIM_TAG_FIRE_PLUME
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W221, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -32, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -20, -10, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 0, -16, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 20, -10, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 32, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 20, 10, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 0, 16, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -20, 10, 24, 0, 0, 0
	delay 25
	playsewithpan SE_W172B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -64, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 6, -40, -20, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 70, 0, -32, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 70, 40, -20, 24, 0, 0, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 6, 0, 8, 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 64, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 40, 20, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 0, 32, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -40, 20, 24, 0, 0, 0
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 25
	playsewithpan SE_W172B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -96, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 6, -60, -30, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 70, 0, -48, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 70, 60, -30, 24, 0, 0, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -4, 3, 1, 0
	createvisualtask AnimTask_ShakeMon, 5, 1, 12, 0, 20, 1
	createvisualtask sub_80E26BC, 2, 2, 0, 10, 1
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 96, 0, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 66, 60, 30, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, 0, 48, 24, 0, 0, 0
	createsprite gBattleAnimSpriteTemplate_83D9538, ANIM_BATTLER_ATTACKER, 2, -60, 30, 24, 0, 0, 0
	createvisualtask sub_80E2324, 2, 257, 257, 257
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_ROCK_TOMB: @ 81D468C
	loadspritegfx ANIM_TAG_X_SIGN
	loadspritegfx ANIM_TAG_ROCKS
	createvisualtask sub_80E26BC, 2, 2, 0, 10, 1
	waitforvisualfinish
	createsprite gBattleAnimSpriteTemplate_83DADA8, ANIM_BATTLER_TARGET, 2, 20, 12, 64, 114, 0
	delay 8
	createvisualtask sub_80E26BC, 2, 0, 2, 3, 1
	playsewithpan SE_W070, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DADA8, ANIM_BATTLER_TARGET, 2, -20, 12, 64, 98, 0
	delay 8
	createvisualtask sub_80E26BC, 2, 0, 2, 3, 1
	playsewithpan SE_W070, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DADA8, ANIM_BATTLER_TARGET, 66, 3, 6, 64, 82, 0
	delay 8
	createvisualtask sub_80E26BC, 2, 0, 2, 3, 1
	playsewithpan SE_W070, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DADA8, ANIM_BATTLER_TARGET, 2, -3, 13, 64, 66, 0
	delay 8
	createvisualtask sub_80E26BC, 2, 0, 2, 3, 1
	playsewithpan SE_W070, SOUND_PAN_TARGET
	delay 24
	playsewithpan SE_W063, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA8F4, ANIM_BATTLER_TARGET, 5, 1, 50
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 20, 1
	createvisualtask sub_80E26BC, 2, 2, 0, 10, 1
	waitforvisualfinish
	end

Move_SILVER_WIND: @ 81D4773
	loadspritegfx ANIM_TAG_SPARKLE_6
	panse_1B SE_W016, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	playsewithpan SE_W234, 0
	delay 0
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_29
	delay 0
	createvisualtask sub_80E2A7C, 10, 1, 0, 0, 4, 0
	createvisualtask sub_80E3B78, 2
	jumpargeq 7, 1, _81D4974
	fadetobg BG_BUG_OPPONENT
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, 1536, 0, 0, -1
_81D47BA:
	delay 0
	createvisualtask sub_80E2A38, 10, 1, 0, 4, 4, 0
	waitbgfadein
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_TARGET, 66, -32, 16, 0, 6, 2, 3, 1
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_TARGET, 66, -8, 18, 64, 3, 2, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_ATTACKER, 120, -24, 18, 90, 5, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_ATTACKER, 120, -40, 14, 128, 4, 1, 2, 1
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_TARGET, 66, -32, 16, 0, 6, 2, 3, 1
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_TARGET, 66, -8, 18, 64, 3, 2, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_ATTACKER, 120, -24, 18, 90, 5, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_ATTACKER, 120, -40, 14, 128, 4, 1, 2, 1
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_TARGET, 66, -32, 16, 0, 6, 2, 3, 1
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_TARGET, 66, -8, 18, 64, 3, 2, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_ATTACKER, 120, -24, 18, 90, 5, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_ATTACKER, 120, -40, 14, 128, 4, 1, 2, 1
	delay 6
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_TARGET, 66, -4, 16, 0, 6, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D693C, ANIM_BATTLER_TARGET, 66, -16, 12, 192, 5, 2, 3, 1
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_TARGET, 66, -4, 16, 0, 6, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D6954, ANIM_BATTLER_TARGET, 66, -16, 12, 192, 5, 2, 3, 1
	delay 0
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_TARGET, 66, -4, 16, 0, 6, 1, 2, 1
	createsprite gBattleAnimSpriteTemplate_83D696C, ANIM_BATTLER_TARGET, 66, -16, 12, 192, 5, 2, 3, 1
	waitforvisualfinish
	playsewithpan SE_W016B, SOUND_PAN_TARGET
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	delay 0
	restorebg
	waitbgfadeout
	createvisualtask sub_80E2A7C, 10, 1, 0, 4, 0, 0
	setarg ARG_RET_ID, -1
	waitbgfadein
	end
_81D4974:
	fadetobg BG_BUG_PLAYER
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -1536, 0, 0, -1
	goto _81D47BA

Move_SNATCH: @ 81D498B
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_WindUpLunge, 5, ANIM_BATTLER_ATTACKER, -12, 4, 10, 10, 12, 6
	end

Move_DIVE: @ 81D49A5
	loadspritegfx ANIM_TAG_SPLASH
	loadspritegfx ANIM_TAG_SWEAT_BEAD
	choosetwoturnanim _81D49B4, _81D4A09
_81D49B4:
	loadspritegfx ANIM_TAG_ROUND_SHADOW
	playsewithpan SE_W029, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA5D8, ANIM_BATTLER_ATTACKER, 2, 0, 0, 13, 336
	waitforvisualfinish
	playsewithpan SE_W291, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DA614, ANIM_BATTLER_ATTACKER, 3, 0
	call _81D49F2
	call _81D49F2
	call _81D49F2
	call _81D49F2
	call _81D49F2
	end
_81D49F2:
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_ATTACKER, 5, 0, 0
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_ATTACKER, 5, 1, 0
	return
_81D4A09:
	loadspritegfx ANIM_TAG_WATER_IMPACT
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W153, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA614, ANIM_BATTLER_TARGET, 3, 1
	call _81D4A48
	call _81D4A48
	call _81D4A48
	call _81D4A48
	call _81D4A48
	delay 12
	call _81C9502
	waitforvisualfinish
	visible ANIM_BATTLER_ATTACKER
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D4A48:
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_TARGET, 5, 0, 1
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_TARGET, 5, 1, 1
	return

Move_ROCK_BLAST: @ 81D4A5F
	loadspritegfx ANIM_TAG_ROCKS
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 6
	delay 3
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DADE8, ANIM_BATTLER_TARGET, 2, 16, 0, 0, 0, 25, 257
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_TARGET, 2, 0, 0, 20, 24, 14, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 5, 1
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_TARGET, 2, 5, 0, -20, 24, 14, 1
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_TARGET, 2, 0, 5, 20, -24, 14, 2
	createsprite gBattleAnimSpriteTemplate_83DAC64, ANIM_BATTLER_TARGET, 2, -5, 0, -20, -24, 14, 2
	waitforvisualfinish
	end

Move_OVERHEAT: @ 81D4AFC
	loadspritegfx ANIM_TAG_SMALL_EMBER
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 18
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 5, rgb(28, 0, 0)
	waitforvisualfinish
	createvisualtask sub_80E4028, 5, 0, 1
	delay 1
	createvisualtask sub_80E4178, 5, 0
	delay 1
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask sub_80E4028, 5, 1, 0
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 1, 0, 13, rgb(28, 0, 0)
	createvisualtask AnimTask_ShakeMon, 5, 0, 2, 0, 15, 1
	waitforvisualfinish
	playsewithpan SE_W172B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 0, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 32, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 64, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 96, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 128, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 160, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 192, 30, 25, -20
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 224, 30, 25, -20
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 0, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 32, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 64, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 96, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 128, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 160, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 192, 30, 25, 0
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 224, 30, 25, 0
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 0, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 32, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 64, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 96, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 2, 1, 128, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 160, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 192, 30, 25, 10
	createsprite gBattleAnimSpriteTemplate_83DB100, ANIM_BATTLER_ATTACKER, 66, 1, 224, 30, 25, 10
	delay 5
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -5, 3, 1, 0
	playsewithpan SE_W007, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 10, 0, 25, 1
	delay 6
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 8, -5, 1, 0
	playsewithpan SE_W007, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 10, 10, 1, 0
	playsewithpan SE_W007, SOUND_PAN_TARGET
	delay 8
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 0
	playsewithpan SE_W007, SOUND_PAN_TARGET
	createvisualtask sub_80E4178, 5, 1
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, -1, 0, 13, rgb(18, 18, 18)
	createvisualtask AnimTask_ShakeMon, 5, 0, 3, 0, 15, 1
	waitforvisualfinish
	createvisualtask sub_80E40D0, 5, 0, 1
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 5, 0, rgb(28, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	waitforvisualfinish
	delay 15
	createvisualtask sub_80E40D0, 5, 1, 0
	delay 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 0, 13, 0, rgb(18, 18, 18)
	waitforvisualfinish
	end

Move_HYDRO_CANNON: @ 81D4DDE
	loadspritegfx ANIM_TAG_WATER_ORB
	loadspritegfx ANIM_TAG_WATER_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	playsewithpan SE_W057, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D92D0, ANIM_BATTLER_TARGET, 2
	delay 10
	createvisualtask sub_80E2324, 2, 257, 257, 257
	delay 30
	panse_1B SE_W056, SOUND_PAN_ATTACKER, SOUND_PAN_TARGET, 2, 0
	call _81D4EA8
	createvisualtask AnimTask_ShakeMon, 5, 1, 10, 0, 40, 1
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	call _81D4EA8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	call _81D4EA8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	call _81D4EA8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	call _81D4EA8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	call _81D4EA8
	createsprite gBattleAnimSpriteTemplate_83DB4D8, ANIM_BATTLER_TARGET, 2, 0, 0, 1, 0
	waitforvisualfinish
	createvisualtask sub_80E2324, 2, 257, 257, 257
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D4EA8:
	createsprite gBattleAnimSpriteTemplate_83D92E8, ANIM_BATTLER_TARGET, 2, 10, -10, 0, 0, 15, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D92E8, ANIM_BATTLER_TARGET, 2, 10, -10, 0, 0, 15, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D92E8, ANIM_BATTLER_TARGET, 2, 10, -10, 0, 0, 15, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D92E8, ANIM_BATTLER_TARGET, 2, 10, -10, 0, 0, 15, 257
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D92E8, ANIM_BATTLER_TARGET, 2, 10, -10, 0, 0, 15, 257
	return

Move_ASTONISH: @ 81D4F10
	loadspritegfx ANIM_TAG_SWEAT_BEAD
	playsewithpan SE_W227, SOUND_PAN_ATTACKER
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 6
	delay 25
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_TARGET, 5, 0, 1
	playsewithpan SE_W166, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DA62C, ANIM_BATTLER_TARGET, 5, 1, 1
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 5, 1
	createvisualtask sub_80D1E38, 3
	waitforvisualfinish
	end

Move_SEISMIC_TOSS: @ 81D4F58
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ROCKS
	setarg ARG_RET_ID, 0
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	waitforvisualfinish
	createvisualtask sub_80DDA4C, 3
	delay 1
	fadetobg BG_SEISMICTOSS_SKUUPPERCUT
	waitbgfadeout
	createvisualtask sub_80DDA8C, 3
	playsewithpan SE_W327, 0
	waitbgfadein
	waitforvisualfinish
	createvisualtask sub_80DDAF0, 3
	jumpargeq 7, 0, _81D4FAB
	jumpargeq 7, 1, _81D4FBC
	jumpargeq 7, 2, _81D4FD4
_81D4FA0:
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, 4095
	waitbgfadein
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end
_81D4FAB:
	call _81D4FF3
	delay 16
	call _81D5054
	goto _81D4FA0
_81D4FBC:
	call _81D4FF3
	delay 14
	call _81D5054
	delay 14
	call _81D4FF3
	goto _81D4FA0
_81D4FD4:
	call _81D5054
	delay 10
	call _81D4FF3
	delay 10
	call _81D5054
	delay 10
	call _81D4FF3
	goto _81D4FA0
_81D4FF3:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -10, -8, 1, 1
	playsewithpan SE_W070, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 5, 1
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -12, 27, 2, 3
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 8, 28, 3, 4
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -4, 30, 2, 3
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 12, 25, 4, 4
	return
_81D5054:
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 10, -8, 1, 1
	playsewithpan SE_W088, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 5, 1
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -12, 32, 3, 4
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 8, 31, 2, 2
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -4, 28, 2, 3
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 12, 30, 4, 3
	return

Move_MAGIC_COAT: @ 81D50B5
	loadspritegfx ANIM_TAG_ORANGE_LIGHT_WALL
	setalpha 0, 16
	waitplaysewithpan SE_W112, SOUND_PAN_ATTACKER, 15
	createsprite gBattleAnimSpriteTemplate_83DA708, ANIM_BATTLER_ATTACKER, 3, 40, 0, 10170
	waitforvisualfinish
	delay 1
	blendoff
	end

Move_WATER_PULSE: @ 81D50D2
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	loadspritegfx ANIM_TAG_BLUE_RING_2
	monbg ANIM_BATTLER_TARGET
	monbgprio_28 1
	playsewithpan SE_W145C, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 0, 7, rgb(0, 25, 28)
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D9408, ANIM_BATTLER_ATTACKER, 66, 100, 100, 8, 1, 20, 40, 0
	createsprite gBattleAnimSpriteTemplate_83D9408, ANIM_BATTLER_ATTACKER, 66, 20, 100, 16, 2, 10, 35, 1
	createsprite gBattleAnimSpriteTemplate_83D9408, ANIM_BATTLER_ATTACKER, 66, 200, 80, 8, 1, 40, 20, 0
	createsprite gBattleAnimSpriteTemplate_83D9408, ANIM_BATTLER_ATTACKER, 66, 80, 60, 10, 3, 20, 50, 0
	createsprite gBattleAnimSpriteTemplate_83D9408, ANIM_BATTLER_ATTACKER, 66, 140, 100, 16, 1, 20, 30, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	waitforvisualfinish
	playsewithpan SE_W202, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D757C, ANIM_BATTLER_TARGET, 2, 0, 0, 40, 15
	delay 5
	playsewithpan SE_W202, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D757C, ANIM_BATTLER_TARGET, 2, 0, 0, 40, 15
	delay 5
	playsewithpan SE_W202, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D757C, ANIM_BATTLER_TARGET, 2, 0, 0, 40, 15
	delay 13
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 8, 18, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 7, 0, rgb(0, 25, 28)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

Move_PSYCHO_BOOST: @ 81D51C7
	loadspritegfx ANIM_TAG_CIRCLE_OF_LIGHT
	monbg ANIM_BATTLER_ATK_PARTNER
	fadetobg BG_PSYCHIC
	waitbgfadeout
	createvisualtask sub_812C624, 5
	waitbgfadein
	delay 6
	createvisualtask sub_80E1F8C, 2, 1, 2, 8, 0, 10, 0
	delay 0
	monbgprio_28 0
	setalpha 8, 8
	delay 10
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_ATTACKER, 3, 0, 240, 0
	loopsewithpan SE_W060B, SOUND_PAN_ATTACKER, 14, 10
	createsprite gBattleAnimSpriteTemplate_83DAA68, ANIM_BATTLER_ATTACKER, 2
	delay 110
	loopsewithpan SE_W060B, SOUND_PAN_ATTACKER, 7, 10
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, -8, 1, 24, 1
	playsewithpan SE_W043, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	call BackgroundRestore
	end

Move_KNOCK_OFF: @ 81D523B
	loadspritegfx ANIM_TAG_SLAM_HIT_2
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gHorizontalLungeSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 4, 6
	delay 4
	playsewithpan SE_W233, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_8402AE4, ANIM_BATTLER_TARGET, 2, -16, -16
	delay 8
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 5, 1, 32767, 10, 0, 0
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, 0, 1, 2
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -12, 10, 0, 3
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 5
	delay 3
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 0, 3, 6, 1
	delay 5
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6
	delay 10
	waitforvisualfinish
	end

Move_DOOM_DESIRE: @ 81D52CB
	createvisualtask sub_80E0EE8, 2
	delay 1
	monbg ANIM_BATTLER_ATK_PARTNER
	createvisualtask sub_80E0E24, 5, 1, 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 4, rgb(0, 0, 0)
	waitforvisualfinish
	setalpha 8, 8
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -4, -4, 15, ANIM_BATTLER_ATTACKER, 1
	waitforvisualfinish
	delay 20
	createvisualtask sub_80E0E24, 5, 1, 1
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 4, 0, rgb(0, 0, 0)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATK_PARTNER
	blendoff
	end

Move_DOOM_DESIRE_Activate: @ 81D532F
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 0, 16, rgb(31, 31, 31)
	waitforvisualfinish
	delay 10
	createvisualtask sub_812E14C, 5
	delay 5
	playsewithpan SE_W109, SOUND_PAN_ATTACKER
	delay 10
	playsewithpan SE_W109, 0
	delay 10
	playsewithpan SE_W109, SOUND_PAN_TARGET
	delay 23
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 10, 0, 20, 1
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 16, 16, 1, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 16, 0, rgb(31, 31, 31)
	waitforvisualfinish
	end

Move_SKY_UPPERCUT: @ 81D53ED
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	fadetobg BG_SEISMICTOSS_SKUUPPERCUT
	waitbgfadeout
	playsewithpan SE_W327, SOUND_PAN_ATTACKER
	createvisualtask sub_80D9C80, 5, 55
	waitbgfadein
	setalpha 12, 8
	delay 38
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 28, 0, 0, 5
	delay 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 4, 0, 6, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -28, 28, 1, 1
	delay 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -15, 8, 1, 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	delay 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -5, -12, 1, 1
	delay 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 0, -32, 1, 1
	delay 1
	playsewithpan SE_W233B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 5, -52, 1, 1
	createsprite gSlideMonToOffsetSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, -26, 16, 1, 4
	delay 4
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 0, 3, 6, 1
	delay 30
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 6
	delay 4
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 0, 6
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	end

Move_SECRET_POWER: @ 81D54E6
	createvisualtask AnimTask_GetBattleTerrain, 5
	jumpargeq 0, 0, Move_NEEDLE_ARM
	jumpargeq 0, 1, Move_MAGICAL_LEAF
	jumpargeq 0, 2, Move_MUD_SHOT
	jumpargeq 0, 3, Move_WATERFALL
	jumpargeq 0, 4, Move_SURF
	jumpargeq 0, 5, Move_BUBBLE_BEAM
	jumpargeq 0, 6, Move_ROCK_THROW
	jumpargeq 0, 7, Move_BITE
	jumpargeq 0, 8, Move_STRENGTH
	goto Move_SLAM

Move_TWISTER: @ 81D553A
	loadspritegfx ANIM_TAG_LEAF
	loadspritegfx ANIM_TAG_IMPACT
	loadspritegfx ANIM_TAG_ROCKS
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	playsewithpan SE_W239, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 120, 70, 5, 70, 30
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 115, 55, 6, 60, 25
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 115, 60, 7, 60, 30
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 115, 55, 10, 60, 30
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DAE18, ANIM_BATTLER_TARGET, 2, 100, 50, 4, 50, 26
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 105, 25, 8, 60, 20
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 115, 40, 10, 48, 30
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DAE18, ANIM_BATTLER_TARGET, 2, 120, 30, 6, 45, 25
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 115, 35, 10, 60, 30
	delay 3
	createsprite gBattleAnimSpriteTemplate_83DAE18, ANIM_BATTLER_TARGET, 2, 105, 20, 8, 40, 0
	delay 3
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 20, 255, 15, 32, 0
	createsprite gBattleAnimSpriteTemplate_83D64B4, ANIM_BATTLER_TARGET, 2, 110, 10, 8, 32, 20
	waitforvisualfinish
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, -32, -16, 1, 3
	playsewithpan SE_W004, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 3, 0, 12, 1
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_DEF_PARTNER, 3, 0, 12, 1
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 3
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 4
	createsprite gBattleAnimSpriteTemplate_83DB4F0, ANIM_BATTLER_TARGET, 3, 1, 3
	playsewithpan SE_W004, SOUND_PAN_TARGET
	delay 4
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 3, 32, 20, 1, 3
	playsewithpan SE_W004, SOUND_PAN_TARGET
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_MAGICAL_LEAF: @ 81D5699
	loadspritegfx ANIM_TAG_LEAF
	loadspritegfx ANIM_TAG_RAZOR_LEAF
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	delay 1
	loopsewithpan SE_W077, SOUND_PAN_ATTACKER, 10, 5
	createvisualtask sub_80CC5F8, 5
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -2, 10
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -1, -1, 15
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -4, -4, 7
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 3, -3, 11
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -1, -6, 8
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 2, -1, 12
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -4, 13
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 4, -5, 7
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, 2, -6, 11
	delay 2
	createsprite gBattleAnimSpriteTemplate_83D649C, ANIM_BATTLER_ATTACKER, 2, -3, -5, 8
	delay 60
	playsewithpan SE_W013B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D64E4, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 32, 20, 0
	createsprite gBattleAnimSpriteTemplate_83D64E4, ANIM_BATTLER_TARGET, 3, 20, -10, 20, 0, 32, -20, 0
	delay 30
	playsewithpan SE_W013, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, -10, -4, 1, 2
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, 10, 4, 1, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	delay 20
	setarg ARG_RET_ID, -1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

Move_ICE_BALL: @ 81D57BA
	loadspritegfx ANIM_TAG_ICE_CHUNK
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	createvisualtask AnimTask_CountIceBallThrows, 5, 0
	jumpargeq 0, 4, _81D5831
_81D57D1:
	playsewithpan SE_W196, SOUND_PAN_ATTACKER
	createsprite gIceBallSpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 0, -12, -16, 30, -40
	delay 28
	playsewithpan SE_W280, SOUND_PAN_TARGET
	createvisualtask AnimTask_CountIceBallThrows, 5, 0
	jumpargeq 0, 0, _81D5842
	jumpargeq 0, 1, _81D5871
	jumpargeq 0, 2, _81D58AA
	jumpargeq 0, 3, _81D58ED
	jumpargeq 0, 4, _81D5935
_81D581F:
	createvisualtask AnimTask_CountIceBallThrows, 5, 0
	jumpargeq 0, 4, _81D5838
_81D5830:
	end
_81D5831:
	fadetobg BG_ICE
	goto _81D57D1
_81D5838:
	waitbgfadein
	delay 45
	restorebg
	waitbgfadein
	goto _81D5830
_81D5842:
	createvisualtask sub_80A9058, 2, 0, 1, 8, 1, 0
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	goto _81D581F
_81D5871:
	createvisualtask sub_80A9058, 2, 0, 1, 10, 1, 0
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	goto _81D581F
_81D58AA:
	createvisualtask sub_80A9058, 2, 0, 1, 14, 1, 0
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	goto _81D581F
_81D58ED:
	createvisualtask sub_80A9058, 2, 0, 1, 18, 1, 0
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	goto _81D581F
_81D5935:
	createvisualtask sub_80A9058, 2, 0, 1, 30, 1, 0
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	call _81D597D
	goto _81D581F
_81D597D:
	createsprite gIceBallParticleSpriteTemplate, ANIM_BATTLER_TARGET, 4, -12, -16
	return

Move_WEATHER_BALL: @ 81D5989
	loadspritegfx ANIM_TAG_WEATHER_BALL
	createsprite gVerticalDipSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 8, 1, ANIM_BATTLER_ATTACKER
	delay 8
	playsewithpan SE_W207, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83930A8, ANIM_BATTLER_ATTACKER, 2
	waitforvisualfinish
	delay 15
	playsewithpan SE_W197, 0
	createsprite gBattleAnimSpriteTemplate_83DB3DC, ANIM_BATTLER_ATTACKER, 2, 31, 5, 1, 32767, 10, 0, 0
	waitforvisualfinish
	createvisualtask AnimTask_GetWeather, 2
	delay 1
	jumpargeq 7, 0, _81D59F4
	jumpargeq 7, 1, _81D5A31
	jumpargeq 7, 2, _81D5A95
	jumpargeq 7, 3, _81D5AF9
	jumpargeq 7, 4, _81D5B99
_81D59F4:
	loadspritegfx ANIM_TAG_IMPACT
	createsprite gBattleAnimSpriteTemplate_83930C0, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 0, 0
	waitforvisualfinish
	playsewithpan SE_W025B, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 4, -10, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 8, 1
	waitforvisualfinish
	end
_81D5A31:
	loadspritegfx ANIM_TAG_SMALL_EMBER
	createsprite gBattleAnimSpriteTemplate_83D96AC, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 40, 10
	playsewithpan SE_W172, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D96AC, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, -40, 20
	playsewithpan SE_W172, SOUND_PAN_TARGET
	delay 10
	createsprite gBattleAnimSpriteTemplate_83D96AC, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 0, 0
	playsewithpan SE_W172, SOUND_PAN_TARGET
	waitforvisualfinish
	playsewithpan SE_W172B, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 8, 1
	waitforvisualfinish
	end
_81D5A95:
	loadspritegfx ANIM_TAG_SMALL_BUBBLES
	createsprite gBattleAnimSpriteTemplate_83D9438, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 50, 10
	playsewithpan SE_W152, SOUND_PAN_TARGET
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D9438, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, -20, 20
	playsewithpan SE_W152, SOUND_PAN_TARGET
	delay 13
	createsprite gBattleAnimSpriteTemplate_83D9438, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 0, 0
	playsewithpan SE_W152, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 0, 3, 8, 1
	playsewithpan SE_W202, SOUND_PAN_TARGET
	waitforvisualfinish
	end
_81D5AF9:
	loadspritegfx ANIM_TAG_ROCKS
	createsprite gBattleAnimSpriteTemplate_83DAE30, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 30, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 5
	createsprite gBattleAnimSpriteTemplate_83DAE30, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, -40, 20
	playsewithpan SE_W088, SOUND_PAN_TARGET
	delay 14
	createsprite gBattleAnimSpriteTemplate_83DAE30, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 1, 0, 0
	playsewithpan SE_W088, SOUND_PAN_TARGET
	waitforvisualfinish
	playsewithpan SE_W070, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -12, 27, 2, 3
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 8, 28, 3, 4
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, -4, 30, 2, 3
	createsprite gBattleAnimSpriteTemplate_83DAE00, ANIM_BATTLER_TARGET, 2, 12, 25, 4, 4
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	waitforvisualfinish
	end
_81D5B99:
	loadspritegfx ANIM_TAG_HAIL
	loadspritegfx ANIM_TAG_ICE_CRYSTALS
	createsprite gWeatherBallHailSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 25, -40, 20
	playsewithpan SE_W258, SOUND_PAN_TARGET
	delay 10
	createsprite gWeatherBallHailSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 25, 40, 0
	playsewithpan SE_W258, SOUND_PAN_TARGET
	delay 10
	createsprite gWeatherBallHailSpriteTemplate, ANIM_BATTLER_TARGET, 2, -30, -100, 25, 25, 0, 0
	playsewithpan SE_W258, SOUND_PAN_TARGET
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	call Effect_LightIceDamage
	waitforvisualfinish
	end

PoundCopy: @ 81D5C05
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

Effect_LightIceDamage: @ 81D5C36
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -10, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, 20, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, 10, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 17, -12, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, 15, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 2, 0
	playsewithpan SE_W196, SOUND_PAN_TARGET
	return

Effect_HeavyIceDamage: @ 81D5CBA
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -10, -10, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, 20, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -29, 0, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 29, -20, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, 10, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 17, -12, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -20, 0, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, 15, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 26, -5, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gSmallIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	delay 4
	createsprite gLargeIceEffectParticleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, 2, 1
	playsewithpan SE_W196, SOUND_PAN_TARGET
	return

Unknown_81D5D8A: @ 81D5D8A
	loopsewithpan SE_W196, SOUND_PAN_TARGET, 6, 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 24, 0
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 8, 24, 0
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -8, 24, 0
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 24, 0
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -16, 24, 0
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 24, 24, 0
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -24, 24, 0
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 32, 24, 0
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -32, 24, 0
	return

Unknown_81D5E0E: @ 81D5E0E Icy Wind animates end bit with the wavy shiz
	loopsewithpan SE_W196, SOUND_PAN_TARGET, 6, 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 8, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -8, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -16, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 24, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -24, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 32, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -32, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 40, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -40, 24, 1
	delay 4
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, 48, 24, 1
	createsprite gIceSpikeSpriteTemplate, ANIM_BATTLER_TARGET, 2, -48, 24, 1
	return

Unknown_81D5ECA: @ 81D5ECA
	createsprite gBattleAnimSpriteTemplate_83D6C88, ANIM_BATTLER_ATTACKER, 2, -15, 0, 0, 0, 32, 60
	delay 8
	createsprite gBattleAnimSpriteTemplate_83D6C88, ANIM_BATTLER_ATTACKER, 2, 12, -5, 0, 0, 32, 60
	delay 8
	return

Unknown_81D5EF5: @ 81D5EF5
	playsewithpan SE_W071B, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_ATTACKER, 2, 0, -5, 0, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_ATTACKER, 2, -15, 10, 0, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_ATTACKER, 2, -15, -15, 0, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_ATTACKER, 2, 10, -5, 0, 0
	delay 7
	return

Unknown_81D5F3E: @ 81D5F3E
	playsewithpan SE_W071B, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_TARGET, 2, 0, -5, 1, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_TARGET, 2, -15, 10, 1, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_TARGET, 2, -15, -15, 1, 0
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D7038, ANIM_BATTLER_TARGET, 2, 10, -5, 1, 0
	delay 7
	return

PoisonBubblesAnim: @ 81D5F87
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 10, 10, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 20, -20, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -20, 15, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, 0, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, -20, -20, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	delay 6
	createsprite gPoisonBubbleSpriteTemplate, ANIM_BATTLER_TARGET, 2, 16, -8, 0
	playsewithpan SE_W092, SOUND_PAN_TARGET
	return

WaterBubbleEffect: @ 81D5FF8
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 10, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -20, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -20, 15, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -20, -20, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, -8, 0
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	return

WaterBubbleEffect2: @ 81D6069
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 10, 10, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -28, -10, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 20, -20, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -20, 15, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 27, 8, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, -20, -20, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	delay 6
	createsprite gWaterBubbleSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 16, -8, 1
	playsewithpan SE_W145C, SOUND_PAN_TARGET
	return

ElectricityEffect: @ 81D6100
	playsewithpan SE_W085B, SOUND_PAN_TARGET
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, 5, 0, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, -5, 10, 5, 1
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, 15, 20, 5, 2
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, -15, -10, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, 25, 0, 5, 1
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, -8, 8, 5, 2
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, 2, -8, 5, 0
	delay 2
	createsprite gElectricitySpriteTemplate, ANIM_BATTLER_TARGET, 2, -20, 15, 5, 1
	return

ConfusionEffect: @ 81D618B
	loopsewithpan SE_W146, SOUND_PAN_TARGET, 13, 6
	createsprite gConfusionDuckSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -15, 0, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -15, 51, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -15, 102, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -15, 153, 3, 90
	createsprite gConfusionDuckSpriteTemplate, ANIM_BATTLER_TARGET, 2, 0, -15, 204, 3, 90
	return

SetPsychicBackground: @ 81D61E7
	fadetobg BG_PSYCHIC
	waitbgfadeout
	createvisualtask sub_812C560, 5
	waitbgfadein
	return

BackgroundRestore: @ 81D61F3
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	return

Unknown_81D61FB: @ 81D61FB
	jumpifcontest _81D6214
	fadetobg BG_FLYING
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, -2304, 768, 1, -1
_81D6212:
	waitbgfadein
	return
_81D6214:
	fadetobg BG_FLYING_CONTESTS
	waitbgfadeout
	createvisualtask sub_80E3A58, 5, 2304, 768, 0, -1
	goto _81D6212

Unknown_81D622B: @ 81D622B
	restorebg
	waitbgfadeout
	setarg ARG_RET_ID, -1
	waitbgfadein
	return

Unknown_81D6233: @ 81D6233
	createvisualtask sub_80E4200, 2
	jumpargeq 7, 1, Unknown_81D6258
	createvisualtask sub_812C924, 2
	jumpargeq 7, 0, Unknown_81D6266
	goto Unknown_81D625F

Unknown_81D6256: @ 81D6256
	waitbgfadein
	return

Unknown_81D6258: @ 81D6258
	fadetobg BG_SOLARBEAM_CONTESTS
	goto Unknown_81D6256

Unknown_81D625F: @ 81D625F
	fadetobg BG_SOLARBEAM_PLAYER
	goto Unknown_81D6256

Unknown_81D6266: @ 81D6266
	fadetobg BG_SOLARBEAM_OPPONENT
	goto Unknown_81D6256

Unknown_81D626D: @ 81D626D
	restorebg
	waitbgfadein
	return

StatusCondition_Poison: @ 81D6270
	loopsewithpan SE_W092, SOUND_PAN_TARGET, 13, 6
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 18, 2
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 12, 31774
	end

StatusCondition_Confusion: @ 81D629B
	loadspritegfx ANIM_TAG_DUCK
	call ConfusionEffect
	end

StatusCondition_Burn: @ 81D62A4
	loadspritegfx ANIM_TAG_SMALL_EMBER
	playsewithpan SE_W172, SOUND_PAN_TARGET
	call ConditionBurnFire
	call ConditionBurnFire
	call ConditionBurnFire
	waitforvisualfinish
	end
ConditionBurnFire:
	createsprite gBattleAnimSpriteTemplate_83D9614, ANIM_BATTLER_TARGET, 2, -24, 24, 24, 24, 20, 1, 1
	delay 4
	return

StatusCondition_Love: @ 81D62D4
	loadspritegfx ANIM_TAG_MAGENTA_HEART
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 0, 20
	delay 15
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, -20, 20
	delay 15
	playsewithpan SE_W204, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D7A80, ANIM_BATTLER_ATTACKER, 3, 20, 20
	end

StatusCondition_Sleep: @ 81D6309
	loadspritegfx ANIM_TAG_LETTER_Z
	playsewithpan SE_W173, SOUND_PAN_ATTACKER
	createsprite gBattleAnimSpriteTemplate_83D6D94, ANIM_BATTLER_ATTACKER, 2, 4, -10, 16, 0, 0
	delay 30
	createsprite gBattleAnimSpriteTemplate_83D6D94, ANIM_BATTLER_ATTACKER, 2, 4, -10, 16, 0, 0
	end

StatusCondition_Paralysis: @ 81D6335
	loadspritegfx ANIM_TAG_SPARK_2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 10, 1
	call ElectricityEffect
	end

StatusCondition_Ice: @ 81D634F
	playsewithpan SE_W196, 0
	loadspritegfx ANIM_TAG_ICE_CUBE
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	waitplaysewithpan SE_W258, SOUND_PAN_TARGET, 17
	createvisualtask sub_807B920, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

StatusCondition_Curse: @ 81D636A
	loadspritegfx ANIM_TAG_GHOSTLY_SPIRIT
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W171, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAF38, ANIM_BATTLER_TARGET, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 14, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

StatusCondition_Nightmare: @ 81D638F
	loadspritegfx ANIM_TAG_DEVIL
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W171, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DAF50, ANIM_BATTLER_TARGET, 2
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 14, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end

General_CastformChange: @ 81D63B4
	createvisualtask c3_80DFBE4, 2
	jumpargeq 7, 1, _81D63E0
	goto _81D63C8
_81D63C8:
	monbg ANIM_BATTLER_ATTACKER
	playsewithpan SE_W100, SOUND_PAN_ATTACKER
	waitplaysewithpan SE_W107, SOUND_PAN_ATTACKER, 48
	createvisualtask sub_812D7E8, 2, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	end
_81D63E0:
	createvisualtask sub_812DB58, 2, 1
	end

General_StatsChange: @ 81D63EA
	createvisualtask sub_807BB88, 5
	waitforvisualfinish
	end

General_SubstituteFade: @ 81D63F3
	monbg ANIM_BATTLER_ATTACKER
	createvisualtask sub_81416C4, 5
	createvisualtask sub_80E2A38, 10, 2, 0, 0, 16, 32767
	waitforvisualfinish
	delay 1
	clearmonbg ANIM_BATTLER_ATTACKER
	delay 2
	blendoff
	createvisualtask sub_80E2A38, 10, 2, 0, 0, 0, 32767
	createvisualtask sub_814151C, 2, 1
	end

General_SubstituteAppear: @ 81D6430
	createvisualtask sub_81312E4, 2
	end

General_PokeblockThrow: @ 81D6438
	createvisualtask sub_8141D7C, 2
	createvisualtask sub_8141BD4, 2
	delay 0
	waitplaysewithpan SE_W026, SOUND_PAN_ATTACKER, 22
	createsprite gBattleAnimSpriteTemplate_840B4FC, ANIM_BATTLER_TARGET, 3, -16, 7, 0, 32
	delay 50
	loopsewithpan SE_W039, SOUND_PAN_TARGET, 19, 2
	createvisualtask AnimTask_SwayMon, 5, 1, 8, 1536, 2, 1
	waitforvisualfinish
	createvisualtask sub_8141C08, 2
	end

General_ItemKnockoff: @ 81D647E
	loadspritegfx ANIM_TAG_ITEM_BAG
	createsprite gFallingItemBagTemplate, ANIM_BATTLER_TARGET, 2
	end

General_TurnTrap: @ 81D6489
	createvisualtask sub_8141DAC, 5
	jumpargeq 0, 1, FireSpinHit
	jumpargeq 0, 2, WhirlpoolHit
	jumpargeq 0, 3, ClampHit
	jumpargeq 0, 4, SandTombHit
	goto WrapHit
WrapHit:
	loadspritegfx ANIM_TAG_TENDRILS
	loopsewithpan SE_W010, SOUND_PAN_TARGET, 6, 2
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 4, 0, 16, 0, 1
	delay 7
	createsprite gBattleAnimSpriteTemplate_83D65A0, ANIM_BATTLER_TARGET, 2, 0, 8, 1, 1
	delay 3
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_TARGET, 2, 0, 8, 1
	delay 20
	setarg ARG_RET_ID, -1
	playsewithpan SE_W020, SOUND_PAN_TARGET
	waitforvisualfinish
	end
FireSpinHit:
	loadspritegfx ANIM_TAG_SMALL_EMBER
	playsewithpan SE_W221B, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 30, 1
	call _81C90BF
	call _81C90BF
	waitforvisualfinish
	stopsound
	end
WhirlpoolHit:
	loadspritegfx ANIM_TAG_WATER_ORB
	monbg ANIM_BATTLER_DEF_PARTNER
	monbgprio_28 1
	setalpha 12, 8
	delay 0
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 0, 7, rgb(0, 13, 23)
	playsewithpan SE_W250, SOUND_PAN_TARGET
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 30, 1
	call _81D03E4
	call _81D03E4
	delay 12
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 7, 0, rgb(0, 13, 23)
	waitforvisualfinish
	stopsound
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	end
ClampHit:
	loadspritegfx ANIM_TAG_CLAMP
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W011, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83DB1E8, ANIM_BATTLER_ATTACKER, 2, -32, 0, 2, 819, 0, 10
	createsprite gBattleAnimSpriteTemplate_83DB1E8, ANIM_BATTLER_ATTACKER, 2, 32, 0, 6, -819, 0, 10
	delay 10
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 5, 1, 3, 0, 5, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	waitforvisualfinish
	end
SandTombHit:
	loadspritegfx ANIM_TAG_MUD_SAND
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 0, 7, rgb(19, 17, 0)
	createvisualtask AnimTask_ShakeMon, 5, 1, 0, 2, 30, 1
	playsewithpan SE_W328, SOUND_PAN_TARGET
	call _81D361F
	call _81D361F
	delay 22
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 4, 2, 7, 0, rgb(19, 17, 0)
	waitforvisualfinish
	stopsound
	end

General_ItemEffect: @ 81D661C
	loadspritegfx ANIM_TAG_THIN_RING
	loadspritegfx ANIM_TAG_SPARKLE_2
	delay 0
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_80A8EFC, 2, 16, 128, 0, 2
	waitforvisualfinish
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_80A8EFC, 2, 16, 128, 0, 2
	waitforvisualfinish
	playsewithpan SE_W036, SOUND_PAN_ATTACKER
	createvisualtask sub_80A8EFC, 2, 16, 128, 0, 2
	waitforvisualfinish
	playsewithpan SE_W234, SOUND_PAN_ATTACKER
	call Unknown_81D5ECA
	waitforvisualfinish
	playsewithpan SE_REAPOKE, SOUND_PAN_ATTACKER
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 2, 3, 7, 0, rgb(17, 31, 25)
	createsprite gBattleAnimSpriteTemplate_83D7928, ANIM_BATTLER_ATTACKER, 3, 0, 0, 0, 0
	waitforvisualfinish
	end

General_SmokeballEscape: @ 81D6690
	loadspritegfx ANIM_TAG_PINK_CLOUD
	monbg ANIM_BATTLER_ATTACKER
	setalpha 12, 4
	delay 0
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_TARGET, 0, 0, 32, 28, 30
	delay 4
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 127, 2, 12, 20, 30
	delay 12
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 126, 2, -28, 4, 30
	delay 4
	delay 8
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 124, 2, 14, -20, 30
	delay 4
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createvisualtask sub_80DFC24, 2, 2
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 123, 3, 4, 4, 30
	delay 14
	playsewithpan SE_BOWA2, SOUND_PAN_TARGET
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 122, 3, -14, 18, 46
	delay 0
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 121, 3, 14, -14, 46
	delay 0
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 120, 3, -12, -10, 46
	delay 0
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 119, 3, 14, 14, 46
	delay 0
	createsprite gPinkSmokeTemplate, ANIM_BATTLER_ATTACKER, 118, 3, 0, 0, 46
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_ATTACKER
	invisible ANIM_BATTLER_ATTACKER
	delay 0
	blendoff
	end

General_HangedOn: @ 81D676E
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 2, 7, 0, 9, rgb(31, 0, 0)
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	createvisualtask sub_812FC68, 5, 30, 128, 0, 1, 2, 0, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 2, 4, 9, 0, rgb(31, 0, 0)
	waitforvisualfinish
	delay 6
	createsprite gSlideMonToOriginalPosSpriteTemplate, ANIM_BATTLER_ATTACKER, 0, 0, 0, 15
	end

General_Rain: @ 81D67BB
	loadspritegfx ANIM_TAG_RAIN_DROPS
	playsewithpan SE_W240, SOUND_PAN_ATTACKER
	createvisualtask sub_80E2A38, 10, 1921, 2, 0, 4, 0
	waitforvisualfinish
	createvisualtask CreateAnimRaindrops, 2, 0, 3, 60
	createvisualtask CreateAnimRaindrops, 2, 0, 3, 60
	delay 50
	waitforvisualfinish
	createvisualtask sub_80E2A38, 10, 1921, 2, 4, 0, 0
	waitforvisualfinish
	end

General_Sun: @ 81D6804
	goto Move_SUNNY_DAY

General_Sandstorm: @ 81D6809
	goto Move_SANDSTORM

General_Hail: @ 81D680E
	goto Move_HAIL

General_LeechSeedDrain: @ 81D6813
	createvisualtask sub_8141E10, 5
	delay 0
	goto Move_ABSORB

General_MonHit: @ 81D6821
	loadspritegfx ANIM_TAG_IMPACT
	monbg ANIM_BATTLER_TARGET
	setalpha 12, 8
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 0, 0, 1, 2
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 3, 0, 6, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_TARGET
	blendoff
	end

General_ItemSteal: @ 81D6852
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask sub_80E42D0, 2
	createvisualtask sub_8141808, 2
	delay 1
	createsprite gBattleAnimSpriteTemplate_83D677C, ANIM_BATTLER_ATTACKER, 2, 0, -5, 10, 2, -1
	end

General_SnatchMove: @ 81D6877
	loadspritegfx ANIM_TAG_ITEM_BAG
	createvisualtask sub_80E4234, 2
	call Unknown_81D6AB6
	delay 1
	createvisualtask AnimTask_SwayMon, 2, 0, 5, 5120, 4, 1
	waitforvisualfinish
	createvisualtask sub_80E4264, 2
	jumpargeq 7, 0, _81D68B5
	goto _81D68C5
_81D68AE:
	waitforvisualfinish
	call Unknown_81D6AD6
	end
_81D68B5:
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_SnatchOpposingMonMove, 2
	goto _81D68AE
_81D68C5:
	playsewithpan SE_W104, SOUND_PAN_ATTACKER
	createvisualtask AnimTask_SnatchPartnerMove, 2
	goto _81D68AE

General_FutureSightHit: @ 81D68D5
	createvisualtask sub_80E42B0, 2
	monbg ANIM_BATTLER_DEF_PARTNER
	playsewithpan SE_W060, SOUND_PAN_ATTACKER
	call SetPsychicBackground
	setalpha 8, 8
	playsewithpan SE_W048, SOUND_PAN_TARGET
	waitplaysewithpan SE_W048, SOUND_PAN_TARGET, 8
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 4, 0, 15, 1
	createvisualtask AnimTask_ScaleMonAndRestore, 5, -5, -5, 15, ANIM_BATTLER_TARGET, 1
	waitforvisualfinish
	createvisualtask AnimTask_ShakeMon, 2, ANIM_BATTLER_TARGET, 4, 0, 24, 1
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	waitforvisualfinish
	delay 1
	call BackgroundRestore
	end

General_DoomDesireHit: @ 81D6934
	createvisualtask sub_80E42B0, 2
	loadspritegfx ANIM_TAG_EXPLOSION
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 0, 16, rgb(31, 31, 31)
	waitforvisualfinish
	delay 10
	createvisualtask sub_812E14C, 5
	delay 9
	playsewithpan SE_W109, SOUND_PAN_ATTACKER
	delay 9
	playsewithpan SE_W109, 0
	delay 9
	playsewithpan SE_W109, SOUND_PAN_TARGET
	delay 25
	createvisualtask AnimTask_ShakeMonInPlace, 2, ANIM_BATTLER_TARGET, 10, 0, 20, 1
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 0, 0, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 24, -24, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -16, 16, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, -24, -12, 1, 1
	delay 6
	playsewithpan SE_W120, SOUND_PAN_TARGET
	createsprite gBattleAnimSpriteTemplate_83D7828, ANIM_BATTLER_ATTACKER, 3, 16, 16, 1, 1
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 16, 0, rgb(31, 31, 31)
	waitforvisualfinish
	end

General_FocusPunchSetUp: @ 81D69F9
	loadspritegfx ANIM_TAG_FOCUS_ENERGY
	playsewithpan SE_W082, SOUND_PAN_ATTACKER
	call EndureFlamesAnim
	delay 8
	createvisualtask sub_80E1F8C, 2, 2, 2, 2, 0, 11, 31
	createvisualtask AnimTask_ShakeMon2, 2, ANIM_BATTLER_ATTACKER, 1, 0, 32, 1
	call EndureFlamesAnim
	delay 8
	call EndureFlamesAnim
	waitforvisualfinish
	end

General_IngrainHeal: @ 81D6A39
	loadspritegfx ANIM_TAG_ORBS
	loadspritegfx ANIM_TAG_BLUE_STAR
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 0, 4, rgb(13, 31, 12)
	waitforvisualfinish
	delay 3
	call _81CF496
	waitforvisualfinish
	delay 15
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 1, 4, 0, rgb(13, 31, 12)
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	end

General_WishHeal: @ 81D6A7C
	loadspritegfx ANIM_TAG_BLUE_STAR
	loadspritegfx ANIM_TAG_SPARKLE_2
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 0, 10, rgb(0, 0, 0)
	waitforvisualfinish
	playsewithpan SE_W025, SOUND_PAN_ATTACKER
	call Unknown_81D5ECA
	waitforvisualfinish
	call Unknown_81D5EF5
	waitforvisualfinish
	createsprite gSimplePaletteBlendSpriteTemplate, ANIM_BATTLER_ATTACKER, 2, 1, 3, 10, 0, rgb(0, 0, 0)
	end

Unknown_81D6AB6: @ 81D6AB6
	createvisualtask sub_81417D8, 2
	jumpargeq 7, 1, _81D6AC7
_81D6AC5:
	waitforvisualfinish
	return
_81D6AC7:
	createvisualtask sub_814151C, 2, 1
	waitforvisualfinish
	goto _81D6AC5

Unknown_81D6AD6: @ 81D6AD6
	createvisualtask sub_81417D8, 2
	jumpargeq 7, 1, _81D6AE7
_81D6AE5:
	waitforvisualfinish
	return
_81D6AE7:
	createvisualtask sub_814151C, 2, 0
	waitforvisualfinish
	goto _81D6AE5

Special_LevelUp: @ 81D6AF6
	playsewithpan SE_EXPMAX, 0
	createvisualtask sub_813F4EC, 2
	delay 0
	createvisualtask sub_813F6A0, 5, 0, 0
	waitforvisualfinish
	createvisualtask sub_813F5E8, 2
	end

Special_SwitchOutPlayerMon: @ 81D6B17
	createvisualtask sub_813F844, 2
	delay 10
	createvisualtask sub_813F798, 2
	end

Special_SwitchOutOpponentMon: @ 81D6B28
	createvisualtask sub_813F844, 2
	delay 10
	createvisualtask sub_813F798, 2
	end

Special_BallThrow: @ 81D6B39
	createvisualtask sub_813F990, 2
	delay 0
	playsewithpan SE_NAGERU, 0
	createvisualtask sub_813FA94, 2
	createvisualtask sub_813F9E0, 2
	jumpargeq 7, -1, _81D6B65
_81D6B5C:
	waitforvisualfinish
	createvisualtask sub_813F9B8, 2
	end
_81D6B65:
	loadspritegfx ANIM_TAG_IMPACT
	delay 25
	monbg ANIM_BATTLER_DEF_PARTNER
	setalpha 12, 8
	delay 0
	playsewithpan SE_W003, SOUND_PAN_TARGET
	createsprite gBasicHitSplatSpriteTemplate, ANIM_BATTLER_TARGET, 2, -4, -20, 1, 2
	waitforvisualfinish
	clearmonbg ANIM_BATTLER_DEF_PARTNER
	blendoff
	goto _81D6B5C

Special_SafariBallThrow: @ 81D6B8D
	createvisualtask sub_813F990, 2
	delay 0
	createvisualtask sub_813FBB8, 2
	waitforvisualfinish
	createvisualtask sub_813F9B8, 2
	end

Special_SubstituteToMon: @ 81D6BA6
	createvisualtask sub_814151C, 2, 1
	end

Special_MonToSubstitute: @ 81D6BB0
	createvisualtask sub_814151C, 2, 0
	end
