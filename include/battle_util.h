#ifndef GUARD_BATTLE_UTIL_H
#define GUARD_BATTLE_UTIL_H

#define BS_GET_TARGET                   0
#define BS_GET_ATTACKER                 1
#define BS_GET_EFFECT_BANK              2
#define BS_GET_SCRIPTING_BANK           10
#define BS_GET_PLAYER1                  11
#define BS_GET_OPPONENT1                12
#define BS_GET_PLAYER2                  13
#define BS_GET_OPPONENT2                14

#define MOVE_LIMITATION_ZEROMOVE                (1 << 0)
#define MOVE_LIMITATION_PP                      (1 << 1)
#define MOVE_LIMITATION_DISABLED                (1 << 2)
#define MOVE_LIMITATION_TORMENTED               (1 << 3)
#define MOVE_LIMITATION_TAUNT                   (1 << 4)
#define MOVE_LIMITATION_IMPRISON               (1 << 5)

#define ABILITYEFFECT_ON_SWITCHIN                0x0
#define ABILITYEFFECT_ENDTURN                    0x1
#define ABILITYEFFECT_MOVES_BLOCK                0x2
#define ABILITYEFFECT_ABSORBING                  0x3
#define ABILITYEFFECT_MOVE_END                   0x4
#define ABILITYEFFECT_IMMUNITY                   0x5
#define ABILITYEFFECT_FORECAST                   0x6
#define ABILITYEFFECT_SYNCHRONIZE                0x7
#define ABILITYEFFECT_ATK_SYNCHRONIZE            0x8
#define ABILITYEFFECT_INTIMIDATE1                0x9
#define ABILITYEFFECT_INTIMIDATE2                0xA
#define ABILITYEFFECT_TRACE                      0xB
#define ABILITYEFFECT_CHECK_OTHER_SIDE           0xC
#define ABILITYEFFECT_CHECK_BATTLER_SIDE         0xD
#define ABILITYEFFECT_FIELD_SPORT                0xE
#define ABILITYEFFECT_CHECK_FIELD_EXCEPT_BATTLER 0xF
#define ABILITYEFFECT_COUNT_OTHER_SIDE           0x10
#define ABILITYEFFECT_COUNT_BATTLER_SIDE         0x11
#define ABILITYEFFECT_COUNT_ON_FIELD             0x12
#define ABILITYEFFECT_CHECK_ON_FIELD             0x13
#define ABILITYEFFECT_SWITCH_IN_WEATHER          0xFF

#define ABILITY_ON_OPPOSING_FIELD(battlerId, abilityId)(AbilityBattleEffects(ABILITYEFFECT_CHECK_OTHER_SIDE, battlerId, abilityId, 0, 0))
#define ABILITY_ON_FIELD(abilityId)(AbilityBattleEffects(ABILITYEFFECT_CHECK_ON_FIELD, 0, abilityId, 0, 0))
#define ABILITY_ON_FIELD2(abilityId)(AbilityBattleEffects(ABILITYEFFECT_FIELD_SPORT, 0, abilityId, 0, 0))

#define ITEMEFFECT_ON_SWITCH_IN                 0x0
#define ITEMEFFECT_MOVE_END                     0x3
#define ITEMEFFECT_KINGSROCK_SHELLBELL          0x4

void TryClearRageStatuses(void);
void BattleScriptPush(const u8* BS_ptr);
void PressurePPLoseOnUsingImprision(u8 bankAtk);
void PressurePPLoseOnUsingPerishSong(u8 bankAtk);
void sub_80155A4(u8);
void CancelMultiTurnMoves(u8 bank);
bool8 WasUnableToUseMove(u8 bank);
void PrepareStringBattle(u16 stringId, u8 bank);
void ResetSentPokesToOpponentValue(void);
void sub_8015740(u8 bank);
void sub_80157C4(u8 bank);
bool8 HandleWishPerishSongOnTurnEnd(void);
void BattleScriptExecute(const u8* BS_ptr);
void BattleScriptPushCursorAndCallback(u8* BS_ptr);
u8 IsMonDisobedient(void);
bool8 AreAllMovesUnusable(void);
u8 TrySetCantSelectMoveBattleScript(void);

#endif // GUARD_BATTLE_UTIL_H
