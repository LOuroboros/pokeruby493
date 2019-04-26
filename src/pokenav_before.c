#include "global.h"
#include "main.h"
#include "pokenav.h"
#include "ewram.h"
#include "battle.h"
#include "data2.h"
#include "de_rom_8040FE0.h"
#include "decompress.h"
#include "event_data.h"
#include "constants/flags.h"
#include "landmark.h"
#include "link.h"
#include "menu.h"
#include "overworld.h"
#include "palette.h"
#include "region_map.h"
#include "constants/songs.h"
#include "string_util.h"
#include "strings.h"
#include "sound.h"
#include "task.h"
#include "text.h"
#include "trig.h"
#include "scanline_effect.h"
#include "pokemon_storage_system.h"
#include "pokemon_summary_screen.h"
#include "use_pokeblock.h"
#include "constants/game_stat.h"

struct UnknownPokenav0
{
    /* 0x0000 */ u8 var0[0x0300];
    /* 0x0300 */ void (*var300)(void);
    /* 0x0304 */ u16 var304;
    /* 0x0306 */ u16 var306;
    /* 0x0308 */ u32 var308;
    /* 0x030C */ u8 fill030C[0x6a9f];
    /* 0x6dab */ u8 var6dab;
    /* 0x6dac */ u8 var6dac;
    /* 0x6dad */ u8 var6dad;
    /* 0x6dae */ u8 var6dae;
    /* 0x6daf */ u8 fill6daf[0x3];
    /* 0x6db2 */ u8 var6db2[5];
    /* 0x6db7 */ u8 fill6db7[0x25];
    /* 0x6ddc */ s8 var6ddc;
    /* 0x6ddd */ u8 fill6ddd[0x13];
    /* 0x6df0 */ s8 var6df0;
    /* 0x6df1 */ u8 fill6df1[0xB];
    /* 0x6dfc */ u8 var6dfc;
    /* 0x6dfd */ u8 fill6dfd[0x17];
    /* 0x6e14 */ u8 var6e14;
    /* 0x6e15 */ u8 var6e15;
    /* 0x6e16 */ u8 var6e16;
    /* 0x6e17 */ u8 var6e17;
    /* 0x6e18 */ u8 fill6e18[0x78];
    /* 0x6e90 */ u8 var6e90;
    /* 0x6e91 */ u8 fill6e91[0x4];
    /* 0x6e95 */ u8 var6e95;
    /* 0x6e96 */ u8 var6e96[0x814];
    /* 0x76AA */ u8 var76aa;
    /* 0x76AB */ u8 fill76AB[0x10BD];
    /* 0x8768 */ u32 var8768;
    /* 0x876C */ u8 fill876C[0x2];
    /* 0x876E */ u8 var876E;
    /* 0x876F */ u8 fill876F[0x5];
    /* 0x8774 */ s16 var8774;
    /* 0x8776 */ u8 fill8776[0x55];
    /* 0x87CB */ u8 var87CB;
    /* 0x87CC */ u8 fill87CC[0xC];
    /* 0x87D8 */ u8 var87D8;
    /* 0x87D9 */ u8 fill87D9[0x1];
    /* 0x87DA */ s16 var87DA;
    /* 0x87DC */ s16 var87DC;
    /* 0x87DE */ u8 fill87DE[0x4a];
    /* 0x8828 */ u8 playerPartyCount;
    /* 0x8829 */ u8 fill8829[0x07bf];
    /* 0x8FE8 */ s8 var8fe8;
    /* 0x8FE9 */ u8 fill8FE9[0x16];
    /* 0x8FFF */ u8 var8fff[5];
    /* 0x9004 */ u8 fill9004[0x340];
    /* 0x9344 */ u8 var9344;
    /* 0x9345 */ u8 fill9345[0x3b8b];
    /* 0xced0 */ u32 varCED0;
    /* 0xced4 */ u8 fillCED4[0x284];
    /* 0xD158 */ u16 varD158;
    /* 0xD15A */ u8 fillD15A[0x8];
    /* 0xD162 */ u8 varD162;
};

struct UnknownPokenav0_1 {
    u8 fill6dad[0x6dad];
    s8 var6dad;
    s8 var6dae;
};

struct PokenavRibbonIconGfx {
    u16 baseTile;
    u8 paletteNum;
};

IWRAM_DATA void (*gUnknown_03000744)(void);

struct UnkPokenavStruct *const gPokenavStructPtr = (struct UnkPokenavStruct *)gSharedMem;

extern u16 gKeyRepeatStartDelay;

void sub_80EBA5C()
{
    switch (gMain.state)
    {
    default:
        gMain.state = 0;
    case 0:
        gPokenavStructPtr->unk6DAC = is_c1_link_related_active();
        if (!gPokenavStructPtr->unk6DAC)
        {
            gPokenavStructPtr->unk6DAB = 0;
            gMain.state++;
            SetMainCallback2(&sub_80EBBE8);
        }
        break;
    case 1:
        SetVBlankCallback(NULL);
        break;
    case 2:
        ResetPaletteFade();
        break;
    case 3:
        ResetSpriteData();
        break;
    case 4:
        FreeAllSpritePalettes();
        break;
    case 5:
        ResetTasks();
        break;
    case 6:
        ScanlineEffect_Stop();
        break;
    case 7:
        sub_80F1A90();
        gMain.state++;
    case 8:
        if (sub_80F1AC4())
            return;
        break;
    case 9:
        sub_80F2688();
        gMain.state++;
        // fall through
    case 10:
        if (sub_80F26BC())
            return;
        break;
    case 11:
        sub_80F36F0();
        gMain.state++;
    case 12:
        if (sub_80F3724())
            return;
        break;
    case 13:
        sub_80EBC10();
        sub_80EBDBC(&sub_80EBDD8);
        break;
    case 14:
        gPokenavStructPtr->unk6DAB = 1;
        PlaySE(SE_PN_ON);
        SetMainCallback2(&sub_80EBD90);
        SetVBlankCallback(&sub_80EBD18);
        sub_80F1A74();
        break;
    }

    gMain.state++;
}

void sub_80EBBE8()
{
    while (!gPokenavStructPtr->unk6DAB)
        sub_80EBA5C();
}

void sub_80EBC10()
{
    u16 i;

    gKeyRepeatStartDelay = 0x14;
    gPokenavStructPtr->unk8828 = CalculatePlayerPartyCount();
    gPokenavStructPtr->unk6DDC = 0;
    gPokenavStructPtr->unk9344 = 0;
    gPokenavStructPtr->unk8768 = 0;
    gPokenavStructPtr->unkCED0 = 0;

    for (i = 0; i < 5; ++i)
    {
        gPokenavStructPtr->unk8ff0[3][i] = 0;
        gPokenavStructPtr->unk9004[3][i].unk0 = 0x9B;
        gPokenavStructPtr->unk9004[3][i].unk2 = 0x5B;
    }

    gPokenavStructPtr->regionMap.needUpdateVideoRegs = 0;
    sub_80EBCA8();
}

void sub_80EBCA8()
{
    gPokenavStructPtr->unk6DB2[0] = 1;
    gPokenavStructPtr->unk6DB2[1] = 2;
    gPokenavStructPtr->unk6DB2[2] = 3;

    if (FlagGet(FLAG_SYS_RIBBON_GET))
        gPokenavStructPtr->unk6DB2[3] = 4;
    else
        gPokenavStructPtr->unk6DB2[3] = 0;

    gPokenavStructPtr->unk6DB2[4] = 5;
}

void sub_80EBD18()
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    sub_80F1FF0();
}

void sub_80EBD30()
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    UpdateRegionMapVideoRegs();
    sub_80EFE7C();
}

void sub_80EBD4C()
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    sub_80F5BF0();
    ScanlineEffect_InitHBlankDmaTransfer();
}

void sub_80EBD68()
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    sub_80F6F64();
}

void sub_80EBD80()
{
    LoadOam();
    ProcessSpriteCopyRequests();
}

void sub_80EBD90()
{
    gPokenavStructPtr->unk300();
    AnimateSprites();
    BuildOamBuffer();
    RunTasks();
    UpdatePaletteFade();
    sub_80F19FC();
}

void sub_80EBDBC(void (*func)(void))
{
    gPokenavStructPtr->unk300 = func;
    gPokenavStructPtr->unk304 = 0;
}

void sub_80EBDD8()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        SetVBlankCallback(NULL);
        REG_DISPCNT = 0;
        gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DDC;
        gPokenavStructPtr->unk6DAE = 5;
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        sub_80F3FF0();
        gPokenavStructPtr->unk304++;
        // fall through
    case 2:
        if (!sub_80F4024())
			gPokenavStructPtr->unk304++;
        break;
    case 3:
        sub_80F2598();
        gPokenavStructPtr->unk304++;
        break;
    case 4:
        sub_80EEE20();
        gPokenavStructPtr->unk304++;
        // fall through
    case 5:
        if (!sub_80EEE54())
		{
			sub_80EEE08();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 6:
        sub_80EF248(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 7:
        if (!sub_80EF284(0))
			gPokenavStructPtr->unk304++;
        break;
    case 8:
        sub_80F1B8C(0);
        gPokenavStructPtr->unk304++;
		// fall through
    case 9:
        if (!sub_80F1BC8(0))
			gPokenavStructPtr->unk304++;
        break;
    case 10:
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 11:
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 12:
        sub_80EED2C(0);
        gPokenavStructPtr->unk304++;
        break;
    case 13:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 14:
        sub_80F2C80(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 15:
        if (!sub_80F2CBC(0))
			gPokenavStructPtr->unk304++;
        break;
    case 16:
        sub_80F1DF0();
        gPokenavStructPtr->unk304++;
        break;
    case 17:
        if (!sub_80F1E50())
        {
            sub_80EF428(0, 0);
            sub_80EBDBC(&sub_80EC268);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        }
        break;
    }
}

void sub_80EC00C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        if (!sub_80EEF78())
        {
            SetVBlankCallback(&sub_80EBD80);
            sub_80EED1C();
            gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DDC;
            gPokenavStructPtr->unk6DAE = 5;
            sub_80EEE08();
            gPokenavStructPtr->unk304++;
        }
        break;
    case 1:
        sub_80EF248(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 2:
        if (!sub_80EF284(0))
			gPokenavStructPtr->unk304++;
        break;
    case 3:
        sub_80F1B8C(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 4:
        if (!sub_80F1BC8(0))
			gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 6:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EED2C(0);
        gPokenavStructPtr->unk304++;
        break;
    case 8:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        sub_80F2598();
        gPokenavStructPtr->unk304++;
        break;
    case 10:
        sub_80F2C80(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 11:
        if (!sub_80F2CBC(0))
			gPokenavStructPtr->unk304++;
        break;
    case 12:
        sub_80F1DF0();
        gPokenavStructPtr->unk304++;
        break;
    case 13:
        if (!sub_80F1E50())
        {
            sub_80EF428(0, gPokenavStructPtr->unk6DAD);
			sub_80EBDBC(&sub_80EC268);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
		}
		break;
    }
}

void sub_80EC210()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F2D04(1);
        sub_80EE9C0(0, gPokenavStructPtr->unk6DDC, 0);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80EEA0C())
			sub_80EBDBC(&sub_80EC268);
		break;
    }
}

void sub_80EC268()
{
    u8 var1;

    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        if (sub_80EEC10() != 0)
        {
            PlaySE(SE_SELECT);
            sub_80EF428(0, gPokenavStructPtr->unk6DAD);
            sub_80EED9C();
        }
        else
        {
            if (gMain.newKeys & A_BUTTON)
            {
                gPokenavStructPtr->unk6DDC = gPokenavStructPtr->unk6DAD;
                switch (gPokenavStructPtr->unk6DB2[gPokenavStructPtr->unk6DDC] - 1)
                {
                case 0:
                    PlaySE(SE_SELECT);
                    sub_80EBDBC(&sub_80EC4A0);
                    break;
                case 1:
                    PlaySE(SE_SELECT);
                    sub_80EBDBC(&sub_80EC81C);
                    break;
                case 4:
                    gPokenavStructPtr->unk304 = 1;
                    break;
                case 3:
                    gPokenavStructPtr->unk304 = 2;
                    break;
                case 2:
                    gPokenavStructPtr->unk304 = 6;
                    break;
                }
            }
            else if (gMain.newKeys & B_BUTTON)
            {
                gPokenavStructPtr->unk304 = 1;
            }
        }
        break;
    case 1:
        sub_80F208C();
        sub_80EBDBC(&sub_80EE96C);
        break;
    case 2:
        sub_80F6208();
        gPokenavStructPtr->unk304++;
        // fall through
    case 3:
        if (!sub_80F6250())
			gPokenavStructPtr->unk304++;
        break;
    case 4:
        if (!sub_8055870())
        {
			if (gPokenavStructPtr->unk8FE8 != 0)
			{
				PlaySE(SE_SELECT);
				sub_80EBDBC(&sub_80EDB88);
			}
			else
			{
				PlaySE(0x20);
				sub_80EF428(0, 5);
				gPokenavStructPtr->unk304 = 0xFF;
			}
		}
		break;
    case 6:
        sub_80F6C20();
        if (gPokenavStructPtr->unkD158 != 0)
        {
            PlaySE(SE_SELECT);
            sub_80EBDBC(&sub_80EE3D8);
        }
        else
        {
            PlaySE(0x20);
            sub_80EF428(0, 6);
            gPokenavStructPtr->unk304 = 0xFF;
        }
        break;
    case 0xFF:
        if ((var1 = sub_80EEC10()) != 0)
        {
            PlaySE(SE_SELECT);
            sub_80EF428(0, gPokenavStructPtr->unk6DAD);
            gPokenavStructPtr->unk304 = 0;
            sub_80EED9C();
        }
        else if (gMain.newKeys & (A_BUTTON | B_BUTTON))
		{
			sub_80EF428(0, gPokenavStructPtr->unk6DAD);
			gPokenavStructPtr->unk304 = var1;
		}
        break;
    }
}

void sub_80EC4A0()
{
    u32 var1;

    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F1E84();
        sub_80F2D04(0);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F1F10())
        {
            if (gSaveBlock2.regionMapZoom)
                var1 = 0x7;
            else
				var1 = 0x8;
            sub_80EEFBC(var1);
            gPokenavStructPtr->unk304++;
        }
        break;
    case 2:
        if (!sub_80EEF34())
        {
            BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
            gPokenavStructPtr->unk304++;
        }
        break;
    case 3:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F2620();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80EF814();
        gPokenavStructPtr->unk304++;
        break;
    case 6:
        sub_80EF840();
        gPokenavStructPtr->unk304++;
        // fall through
    case 7:
        if (!sub_80EF874())
			gPokenavStructPtr->unk304++;
        break;
    case 8:
        sub_80F2C80(0x4);
        gPokenavStructPtr->unk304++;
        // fall through
    case 9:
        if (!sub_80F2CBC(0x4))
			gPokenavStructPtr->unk304++;
        break;
    case 0xA:
        sub_80F2DD8();
        SetVBlankCallback(&sub_80EBD30);
        gPokenavStructPtr->unk304++;
        break;
    case 0xB:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 0xC:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 0xD:
        sub_80EED2C(0x1);
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x75E0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        gPokenavStructPtr->unk304++;
        break;
    case 0xE:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80EC67C);
		break;
    }
}

void sub_80EC67C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        switch (sub_80FAB60())
        {
        case 1:
            sub_80EED9C();
            break;
        case 3:
            sub_80EF9F8();
            break;
        case 4:
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk304 = 1;
            break;
        case 5:
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk304 = 4;
            break;
        }
        break;
    case 1:
        if (!gPokenavStructPtr->regionMap.zoomed)
        {
            sub_80FAEC4();
            gPokenavStructPtr->unk304++;
        }
        else if (!sub_80EFBDC(1))
        {
			sub_80FAEC4();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_80FAFC0())
        {
			if (!gPokenavStructPtr->regionMap.zoomed)
			{
				sub_80EFBB0();
				gPokenavStructPtr->unk304 = 0;
			}
			else
			{
				gPokenavStructPtr->unk304++;
			}
		}
        break;
    case 3:
        if (!sub_80EFBDC(0))
        {
			sub_80EFBB0();
			gPokenavStructPtr->unk304 = 0;
		}
        break;
    case 4:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (!gPaletteFade.active)
        {
			sub_80F2DF4();
			sub_80F2D04(0x4);
			gSaveBlock2.regionMapZoom = (gPokenavStructPtr->regionMap.zoomed == 1) ? 1 : 0;
			sub_80EBDBC(&sub_80EC00C);
		}
		break;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 1, 1, 2, 4);
#endif
}

void sub_80EC81C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F2D04(0);
        sub_80EE9C0(1, 0, 1);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80EEA0C())
			sub_80EBDBC(&sub_80EC86C);
		break;
    }
}

void sub_80EC86C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        if (sub_80EEC90())
        {
            PlaySE(SE_SELECT);
            sub_80EF428(1, gPokenavStructPtr->unk6DAD);
            sub_80EED9C();
        }
        else if (gMain.newKeys & A_BUTTON)
        {
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk6DF0 = gPokenavStructPtr->unk6DAD;
            switch (gPokenavStructPtr->unk6DF0)
            {
            case 0:
                sub_80EBDBC(&sub_80ED620);
                break;
            case 1:
                sub_80EBDBC(&sub_80EC960);
                break;
            case 2:
                sub_80EBDBC(&sub_80EC210);
                break;
            }
        }
        else if (gMain.newKeys & B_BUTTON)
        {
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk6DF0 = 0x2;
            gPokenavStructPtr->unk6DAD = 0x2;
            gPokenavStructPtr->unk304++;
        }
        break;
    case 1:
        if (!sub_80F1E6C())
			sub_80EBDBC(&sub_80EC210);
		break;
    }
}

void sub_80EC960()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80EE9C0(2, 0, 5);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80EEA0C())
			sub_80EBDBC(&sub_80ECC08);
		break;
    }
}

void sub_80EC9A8()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F2D04(5);
        sub_80EE9C0(1, gPokenavStructPtr->unk6DF0, 0xC);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80EEA0C())
        {
			sub_80EBDBC(&sub_80EC86C);
			sub_80EF428(1, gPokenavStructPtr->unk6DAD);
		}
		break;
    }
}

void sub_80ECA10()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        if (!sub_80EEF78())
        {
			SetVBlankCallback(&sub_80EBD80);
			sub_80EED1C();
			gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DF0;
			gPokenavStructPtr->unk6DAE = 3;
			sub_80EEE08();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 1:
        sub_80EF248(1);
        gPokenavStructPtr->unk304++;
    case 2:
        if (!sub_80EF284(1))
			gPokenavStructPtr->unk304++;
        break;
    case 3:
        sub_80F1B8C(1);
        gPokenavStructPtr->unk304++;
    case 4:
        if (!sub_80F1BC8(1))
			gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (sub_8055870()) return;
        gPokenavStructPtr->unk304++;
        break;
    case 6:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EED2C(0);
        gPokenavStructPtr->unk304++;
        break;
    case 8:
        sub_80F2598();
        gPokenavStructPtr->unk304++;
        break;
    case 9:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 10:
        sub_80F2C80(1);
        gPokenavStructPtr->unk304++;
		// fall through
    case 11:
        if (!sub_80F2CBC(1))
			gPokenavStructPtr->unk304++;
        break;
    case 12:
        sub_80F1DF0();
        gPokenavStructPtr->unk304++;
        break;
    case 13:
        if (!sub_80F1E50())
        {
			sub_80EF428(1, gPokenavStructPtr->unk6DAD);
			sub_80EBDBC(&sub_80EC86C);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
		}
		break;
    }
}

void sub_80ECC08()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        if (sub_80EEC90())
        {
            PlaySE(SE_SELECT);
            sub_80EF428(2, gPokenavStructPtr->unk6DAD);
            sub_80EED9C();
        }
        else if (gMain.newKeys & A_BUTTON)
        {
            PlaySE(SE_SELECT);
            switch ((s8)gPokenavStructPtr->unk6DAD)
            {
            case 0:
                gPokenavStructPtr->unk87D8 = 22;
                break;
            case 1:
                gPokenavStructPtr->unk87D8 = 23;
                break;
            case 2:
                gPokenavStructPtr->unk87D8 = 24;
                break;
            case 3:
                gPokenavStructPtr->unk87D8 = 33;
                break;
            case 4:
                gPokenavStructPtr->unk87D8 = 47;
                break;
            case 5:
                sub_80EBDBC(&sub_80EC9A8);
                return;
            }

            gPokenavStructPtr->unk6DFC = gPokenavStructPtr->unk6DAD;
            gPokenavStructPtr->unk76AA = 1;
            sub_80EBDBC(&sub_80ED01C);
        }
        else if (gMain.newKeys & B_BUTTON)
        {
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk6DAD = 0x5;
            gPokenavStructPtr->unk304++;
        }
        break;
    case 1:
        if (!sub_80F1E6C())
			sub_80EBDBC(&sub_80EC9A8);
        break;
    }
}

void sub_80ECD80()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 2:
        if (!sub_80EEF78())
        {
			SetVBlankCallback(&sub_80EBD80);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 3:
        sub_80EED1C();
        sub_80F3130();
        gPokenavStructPtr->unk304++;
        break;
    case 4:
        sub_80F2D6C(0x1);
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80F2D6C(0x5);
        gPokenavStructPtr->unk304++;
        break;
    case 6:
        gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DFC;
        gPokenavStructPtr->unk6DAE = 0x6;
        sub_80EEE08();
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EF248(0x2);
        gPokenavStructPtr->unk304++;
        // fall through
    case 8:
        if (!sub_80EF284(0x2))
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        sub_80F1B8C(2);
        gPokenavStructPtr->unk304++;
        // fall through
    case 10:
        if (!sub_80F1BC8(2))
			gPokenavStructPtr->unk304++;
        break;
    case 11:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 12:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 13:
        sub_80EED2C(0);
        gPokenavStructPtr->unk304++;
        break;
    case 14:
        sub_80F2598();
        gPokenavStructPtr->unk304++;
        break;
    case 15:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 16:
        sub_80F2C80(0x1);
        gPokenavStructPtr->unk304++;
        // fall through
    case 17:
        if (!sub_80F2CBC(0x1))
        {
			gPokenavStructPtr->unk306 = 0;
			gPokenavStructPtr->unk304++;
		}
        break;
    case 18:
        sub_80F2C80(0x5);
        gPokenavStructPtr->unk304++;
        // fall through
    case 19:
        if (!sub_80F2CBC(0x5))
        {
			sub_80F1DF0();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 20:
        if (!sub_80F1E50())
		{
			sub_80EF428(2, gPokenavStructPtr->unk6DAD);
			sub_80EBDBC(&sub_80ECC08);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
		}
		break;
    }
}

void sub_80ED01C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F1E84();
        sub_80F2D04(0x1);
        sub_80F2D04(0x5);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F1F10())
        {
			sub_80EEFBC(0);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_80EEF34())
        {
			BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
			gPokenavStructPtr->unk304++;
		}
        break;
    case 3:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80EF814();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F2620();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80F4D44();
        gPokenavStructPtr->unk304++;
        // fall through
    case 6:
        if (!sub_80F4D88())
            gPokenavStructPtr->unk304 += 2;
        else
			gPokenavStructPtr->unk304 += 1;
        break;
    case 7:
        if (!sub_8055870())
			gPokenavStructPtr->unk304--;
        break;
    case 8:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        sub_80F0264(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 10:
        if (!sub_80F02A0())
			gPokenavStructPtr->unk304++;
        break;
    case 11:
        sub_80F3008(0);
        gPokenavStructPtr->unk304++;
        break;
    case 12:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 13:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 14:
        sub_80EED2C(0x4);
        gPokenavStructPtr->unk304++;
        break;
    case 15:
        if (!gPaletteFade.active)
        {
			gPokenavStructPtr->unk306 = 0;
			gPokenavStructPtr->unk304++;
		}
        break;
    case 16:
        sub_80F2C80(0x1);
        gPokenavStructPtr->unk304++;
        // fall through
    case 17:
        if (!sub_80F2CBC(0x1))
        {
			gPokenavStructPtr->unk306 = 0;
			gPokenavStructPtr->unk304++;
		}
        break;
    case 18:
        sub_80F2C80(gPokenavStructPtr->unk6DFC + 7);
        gPokenavStructPtr->unk304++;
        // fall through
    case 19:
        if (!sub_80F2CBC(gPokenavStructPtr->unk6DFC + 7))
		{
			sub_80EBDBC(&sub_80ED31C);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
		}
        break;
    }
}

void sub_80ED31C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        switch (sub_80F5DD4())
        {
        case 1:
            PlaySE(SE_SELECT);
            ShowMapNamePopUpWindow();
            return;
        case 2:
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk304++;
            return;
        default:
            if (gMain.newKeys & A_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80ED4D8);
				return;
            }
            else if (gMain.newKeys & B_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80ECD80);
				return;
            }
            break;
        }
        break;
    case 1:
        if (!sub_80F0718())
        {
			ShowMapNamePopUpWindow();
			sub_80F3264();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_8055870())
			gPokenavStructPtr->unk304 = 0;
        break;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 1, 8, 2, 4);
#endif
}

void sub_80ED3D0()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        SetVBlankCallback(NULL);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        sub_80EED0C();
        sub_80F6134();
        gPokenavStructPtr->unk304++;
        break;
    case 2:
        sub_80EEFBC(0);
        gPokenavStructPtr->unk304++;
        break;
    case 3:
        sub_80F0264(0);
        gPokenavStructPtr->unk304++;
        // fall through
    case 4:
        if (!sub_80F02A0())
			gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 6:
        sub_80F3008(0);
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EED2C(0x4);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        break;
    case 8:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80ED31C);
		break;
    }
}

void sub_80ED4D8()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80F3130();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 3:
        sub_80F4CF0();
        gPokenavStructPtr->unk304++;
        break;
    case 4:
        sub_80EFF34();
        gPokenavStructPtr->unk304++;
        // fall through
    case 5:
        if (!sub_80EFF68())
			gPokenavStructPtr->unk304++;
        break;
    case 6:
        sub_80F35B4();
        sub_80EEFBC(0x2);
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(sub_80EBD4C);
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EED2C(0x2);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF000), 4);
#endif
        break;
    case 8:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80ED858);
        break;
    }
}

void sub_80ED620()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F1E84();
        sub_80F2D04(0x1);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F1F10())
        {
			sub_80EEFBC(0x1);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_80EEF34())
        {
            BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0x0, 16, RGB(0, 0, 0));
            gPokenavStructPtr->unk304++;
        }
        break;
    case 3:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80EF814();
			gPokenavStructPtr->unk76AA = 0;
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F2620();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        gPokenavStructPtr->unkD162 = 0x2;
        sub_80F4BD0();
        gPokenavStructPtr->unk304++;
        break;
    case 6:
        sub_80EFF34();
        gPokenavStructPtr->unk304++;
        // fall through
    case 7:
        if (!sub_80EFF68())
			gPokenavStructPtr->unk304++;
        break;
    case 8:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 10:
        sub_80F33A8();
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD4C);
        gPokenavStructPtr->unk304++;
        break;
    case 11:
        sub_80EED2C(0x2);
        gPokenavStructPtr->unk304++;
        break;
    case 12:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 13:
        sub_80F2C80(0x1);
        gPokenavStructPtr->unk304++;
    case 14:
        if (!sub_80F2CBC(0x1))
			gPokenavStructPtr->unk304++;
        break;
    case 15:
        sub_80F2C80(0x6);
        gPokenavStructPtr->unk304++;
        // fall through
    case 16:
        if (!sub_80F2CBC(0x6))
		{
			sub_80EBDBC(&sub_80ED858);
#if DEBUG
			if (gLinkOpen == TRUE)
				debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF000), 4);
#endif
		}
        break;
    }
}

#if 0
void sub_80F4F78();
void sub_80F0174(u32);
bool8 sub_80F4FB4();
void sub_80F3668();
bool8 sub_80F7500();
void sub_80F3698();
bool8 sub_80F5038();
void sub_80F2F48();
void sub_80F3CE8();
void sub_80F3614();
void sub_80F357C();
void sub_80F4FDC();

void sub_80ED858() {
    u8 var1;
    switch (gPokenavStructPtr->unk304) {
    case 0:
        sub_80F4F78();
        sub_80F5B38();
        gPokenavStructPtr->unk304 = 0x1;
        break;
    case 1:
        if (sub_80F5B50()) return;
        gPokenavStructPtr->unk304 = 0x2;
        break;
    case 2:
        sub_80F0174(0x1);
        gPokenavStructPtr->unk304 = 0x3;
        break;
    case 3:
        if (sub_80F4FB4()) return;
        sub_80F3C94();
        sub_80F3D00();
        gPokenavStructPtr->unk304 = 0x4;
        break;
    case 4:
        if ( (gMain.heldKeys & 0x40) && (gPokenavStructPtr->unk87CB) && (!(gPokenavStructPtr->unk76AA) || (gPokenavStructPtr->unk87DC)) ) {
            PlaySE(SE_SELECT);
            sub_80F5060(0x1);
            move_anim_execute();
            gPokenavStructPtr->unk304 = 0x5;
        }
        else if ( (gMain.heldKeys & 0x80) && (gPokenavStructPtr->unk87CB) && (!(gPokenavStructPtr->unk76AA) || (gPokenavStructPtr->unk76AA >= gPokenavStructPtr->unk87DC)) ) {
            PlaySE(SE_SELECT);
            sub_80F5060(0);
            move_anim_execute();
            gPokenavStructPtr->unk304 = 0x5;
        }
        if (gMain.newKeys & B_BUTTON) {
            PlaySE(SE_SELECT);
            sub_80F4FDC();
            move_anim_execute();
            gPokenavStructPtr->unk304 = 0x9;
        }
        else if (gMain.newKeys & A_BUTTON) {
            if (gPokenavStructPtr->unk76AA) {
                if (gPokenavStructPtr->unk6DAC) {
                    PlaySE(SE_SELECT);
                    gPokenavStructPtr->unk304 = 0x7;
                }
            }
            else if ((gPokenavStructPtr->unk87DC == gPokenavStructPtr->unk87DA - 1)) {
                PlaySE(SE_SELECT);
                gPokenavStructPtr->unk304 = 0x9;
            }
        }

/*
        if (gMain.heldKeys & 0x40) {
            if (gPokenavStructPtr->unk87CB) {
                if (gPokenavStructPtr->unk76AA) {
                    if (!gPokenavStructPtr->unk87DC) goto label1;
                }
                PlaySE(SE_SELECT);
                sub_80F5060(0x1);
                move_anim_execute();
                gPokenavStructPtr->unk304 = 0x5;

            }
            else goto label1;
        }
        else goto label1;
        break;
label1:
        if (gMain.heldKeys & 0x80) {
            if (gPokenavStructPtr->unk87CB) {
                if (gPokenavStructPtr->unk76AA) {
                    if (!(gPokenavStructPtr->unk76AA < gPokenavStructPtr->unk87DC)) goto label2;
                }
                PlaySE(SE_SELECT);
                sub_80F5060(0x1);
                move_anim_execute();
                gPokenavStructPtr->unk304 = 0x5;
            }
            else goto label2;
        }
        else goto label2;
        break;
label2:
        if (gMain.newKeys & B_BUTTON) {
            PlaySE(SE_SELECT);
            sub_80F4FDC();
            move_anim_execute();
            gPokenavStructPtr->unk304 = 0x9;
        }
        else if (gMain.newKeys & A_BUTTON) {
            if (!gPokenavStructPtr->unk76AA) {
                if ((gPokenavStructPtr->unk87DC == gPokenavStructPtr->unk87DA - 1)) {
                    PlaySE(SE_SELECT);
                    gPokenavStructPtr->unk304 = 0x9;
                }
            }
            else {
                PlaySE(SE_SELECT);
                gPokenavStructPtr->unk304 = 0x9;
            }
        }
*/
        break;

    case 5:
        if (gpu_sync_bg_show()) return;
        sub_80F3D00();
        gPokenavStructPtr->unk304 = 0x6;
        break;
    case 6:
        if (sub_8055870()) return;
        gPokenavStructPtr->unk304 = 0x4;
        break;
    case 7:
        sub_80EEFBC(0x3);
        sub_80F3668();
        gPokenavStructPtr->unk304 = 0x8;
        break;
    case 8:
        if (sub_80F7500()) return;
        sub_80EEFBC(0x2);
        sub_80F3698();
        gPokenavStructPtr->unk304 = 0x4;
        break;
    case 9:
        if (!(var1 = sub_80F5038())) {
            sub_80F0174(0);
            sub_80F2F48();
            BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0x0, 0x10, var1);
            gPokenavStructPtr->unk304 = 0xB;
        }
        break;
    case 0xA:
        if (gPaletteFade.active) return;
        sub_80F3CE8();
        sub_80F5BDC();
        if (!gPokenavStructPtr->unk76AA) {
            sub_80F357C();
            sub_80F2D6C(0x1);
            sub_80F2D6C(0x6);
            sub_80EBDBC(&sub_80ECA10);
        }
        else {
            sub_80F3614();
            sub_80EBDBC(&sub_80ED3D0);
        }
        break;
    }

}
#else
#if DEBUG
NAKED
void sub_80ED858()
{
    asm("\
	push	{r4, r5, lr}\n\
	add	sp, sp, #0xfffffffc\n\
	ldr	r1, ._917       @ gSharedMem\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r0, r1, r2\n\
	ldrh	r0, [r0]\n\
	add	r5, r1, #0\n\
	cmp	r0, #0xb\n\
	bls	._915	@cond_branch\n\
	b	._999\n\
._915:\n\
	lsl	r0, r0, #0x2\n\
	ldr	r1, ._917 + 4   @ \n\
	add	r0, r0, r1\n\
	ldr	r0, [r0]\n\
	mov	pc, r0\n\
._918:\n\
	.align	2, 0\n\
._917:\n\
	.word	gSharedMem\n\
	.word	._919\n\
._919:\n\
	.word	._920\n\
	.word	._921\n\
	.word	._922\n\
	.word	._923\n\
	.word	._924\n\
	.word	._925\n\
	.word	._926\n\
	.word	._927\n\
	.word	._928\n\
	.word	._929\n\
	.word	._999\n\
	.word	._931\n\
._920:\n\
	bl	sub_80F4F78\n\
	bl	sub_80F5B38\n\
	ldr	r0, ._933       @ gSharedMem\n\
	mov	r4, #0xc1\n\
	lsl	r4, r4, #0x2\n\
	add	r0, r0, r4\n\
	mov	r1, #0x1\n\
	strh	r1, [r0]\n\
	b	._999\n\
._934:\n\
	.align	2, 0\n\
._933:\n\
	.word	gSharedMem\n\
._921:\n\
	bl	sub_80F5B50\n\
	lsl	r0, r0, #0x18\n\
	cmp	r0, #0\n\
	beq	._935	@cond_branch\n\
	b	._999\n\
._935:\n\
	ldr	r0, ._938       @ gSharedMem\n\
	mov	r1, #0xc1\n\
	lsl	r1, r1, #0x2\n\
	add	r0, r0, r1\n\
	mov	r1, #0x2\n\
	strh	r1, [r0]\n\
	b	._999\n\
._939:\n\
	.align	2, 0\n\
._938:\n\
	.word	gSharedMem\n\
._922:\n\
	mov	r0, #0x1\n\
	bl	sub_80F0174\n\
	ldr	r0, ._941       @ gSharedMem\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r0, r0, r2\n\
	mov	r1, #0x3\n\
	strh	r1, [r0]\n\
	b	._999\n\
._942:\n\
	.align	2, 0\n\
._941:\n\
	.word	gSharedMem\n\
._923:\n\
	bl	sub_80F4FB4\n\
	lsl	r0, r0, #0x18\n\
	cmp	r0, #0\n\
	beq	._943	@cond_branch\n\
	b	._999\n\
._943:\n\
	bl	sub_80F3C94\n\
	bl	sub_80F3D00\n\
	b	._945\n\
._924:\n\
	ldr	r2, ._951       @ gMain\n\
	ldrh	r1, [r2, #0x2c]\n\
	mov	r0, #0x40\n\
	and	r0, r0, r1\n\
	add	r3, r2, #0\n\
	cmp	r0, #0\n\
	beq	._949	@cond_branch\n\
	ldr	r1, ._951 + 4   @ 0x87cb\n\
	add	r0, r5, r1\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	beq	._949	@cond_branch\n\
	ldr	r2, ._951 + 8   @ 0x76aa\n\
	add	r0, r5, r2\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	beq	._948	@cond_branch\n\
	ldr	r4, ._951 + 12  @ 0x87dc\n\
	add	r0, r5, r4\n\
	mov	r1, #0x0\n\
	ldsh	r0, [r0, r1]\n\
	cmp	r0, #0\n\
	beq	._949	@cond_branch\n\
._948:\n\
	mov	r0, #0x5\n\
	bl	PlaySE\n\
	mov	r0, #0x1\n\
	bl	sub_80F5060\n\
	bl	move_anim_execute\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r1, r5, r2\n\
	b	._950\n\
._952:\n\
	.align	2, 0\n\
._951:\n\
	.word	gMain\n\
	.word	0x87cb\n\
	.word	0x76aa\n\
	.word	0x87dc\n\
._949:\n\
	ldrh	r1, [r3, #0x2c]\n\
	mov	r0, #0x80\n\
	and	r0, r0, r1\n\
	cmp	r0, #0\n\
	beq	._956	@cond_branch\n\
	ldr	r4, ._958       @ 0x87cb\n\
	add	r0, r5, r4\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	beq	._956	@cond_branch\n\
	ldr	r1, ._958 + 4   @ 0x76aa\n\
	add	r0, r5, r1\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	beq	._955	@cond_branch\n\
	ldr	r2, ._958 + 8   @ 0x87dc\n\
	add	r0, r5, r2\n\
	sub	r4, r4, #0x57\n\
	add	r1, r5, r4\n\
	mov	r4, #0x0\n\
	ldsh	r2, [r0, r4]\n\
	mov	r4, #0x0\n\
	ldsh	r0, [r1, r4]\n\
	cmp	r2, r0\n\
	bge	._956	@cond_branch\n\
._955:\n\
	mov	r0, #0x5\n\
	bl	PlaySE\n\
	mov	r0, #0x0\n\
	bl	sub_80F5060\n\
	bl	move_anim_execute\n\
	mov	r0, #0xc1\n\
	lsl	r0, r0, #0x2\n\
	add	r1, r5, r0\n\
._950:\n\
	mov	r0, #0x5\n\
	strh	r0, [r1]\n\
	b	._999\n\
._959:\n\
	.align	2, 0\n\
._958:\n\
	.word	0x87cb\n\
	.word	0x76aa\n\
	.word	0x87dc\n\
._956:\n\
	ldrh	r2, [r3, #0x2e]\n\
	mov	r0, #0x2\n\
	and	r0, r0, r2\n\
	cmp	r0, #0\n\
	beq	._960	@cond_branch\n\
	mov	r0, #0x5\n\
	bl	PlaySE\n\
	bl	sub_80F4FDC\n\
	bl	move_anim_execute\n\
	ldr	r0, ._962       @ gSharedMem\n\
	mov	r1, #0xc1\n\
	lsl	r1, r1, #0x2\n\
	add	r0, r0, r1\n\
	mov	r1, #0x9\n\
	strh	r1, [r0]\n\
	b	._999\n\
._963:\n\
	.align	2, 0\n\
._962:\n\
	.word	gSharedMem\n\
._960:\n\
	mov	r0, #0x1\n\
	and	r0, r0, r2\n\
	cmp	r0, #0\n\
	bne	._964	@cond_branch\n\
	b	._999\n\
._964:\n\
	add	r4, r5, #0\n\
	ldr	r2, ._970       @ 0x76aa\n\
	add	r0, r4, r2\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	bne	._966	@cond_branch\n\
	ldr	r1, ._970 + 4   @ 0x87dc\n\
	add	r0, r4, r1\n\
	mov	r2, #0x0\n\
	ldsh	r1, [r0, r2]\n\
	ldr	r2, ._970 + 8   @ 0x87da\n\
	add	r0, r4, r2\n\
	mov	r2, #0x0\n\
	ldsh	r0, [r0, r2]\n\
	sub	r0, r0, #0x1\n\
	cmp	r1, r0\n\
	beq	._967	@cond_branch\n\
	b	._999\n\
._967:\n\
	mov	r0, #0x5\n\
	bl	PlaySE\n\
	mov	r0, #0xc1\n\
	lsl	r0, r0, #0x2\n\
	add	r1, r4, r0\n\
	mov	r0, #0x9\n\
	strh	r0, [r1]\n\
	b	._999\n\
._971:\n\
	.align	2, 0\n\
._970:\n\
	.word	0x76aa\n\
	.word	0x87dc\n\
	.word	0x87da\n\
._966:\n\
	ldr	r1, ._975       @ 0x6dac\n\
	add	r0, r5, r1\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	beq	._972	@cond_branch\n\
	b	._999\n\
._972:\n\
	mov	r0, #0x5\n\
	bl	PlaySE\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r1, r5, r2\n\
	mov	r0, #0x7\n\
	strh	r0, [r1]\n\
	b	._999\n\
._976:\n\
	.align	2, 0\n\
._975:\n\
	.word	0x6dac\n\
._925:\n\
	bl	gpu_sync_bg_show\n\
	lsl	r0, r0, #0x18\n\
	cmp	r0, #0\n\
	beq	._977	@cond_branch\n\
	b	._999\n\
._977:\n\
	bl	sub_80F3D00\n\
	ldr	r0, ._980       @ gSharedMem\n\
	mov	r4, #0xc1\n\
	lsl	r4, r4, #0x2\n\
	add	r0, r0, r4\n\
	mov	r1, #0x6\n\
	strh	r1, [r0]\n\
	b	._999\n\
._981:\n\
	.align	2, 0\n\
._980:\n\
	.word	gSharedMem\n\
._926:\n\
	bl	sub_8055870\n\
	cmp	r0, #0\n\
	bne	._999	@cond_branch\n\
	ldr	r0, ._984       @ gSharedMem\n\
	mov	r1, #0xc1\n\
	lsl	r1, r1, #0x2\n\
	add	r0, r0, r1\n\
	b	._983\n\
._985:\n\
	.align	2, 0\n\
._984:\n\
	.word	gSharedMem\n\
._927:\n\
	mov	r0, #0x3\n\
	bl	sub_80EEFBC\n\
	bl	sub_80F3668\n\
	ldr	r0, ._987       @ gSharedMem\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r0, r0, r2\n\
	mov	r1, #0x8\n\
	strh	r1, [r0]\n\
	b	._999\n\
._988:\n\
	.align	2, 0\n\
._987:\n\
	.word	gSharedMem\n\
._928:\n\
	bl	sub_80F7500\n\
	lsl	r0, r0, #0x18\n\
	cmp	r0, #0\n\
	bne	._999	@cond_branch\n\
	mov	r0, #0x2\n\
	bl	sub_80EEFBC\n\
	bl	sub_80F3698\n\
._945:\n\
	ldr	r0, ._991       @ gSharedMem\n\
	mov	r4, #0xc1\n\
	lsl	r4, r4, #0x2\n\
	add	r0, r0, r4\n\
._983:\n\
	mov	r1, #0x4\n\
	strh	r1, [r0]\n\
	b	._999\n\
._992:\n\
	.align	2, 0\n\
._991:\n\
	.word	gSharedMem\n\
._929:\n\
	bl	sub_80F5038\n\
	lsl	r0, r0, #0x18\n\
	lsr	r4, r0, #0x18\n\
	cmp	r4, #0\n\
	bne	._999	@cond_branch\n\
	mov	r0, #0x0\n\
	bl	sub_80F0174\n\
	bl	sub_80F2F48\n\
	ldr	r5, ._995       @ gSharedMem\n\
	mov	r1, #0xc2\n\
	lsl	r1, r1, #0x2\n\
	add	r0, r5, r1\n\
	ldr	r0, [r0]\n\
	mov	r1, #0x1\n\
	neg	r1, r1\n\
	str	r4, [sp]\n\
	mov	r2, #0x0\n\
	mov	r3, #0x10\n\
	bl	BeginNormalPaletteFade\n\
	mov	r2, #0xc1\n\
	lsl	r2, r2, #0x2\n\
	add	r1, r5, r2\n\
	mov	r0, #0xb\n\
	strh	r0, [r1]\n\
	b	._999\n\
._996:\n\
	.align	2, 0\n\
._995:\n\
	.word	gSharedMem\n\
._931:\n\
	ldr	r0, ._1000      @ gPaletteFade\n\
	ldrb	r1, [r0, #0x7]\n\
	mov	r0, #0x80\n\
	and	r0, r0, r1\n\
	cmp	r0, #0\n\
	bne	._999	@cond_branch\n\
	bl	sub_80F3CE8\n\
	bl	sub_80F5BDC\n\
	ldr	r0, ._1000 + 4  @ gSharedMem\n\
	ldr	r4, ._1000 + 8  @ 0x76aa\n\
	add	r0, r0, r4\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0\n\
	bne	._998	@cond_branch\n\
	bl	sub_80F357C\n\
	mov	r0, #0x1\n\
	bl	sub_80F2D6C\n\
	mov	r0, #0x6\n\
	bl	sub_80F2D6C\n\
	ldr	r0, ._1000 + 12 @ sub_80ECA10\n\
	bl	sub_80EBDBC\n\
	b	._999\n\
._1001:\n\
	.align	2, 0\n\
._1000:\n\
	.word	gPaletteFade\n\
	.word	gSharedMem\n\
	.word	0x76aa\n\
	.word	sub_80ECA10+1\n\
._998:\n\
	bl	sub_80F3614\n\
	ldr	r0, ._1003      @ sub_80ED3D0\n\
	bl	sub_80EBDBC\n\
._999:\n\
	ldr	r0, ._1003 + 4  @ gLinkOpen\n\
	ldrb	r0, [r0]\n\
	cmp	r0, #0x1\n\
	bne	._1002	@cond_branch\n\
	ldr	r0, ._1003 + 8  @ gLink\n\
	ldr	r1, ._1003 + 12 @ 0xfbd\n\
	add	r0, r0, r1\n\
	ldrb	r0, [r0]\n\
	mov	r1, #0x4\n\
	str	r1, [sp]\n\
	mov	r1, #0x9\n\
	mov	r2, #0x6\n\
	mov	r3, #0x2\n\
	bl	debug_sub_8008264\n\
._1002:\n\
	add	sp, sp, #0x4\n\
	pop	{r4, r5}\n\
	pop	{r0}\n\
	bx	r0\n\
._1004:\n\
	.align	2, 0\n\
._1003:\n\
	.word	sub_80ED3D0+1\n\
	.word	gLinkOpen\n\
	.word	gLink\n\
	.word	0xfbd");
}
#else
NAKED
void sub_80ED858()
{
    asm_unified("push {r4,r5,lr}\n\
    sub sp, 0x4\n\
    ldr r1, _080ED878 @ =gSharedMem\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r0, r1, r2\n\
    ldrh r0, [r0]\n\
    adds r5, r1, 0\n\
    cmp r0, 0xB\n\
    bls _080ED86E\n\
    b _080EDB7A\n\
_080ED86E:\n\
    lsls r0, 2\n\
    ldr r1, _080ED87C @ =_080ED880\n\
    adds r0, r1\n\
    ldr r0, [r0]\n\
    mov pc, r0\n\
    .align 2, 0\n\
_080ED878: .4byte gSharedMem\n\
_080ED87C: .4byte _080ED880\n\
    .align 2, 0\n\
_080ED880:\n\
    .4byte _080ED8B0\n\
    .4byte _080ED8CC\n\
    .4byte _080ED8EC\n\
    .4byte _080ED904\n\
    .4byte _080ED91A\n\
    .4byte _080EDA68\n\
    .4byte _080EDA8C\n\
    .4byte _080EDAA4\n\
    .4byte _080EDAC0\n\
    .4byte _080EDAE8\n\
    .4byte _080EDB7A\n\
    .4byte _080EDB28\n\
_080ED8B0:\n\
    bl sub_80F4F78\n\
    bl sub_80F5B38\n\
    ldr r0, _080ED8C8 @ =gSharedMem\n\
    movs r4, 0xC1\n\
    lsls r4, 2\n\
    adds r0, r4\n\
    movs r1, 0x1\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080ED8C8: .4byte gSharedMem\n\
_080ED8CC:\n\
    bl sub_80F5B50\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    beq _080ED8D8\n\
    b _080EDB7A\n\
_080ED8D8:\n\
    ldr r0, _080ED8E8 @ =gSharedMem\n\
    movs r1, 0xC1\n\
    lsls r1, 2\n\
    adds r0, r1\n\
    movs r1, 0x2\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080ED8E8: .4byte gSharedMem\n\
_080ED8EC:\n\
    movs r0, 0x1\n\
    bl sub_80F0174\n\
    ldr r0, _080ED900 @ =gSharedMem\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r0, r2\n\
    movs r1, 0x3\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080ED900: .4byte gSharedMem\n\
_080ED904:\n\
    bl sub_80F4FB4\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    beq _080ED910\n\
    b _080EDB7A\n\
_080ED910:\n\
    bl sub_80F3C94\n\
    bl sub_80F3D00\n\
    b _080EDAD4\n\
_080ED91A:\n\
    ldr r2, _080ED960 @ =gMain\n\
    ldrh r1, [r2, 0x2C]\n\
    movs r0, 0x40\n\
    ands r0, r1\n\
    adds r3, r2, 0\n\
    cmp r0, 0\n\
    beq _080ED970\n\
    ldr r1, _080ED964 @ =0x000087cb\n\
    adds r0, r5, r1\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    beq _080ED970\n\
    ldr r2, _080ED968 @ =0x000076aa\n\
    adds r0, r5, r2\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    beq _080ED948\n\
    ldr r4, _080ED96C @ =0x000087dc\n\
    adds r0, r5, r4\n\
    movs r1, 0\n\
    ldrsh r0, [r0, r1]\n\
    cmp r0, 0\n\
    beq _080ED970\n\
_080ED948:\n\
    movs r0, 0x5\n\
    bl PlaySE\n\
    movs r0, 0x1\n\
    bl sub_80F5060\n\
    bl move_anim_execute\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r1, r5, r2\n\
    b _080ED9B8\n\
    .align 2, 0\n\
_080ED960: .4byte gMain\n\
_080ED964: .4byte 0x000087cb\n\
_080ED968: .4byte 0x000076aa\n\
_080ED96C: .4byte 0x000087dc\n\
_080ED970:\n\
    ldrh r1, [r3, 0x2C]\n\
    movs r0, 0x80\n\
    ands r0, r1\n\
    cmp r0, 0\n\
    beq _080ED9CC\n\
    ldr r4, _080ED9C0 @ =0x000087cb\n\
    adds r0, r5, r4\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    beq _080ED9CC\n\
    ldr r1, _080ED9C4 @ =0x000076aa\n\
    adds r0, r5, r1\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    beq _080ED9A2\n\
    ldr r2, _080ED9C8 @ =0x000087dc\n\
    adds r0, r5, r2\n\
    subs r4, 0x57\n\
    adds r1, r5, r4\n\
    movs r4, 0\n\
    ldrsh r2, [r0, r4]\n\
    movs r4, 0\n\
    ldrsh r0, [r1, r4]\n\
    cmp r2, r0\n\
    bge _080ED9CC\n\
_080ED9A2:\n\
    movs r0, 0x5\n\
    bl PlaySE\n\
    movs r0, 0\n\
    bl sub_80F5060\n\
    bl move_anim_execute\n\
    movs r0, 0xC1\n\
    lsls r0, 2\n\
    adds r1, r5, r0\n\
_080ED9B8:\n\
    movs r0, 0x5\n\
    strh r0, [r1]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080ED9C0: .4byte 0x000087cb\n\
_080ED9C4: .4byte 0x000076aa\n\
_080ED9C8: .4byte 0x000087dc\n\
_080ED9CC:\n\
    ldrh r2, [r3, 0x2E]\n\
    movs r0, 0x2\n\
    ands r0, r2\n\
    cmp r0, 0\n\
    beq _080ED9F8\n\
    movs r0, 0x5\n\
    bl PlaySE\n\
    bl sub_80F4FDC\n\
    bl move_anim_execute\n\
    ldr r0, _080ED9F4 @ =gSharedMem\n\
    movs r1, 0xC1\n\
    lsls r1, 2\n\
    adds r0, r1\n\
    movs r1, 0x9\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080ED9F4: .4byte gSharedMem\n\
_080ED9F8:\n\
    movs r0, 0x1\n\
    ands r0, r2\n\
    cmp r0, 0\n\
    bne _080EDA02\n\
    b _080EDB7A\n\
_080EDA02:\n\
    adds r4, r5, 0\n\
    ldr r2, _080EDA38 @ =0x000076aa\n\
    adds r0, r4, r2\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    bne _080EDA44\n\
    ldr r1, _080EDA3C @ =0x000087dc\n\
    adds r0, r4, r1\n\
    movs r2, 0\n\
    ldrsh r1, [r0, r2]\n\
    ldr r2, _080EDA40 @ =0x000087da\n\
    adds r0, r4, r2\n\
    movs r2, 0\n\
    ldrsh r0, [r0, r2]\n\
    subs r0, 0x1\n\
    cmp r1, r0\n\
    beq _080EDA26\n\
    b _080EDB7A\n\
_080EDA26:\n\
    movs r0, 0x5\n\
    bl PlaySE\n\
    movs r0, 0xC1\n\
    lsls r0, 2\n\
    adds r1, r4, r0\n\
    movs r0, 0x9\n\
    strh r0, [r1]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDA38: .4byte 0x000076aa\n\
_080EDA3C: .4byte 0x000087dc\n\
_080EDA40: .4byte 0x000087da\n\
_080EDA44:\n\
    ldr r1, _080EDA64 @ =0x00006dac\n\
    adds r0, r5, r1\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    beq _080EDA50\n\
    b _080EDB7A\n\
_080EDA50:\n\
    movs r0, 0x5\n\
    bl PlaySE\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r1, r5, r2\n\
    movs r0, 0x7\n\
    strh r0, [r1]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDA64: .4byte 0x00006dac\n\
_080EDA68:\n\
    bl gpu_sync_bg_show\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    beq _080EDA74\n\
    b _080EDB7A\n\
_080EDA74:\n\
    bl sub_80F3D00\n\
    ldr r0, _080EDA88 @ =gSharedMem\n\
    movs r4, 0xC1\n\
    lsls r4, 2\n\
    adds r0, r4\n\
    movs r1, 0x6\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDA88: .4byte gSharedMem\n\
_080EDA8C:\n\
    bl sub_8055870\n\
    cmp r0, 0\n\
    bne _080EDB7A\n\
    ldr r0, _080EDAA0 @ =gSharedMem\n\
    movs r1, 0xC1\n\
    lsls r1, 2\n\
    adds r0, r1\n\
    b _080EDADC\n\
    .align 2, 0\n\
_080EDAA0: .4byte gSharedMem\n\
_080EDAA4:\n\
    movs r0, 0x3\n\
    bl sub_80EEFBC\n\
    bl sub_80F3668\n\
    ldr r0, _080EDABC @ =gSharedMem\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r0, r2\n\
    movs r1, 0x8\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDABC: .4byte gSharedMem\n\
_080EDAC0:\n\
    bl sub_80F7500\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    bne _080EDB7A\n\
    movs r0, 0x2\n\
    bl sub_80EEFBC\n\
    bl sub_80F3698\n\
_080EDAD4:\n\
    ldr r0, _080EDAE4 @ =gSharedMem\n\
    movs r4, 0xC1\n\
    lsls r4, 2\n\
    adds r0, r4\n\
_080EDADC:\n\
    movs r1, 0x4\n\
    strh r1, [r0]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDAE4: .4byte gSharedMem\n\
_080EDAE8:\n\
    bl sub_80F5038\n\
    lsls r0, 24\n\
    lsrs r4, r0, 24\n\
    cmp r4, 0\n\
    bne _080EDB7A\n\
    movs r0, 0\n\
    bl sub_80F0174\n\
    bl sub_80F2F48\n\
    ldr r5, _080EDB24 @ =gSharedMem\n\
    movs r1, 0xC2\n\
    lsls r1, 2\n\
    adds r0, r5, r1\n\
    ldr r0, [r0]\n\
    movs r1, 0x1\n\
    negs r1, r1\n\
    str r4, [sp]\n\
    movs r2, 0\n\
    movs r3, 0x10\n\
    bl BeginNormalPaletteFade\n\
    movs r2, 0xC1\n\
    lsls r2, 2\n\
    adds r1, r5, r2\n\
    movs r0, 0xB\n\
    strh r0, [r1]\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDB24: .4byte gSharedMem\n\
_080EDB28:\n\
    ldr r0, _080EDB60 @ =gPaletteFade\n\
    ldrb r1, [r0, 0x7]\n\
    movs r0, 0x80\n\
    ands r0, r1\n\
    cmp r0, 0\n\
    bne _080EDB7A\n\
    bl sub_80F3CE8\n\
    bl sub_80F5BDC\n\
    ldr r0, _080EDB64 @ =gSharedMem\n\
    ldr r4, _080EDB68 @ =0x000076aa\n\
    adds r0, r4\n\
    ldrb r0, [r0]\n\
    cmp r0, 0\n\
    bne _080EDB70\n\
    bl sub_80F357C\n\
    movs r0, 0x1\n\
    bl sub_80F2D6C\n\
    movs r0, 0x6\n\
    bl sub_80F2D6C\n\
    ldr r0, _080EDB6C @ =sub_80ECA10\n\
    bl sub_80EBDBC\n\
    b _080EDB7A\n\
    .align 2, 0\n\
_080EDB60: .4byte gPaletteFade\n\
_080EDB64: .4byte gSharedMem\n\
_080EDB68: .4byte 0x000076aa\n\
_080EDB6C: .4byte sub_80ECA10\n\
_080EDB70:\n\
    bl sub_80F3614\n\
    ldr r0, _080EDB84 @ =sub_80ED3D0\n\
    bl sub_80EBDBC\n\
_080EDB7A:\n\
    add sp, 0x4\n\
    pop {r4,r5}\n\
    pop {r0}\n\
    bx r0\n\
    .align 2, 0\n\
_080EDB84: .4byte sub_80ED3D0\n");
}
#endif
#endif

void sub_80EDB88()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F1E84();
        sub_80F2D04(0);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F1F10())
        {
			sub_80EEFBC(0x4);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_80EEF34())
        {
            BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
            gPokenavStructPtr->unk304++;
        }
        break;
    case 3:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80EF814();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F2620();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80F638C();
        gPokenavStructPtr->unk304++;
    case 6:
        if (!sub_80F63D0())
            gPokenavStructPtr->unk304 += 2;
        else
			gPokenavStructPtr->unk304 += 1;
        break;
    case 7:
        if (!sub_8055870())
			gPokenavStructPtr->unk304--;
        break;
    case 8:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        sub_80F0264(0x1);
        gPokenavStructPtr->unk304++;
    case 10:
        if (!sub_80F02A0())
			gPokenavStructPtr->unk304++;
        break;
    case 11:
        sub_80F2C80(0x2);
        gPokenavStructPtr->unk304++;
    case 12:
        if (!sub_80F2CBC(0x2))
			gPokenavStructPtr->unk304++;
        break;
    case 13:
        sub_80F3008(0x1);
        gPokenavStructPtr->unk304++;
        break;
    case 14:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 15:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 16:
        sub_80EED2C(0x4);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        break;
    case 17:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80EDDBC);
        break;
    }
}

void sub_80EDDBC()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        switch (sub_80F5DD4())
        {
        case 1:
            PlaySE(SE_SELECT);
            ShowMapNamePopUpWindow();
            return;
        case 2:
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk304++;
            return;
        default:
            if (gMain.newKeys & A_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80EDEE4);
				return;
            }
            else if (gMain.newKeys & B_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80EDE70);
				return;
            }
            break;
        }
        break;
    case 1:
        if (!sub_80F0718())
        {
			ShowMapNamePopUpWindow();
			sub_80F3264();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_8055870())
			gPokenavStructPtr->unk304 = 0;
        break;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 1, 8, 2, 4);
#endif
}

void sub_80EDE70()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
			sub_80F3130();
			sub_80F2D6C(0x2);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        sub_80EBDBC(&sub_80EC00C);
        break;
    }

}

void sub_80EDEE4()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80F3130();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        sub_80F66E0();
        sub_80EEE08();
        gPokenavStructPtr->unk304++;
        break;
    case 3:
        if (!sub_80F1080())
			gPokenavStructPtr->unk304++;
        break;
    case 4:
        sub_80EEFBC(0x5);
        sub_80F38B8();
        gPokenavStructPtr->unk304++;
    case 5:
        if (!sub_80F38EC())
			gPokenavStructPtr->unk304++;
        break;
    case 6:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 7:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 8:
        sub_80EED2C(0x3);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF000), 4);
#endif
        break;
    case 9:
        if (!gPaletteFade.active)
			gPokenavStructPtr->unk304++;
        break;
    case 10:
        if (!sub_80F170C())
			sub_80EBDBC(&sub_80EE06C);
        break;
    }
}

void sub_80EE06C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F15A8();
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if ((gMain.newAndRepeatedKeys & 0x40) && (gPokenavStructPtr->unk87DC))
        {
			PlaySE(SE_SELECT);
			sub_80F6A4C(-1);
			gPokenavStructPtr->unk304++;
        }
		else if ((gMain.newAndRepeatedKeys & 0x80) && gPokenavStructPtr->unk87DC < gPokenavStructPtr->unk8774)
		{
            PlaySE(SE_SELECT);
            sub_80F6A4C(1);
            gPokenavStructPtr->unk304++;
        }
        else if (gMain.newKeys & A_BUTTON)
        {
            PlaySE(SE_SELECT);
            sub_80EEFBC(0xB);
            gPokenavStructPtr->unk304 = 0x4;
        }
        else if (gMain.newKeys & B_BUTTON)
        {
            PlaySE(SE_SELECT);
            sub_80EBDBC(&sub_80EE294);
        }
        break;
    case 2:
        if (!sub_80F6AF0())
			gPokenavStructPtr->unk304++;
        break;
    case 3:
        if (!sub_8055870())
			gPokenavStructPtr->unk304 = 0;
        break;
    case 4:
        sub_80F3B00();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (!sub_80F3B58())
		{
			sub_80F1494();
			gPokenavStructPtr->unk304++;
			sub_80EED9C();
		}
        break;
    case 6:
        switch (sub_80F68E8())
        {
        case 1:
            PlaySE(SE_SELECT);
            sub_80F3B94();
            gPokenavStructPtr->unk304 = 0x7;
            return;
        default:
        case 0:
            if (gMain.newKeys & B_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80F3B94();
                gPokenavStructPtr->unk304 = 0x8;
            }
            break;
        }
        break;
    case 7:
        if (!sub_80F3BD4())
			gPokenavStructPtr->unk304 = 0x4;
        break;
    case 8:
        if (!sub_80F3BD4())
		{
			sub_80EEFBC(0x5);
			gPokenavStructPtr->unk304 = 0;
		}
        break;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 1, 4, 2, 4);
#endif
}

void sub_80EE294()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80F3C2C();
			sub_80EEE08();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        sub_80F6134();
        sub_80F0264(0x1);
        gPokenavStructPtr->unk304++;
    case 3:
        if (!sub_80F02A0())
			gPokenavStructPtr->unk304++;
        break;
    case 4:
        sub_80EEFBC(0x4);
        sub_80F3008(0x1);
        SetVBlankCallback(&sub_80EBD18);
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 6:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80EED2C(0x4);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        break;
    case 8:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80EDDBC);
        break;
    }
}

void sub_80EE3D8()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F1E84();
        sub_80F2D04(0);
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F1F10())
        {
			sub_80EEFBC(0x9);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_80EEF34())
        {
            BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
            gPokenavStructPtr->unk304++;
        }
        break;
    case 3:
        if (!gPaletteFade.active)
        {
			SetVBlankCallback(NULL);
			sub_80EED0C();
			sub_80EF814();
			sub_80EEE08();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F2620();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80F0264(0x2);
        gPokenavStructPtr->unk304++;
    case 6:
        if (!sub_80F02A0())
			gPokenavStructPtr->unk304++;
        break;
    case 7:
        sub_80F2C80(0x3);
        gPokenavStructPtr->unk304++;
    case 8:
        if (!sub_80F2CBC(0x3))
			gPokenavStructPtr->unk304++;
        break;
    case 9:
        sub_80F3008(0x2);
        gPokenavStructPtr->unk304++;
        break;
    case 10:
        if (!sub_8055870())
			gPokenavStructPtr->unk304++;
        break;
    case 11:
        sub_80F6F10();
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 16, 0, RGB(0, 0, 0));
        SetVBlankCallback(&sub_80EBD68);
        gPokenavStructPtr->unk304++;
        break;
    case 12:
        sub_80EED2C(0x5);
        gPokenavStructPtr->unk304++;
#if DEBUG
		if (gLinkOpen == TRUE)
			debug_sub_8008218((void *)(VRAM + 0x7DE0), 0, (void *)(VRAM + 0xF800), 4);
#endif
        break;
    case 13:
        if (!gPaletteFade.active)
			sub_80EBDBC(&sub_80EE58C);
        break;
    }
}

void sub_80EE58C()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        switch (sub_80F5DD4())
        {
        case 1:
            PlaySE(SE_SELECT);
            sub_80F0FFC(gPokenavStructPtr->unk876E);
            return;
        case 2:
            PlaySE(SE_SELECT);
            gPokenavStructPtr->unk304++;
            return;
        default:
            if (gMain.newKeys & A_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80EE658);
				return;
            }
            else if (gMain.newKeys & B_BUTTON)
            {
                PlaySE(SE_SELECT);
                sub_80EBDBC(&sub_80EE8F4);
				return;
            }
            break;
        }
        break;
    case 1:
        if (!sub_80F0718())
        {
			sub_80F0FFC(gPokenavStructPtr->unk876E);
			sub_80F3264();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        if (!sub_8055870())
			gPokenavStructPtr->unk304 = 0;
        break;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 1, 3, 2, 4);
#endif
}

void sub_80EE658()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        sub_80F3294(0x1);
        sub_80EEFBC(0xA);
        sub_80F0B24();
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!sub_80F0B44())
			gPokenavStructPtr->unk304++;
        break;
    case 2:
        sub_80F0F64();
        gPokenavStructPtr->unk304++;
        break;
    case 3:
        if (!sub_80F0FEC())
        {
			sub_80F6FB8(0x1);
			gPokenavStructPtr->unk304++;
		}
        break;
    case 4:
        sub_80F6DB8();
        gPokenavStructPtr->unk304++;
        break;
    case 5:
        sub_80F700C((u8 *)(gSharedMem + 0x8788), *(u16 *)(gSharedMem + 0x8788 - 0x1A));
        sub_80F42C4((u8 *)(gSharedMem + 0x8788));
        gPokenavStructPtr->unk304++;
        break;
    case 6:
        LoadTrainerEyesDescriptionLines();
        gPokenavStructPtr->unk304++;
    case 7:
        if (!sub_80F6E9C() && !sub_80F0D5C())
			gPokenavStructPtr->unk304++;
        break;
    case 8:
        if ((gMain.heldKeys & 0x40) && gPokenavStructPtr->unk87DC)
        {
			PlaySE(SE_SELECT);
			sub_80F708C(-1);
			gPokenavStructPtr->unk304 = 0x10;
        }
        else if ((gMain.heldKeys & 0x80) && gPokenavStructPtr->unk87DC < gPokenavStructPtr->unk8774)
        {
			PlaySE(SE_SELECT);
			sub_80F708C(1);
			gPokenavStructPtr->unk304 = 0x10;
        }
		else if (gMain.newKeys & B_BUTTON)
		{
            PlaySE(SE_SELECT);
            sub_80F4394();
            sub_80F0EC0();
            gPokenavStructPtr->unk304++;
        }
        break;
    case 9:
        if (!sub_80F6ED4() && !sub_80F0EF4())
        {
			sub_80F6FB8(0);
			sub_80F2FB0();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 10:
        sub_80F6134();
        gPokenavStructPtr->unk304++;
        break;
    case 11:
        sub_80F0FA0();
        gPokenavStructPtr->unk304++;
        break;
    case 12:
        if (!sub_80F0FEC())
			gPokenavStructPtr->unk304++;
        break;
    case 13:
        sub_80F0C28();
        gPokenavStructPtr->unk304++;
        break;
    case 14:
        if (!sub_80F0C48())
			gPokenavStructPtr->unk304++;
        break;
    case 15:
        sub_80EEFBC(0x9);
        sub_80F3294(0);
        sub_80EBDBC(&sub_80EE58C);
        sub_80EED9C();
        break;
    case 16:
        if (!sub_80F70FC())
			gPokenavStructPtr->unk304++;
        break;
    case 17:
        if (!sub_8055870())
			gPokenavStructPtr->unk304 = 0x8;
        break;
    }
}

void sub_80EE8F4()
{
    switch (gPokenavStructPtr->unk304)
    {
    case 0:
        BeginNormalPaletteFade(gPokenavStructPtr->unk308, -1, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
			sub_80F3130();
			sub_80F2D6C(0x2);
			sub_80F6FFC();
			gPokenavStructPtr->unk304++;
		}
        break;
    case 2:
        sub_80EBDBC(&sub_80EC00C);
        break;
    }
}

void sub_80EE96C()
{
    if (!gPokenavStructPtr->unk304)
    {
        PlaySE(0x6F);
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, RGB(0, 0, 0));
        gPokenavStructPtr->unk304++;
    }
    else
    {
        if (!gPaletteFade.active)
        {
			sub_80F5BDC();
			c2_exit_to_overworld_1_sub_8080DEC();
		}
    }
}

void sub_80EE9C0(u8 param1, u8 param2, u8 param3)
{
    sub_80F1E84();
    gPokenavStructPtr->unk6E14 = param1;
    gPokenavStructPtr->unk6E15 = param2;
    gPokenavStructPtr->unk6E16 = 0;
    gPokenavStructPtr->unk6E17 = param3;
}

#if 0
bool8 sub_80EEA0C() {
    switch (gPokenavStructPtr->unk6E16) {
    case 0:
        if (sub_80F1F10()) return 1;
        if (gPokenavStructPtr->unk6E17 != 0xC) {
            gPokenavStructPtr->unk6E16 = 0x1;
            return 1;
        }
        else {
            gPokenavStructPtr->unk6E16 = 0x3;
            return 1;
        }
    case 1:
        sub_80F2C80(gPokenavStructPtr->unk6E17);
        gPokenavStructPtr->unk6E16++;
    case 2:
        if (sub_80F2CBC(gPokenavStructPtr->unk6E17)) return 1;
        gPokenavStructPtr->unk6E16++;
    case 3:

    }
}
#else
NAKED
bool8 sub_80EEA0C() {
    asm_unified(
    "push {r4,lr}\n\
    ldr r1, _080EEA28 @ =gSharedMem\n\
    ldr r2, _080EEA2C @ =0x00006e16\n\
    adds r0, r1, r2\n\
    ldrb r0, [r0]\n\
    adds r3, r1, 0\n\
    cmp r0, 0x8\n\
    bls _080EEA1E\n\
    b _080EEBFA\n\
_080EEA1E:\n\
    lsls r0, 2\n\
    ldr r1, _080EEA30 @ =_080EEA34\n\
    adds r0, r1\n\
    ldr r0, [r0]\n\
    mov pc, r0\n\
    .align 2, 0\n\
_080EEA28: .4byte gSharedMem\n\
_080EEA2C: .4byte 0x00006e16\n\
_080EEA30: .4byte _080EEA34\n\
    .align 2, 0\n\
_080EEA34:\n\
    .4byte _080EEA58\n\
    .4byte _080EEA98\n\
    .4byte _080EEAAE\n\
    .4byte _080EEAD4\n\
    .4byte _080EEB3E\n\
    .4byte _080EEB68\n\
    .4byte _080EEB88\n\
    .4byte _080EEBAC\n\
    .4byte _080EEBE4\n\
_080EEA58:\n\
    bl sub_80F1F10\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    beq _080EEA64\n\
    b _080EEC08\n\
_080EEA64:\n\
    ldr r1, _080EEA7C @ =gSharedMem\n\
    ldr r4, _080EEA80 @ =0x00006e17\n\
    adds r0, r1, r4\n\
    ldrb r0, [r0]\n\
    cmp r0, 0xC\n\
    beq _080EEA88\n\
    ldr r0, _080EEA84 @ =0x00006e16\n\
    adds r1, r0\n\
    movs r0, 0x1\n\
    strb r0, [r1]\n\
    b _080EEC08\n\
    .align 2, 0\n\
_080EEA7C: .4byte gSharedMem\n\
_080EEA80: .4byte 0x00006e17\n\
_080EEA84: .4byte 0x00006e16\n\
_080EEA88:\n\
    ldr r2, _080EEA94 @ =0x00006e16\n\
    adds r1, r2\n\
    movs r0, 0x3\n\
    strb r0, [r1]\n\
    b _080EEC08\n\
    .align 2, 0\n\
_080EEA94: .4byte 0x00006e16\n\
_080EEA98:\n\
    ldr r4, _080EEAC8 @ =gSharedMem\n\
    ldr r1, _080EEACC @ =0x00006e17\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    bl sub_80F2C80\n\
    ldr r2, _080EEAD0 @ =0x00006e16\n\
    adds r4, r2\n\
    ldrb r0, [r4]\n\
    adds r0, 0x1\n\
    strb r0, [r4]\n\
_080EEAAE:\n\
    ldr r4, _080EEAC8 @ =gSharedMem\n\
    ldr r1, _080EEACC @ =0x00006e17\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    bl sub_80F2CBC\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    beq _080EEAC2\n\
    b _080EEC08\n\
_080EEAC2:\n\
    ldr r2, _080EEAD0 @ =0x00006e16\n\
    adds r1, r4, r2\n\
    b _080EEB76\n\
    .align 2, 0\n\
_080EEAC8: .4byte gSharedMem\n\
_080EEACC: .4byte 0x00006e17\n\
_080EEAD0: .4byte 0x00006e16\n\
_080EEAD4:\n\
    adds r2, r3, 0\n\
    ldr r4, _080EEAF8 @ =0x00006e15\n\
    adds r0, r2, r4\n\
    ldrb r1, [r0]\n\
    subs r4, 0x68\n\
    adds r0, r2, r4\n\
    strb r1, [r0]\n\
    ldr r1, _080EEAFC @ =0x00006e14\n\
    adds r0, r2, r1\n\
    ldrb r0, [r0]\n\
    cmp r0, 0x1\n\
    beq _080EEB14\n\
    cmp r0, 0x1\n\
    bgt _080EEB00\n\
    cmp r0, 0\n\
    beq _080EEB06\n\
    b _080EEB28\n\
    .align 2, 0\n\
_080EEAF8: .4byte 0x00006e15\n\
_080EEAFC: .4byte 0x00006e14\n\
_080EEB00:\n\
    cmp r0, 0x2\n\
    beq _080EEB20\n\
    b _080EEB28\n\
_080EEB06:\n\
    ldr r4, _080EEB10 @ =0x00006dae\n\
    adds r1, r2, r4\n\
    movs r0, 0x5\n\
    b _080EEB26\n\
    .align 2, 0\n\
_080EEB10: .4byte 0x00006dae\n\
_080EEB14:\n\
    ldr r0, _080EEB1C @ =0x00006dae\n\
    adds r1, r2, r0\n\
    movs r0, 0x3\n\
    b _080EEB26\n\
    .align 2, 0\n\
_080EEB1C: .4byte 0x00006dae\n\
_080EEB20:\n\
    ldr r2, _080EEB58 @ =0x00006dae\n\
    adds r1, r3, r2\n\
    movs r0, 0x6\n\
_080EEB26:\n\
    strb r0, [r1]\n\
_080EEB28:\n\
    ldr r4, _080EEB5C @ =gSharedMem\n\
    ldr r1, _080EEB60 @ =0x00006e14\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    bl sub_80F1B8C\n\
    ldr r2, _080EEB64 @ =0x00006e16\n\
    adds r4, r2\n\
    ldrb r0, [r4]\n\
    adds r0, 0x1\n\
    strb r0, [r4]\n\
_080EEB3E:\n\
    ldr r4, _080EEB5C @ =gSharedMem\n\
    ldr r1, _080EEB60 @ =0x00006e14\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    bl sub_80F1BC8\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    bne _080EEC08\n\
    ldr r2, _080EEB64 @ =0x00006e16\n\
    adds r1, r4, r2\n\
    b _080EEB76\n\
    .align 2, 0\n\
_080EEB58: .4byte 0x00006dae\n\
_080EEB5C: .4byte gSharedMem\n\
_080EEB60: .4byte 0x00006e14\n\
_080EEB64: .4byte 0x00006e16\n\
_080EEB68:\n\
    bl sub_8055870\n\
    cmp r0, 0\n\
    bne _080EEC08\n\
    ldr r1, _080EEB80 @ =gSharedMem\n\
    ldr r4, _080EEB84 @ =0x00006e16\n\
    adds r1, r4\n\
_080EEB76:\n\
    ldrb r0, [r1]\n\
    adds r0, 0x1\n\
    strb r0, [r1]\n\
    b _080EEC08\n\
    .align 2, 0\n\
_080EEB80: .4byte gSharedMem\n\
_080EEB84: .4byte 0x00006e16\n\
_080EEB88:\n\
    bl sub_80F1DF0\n\
    ldr r4, _080EEBA0 @ =gSharedMem\n\
    ldr r1, _080EEBA4 @ =0x00006e14\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    bl sub_80EF490\n\
    ldr r2, _080EEBA8 @ =0x00006e16\n\
    adds r4, r2\n\
    b _080EEBCC\n\
    .align 2, 0\n\
_080EEBA0: .4byte gSharedMem\n\
_080EEBA4: .4byte 0x00006e14\n\
_080EEBA8: .4byte 0x00006e16\n\
_080EEBAC:\n\
    bl sub_80F1E50\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    bne _080EEC08\n\
    ldr r4, _080EEBD4 @ =gSharedMem\n\
    ldr r1, _080EEBD8 @ =0x00006e14\n\
    adds r0, r4, r1\n\
    ldrb r0, [r0]\n\
    ldr r2, _080EEBDC @ =0x00006dad\n\
    adds r1, r4, r2\n\
    ldrb r1, [r1]\n\
    bl sub_80EF428\n\
    ldr r0, _080EEBE0 @ =0x00006e16\n\
    adds r4, r0\n\
_080EEBCC:\n\
    ldrb r0, [r4]\n\
    adds r0, 0x1\n\
    strb r0, [r4]\n\
    b _080EEC08\n\
    .align 2, 0\n\
_080EEBD4: .4byte gSharedMem\n\
_080EEBD8: .4byte 0x00006e14\n\
_080EEBDC: .4byte 0x00006dad\n\
_080EEBE0: .4byte 0x00006e16\n\
_080EEBE4:\n\
    bl sub_80EF4F8\n\
    lsls r0, 24\n\
    cmp r0, 0\n\
    bne _080EEC08\n\
    ldr r1, _080EEC00 @ =gSharedMem\n\
    ldr r2, _080EEC04 @ =0x00006e16\n\
    adds r1, r2\n\
    ldrb r0, [r1]\n\
    adds r0, 0x1\n\
    strb r0, [r1]\n\
_080EEBFA:\n\
    movs r0, 0\n\
    b _080EEC0A\n\
    .align 2, 0\n\
_080EEC00: .4byte gSharedMem\n\
_080EEC04: .4byte 0x00006e16\n\
_080EEC08:\n\
    movs r0, 0x1\n\
_080EEC0A:\n\
    pop {r4}\n\
    pop {r1}\n\
    bx r1\n"

    );
}
#endif

// var6dad and var6dae must be s8 in this func
bool8 sub_80EEC10()
{
    if (gMain.newKeys & 0x40)
    {
        do
        {
            if (--gPokenavStructPtr->unk6DAD < 0)
                gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DAE - 1;
        } while (!gPokenavStructPtr->unk6DB2[gPokenavStructPtr->unk6DAD]);
        return TRUE;
    }
    if (gMain.newKeys & 0x80)
    {
        do
        {
            if (++gPokenavStructPtr->unk6DAD >= gPokenavStructPtr->unk6DAE)
                gPokenavStructPtr->unk6DAD = 0;
        } while (!gPokenavStructPtr->unk6DB2[gPokenavStructPtr->unk6DAD]);
        return TRUE;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 6, 10, 2, 4);
#endif
    return FALSE;
}

bool8 sub_80EEC90()
{
    if (gMain.newKeys & 0x40)
    {
        if (--gPokenavStructPtr->unk6DAD < 0)
            gPokenavStructPtr->unk6DAD = gPokenavStructPtr->unk6DAE - 1;
        return TRUE;
    }
    if (gMain.newKeys & 0x80)
    {
        if (++gPokenavStructPtr->unk6DAD >= gPokenavStructPtr->unk6DAE)
            gPokenavStructPtr->unk6DAD = 0;
        return TRUE;
    }
#if DEBUG
	if (gLinkOpen == TRUE)
		debug_sub_8008264(gLink.recvQueue.count, 6, 10, 2, 4);
#endif
    return FALSE;
}

void sub_80EED0C()
{
    REG_DISPCNT = 512;
}

void sub_80EED1C()
{
    REG_DISPCNT = 0x92 << 5;
}

void sub_80EED2C(u8 param1)
{
    switch (param1) {
    case 0:
        REG_DISPCNT = 0xFA << 5;
        break;
    case 1:
        REG_DISPCNT = 0x1741;
        break;
    case 3:
    case 4:
        REG_DISPCNT = 0xFA << 5;
        break;
    case 2:
        REG_DISPCNT = 0x7b40;
        break;
    case 5:
        REG_DISPCNT = 0xFD << 6;
        break;
    }
}

void sub_80EED9C(void)
{
    gUnknown_03000744 = gPokenavStructPtr->unk300;
    gPokenavStructPtr->unk300 = &sub_80EEDC4;
    gPokenavStructPtr->unk300();
}

void sub_80EEDC4(void)
{
    if (sub_8055870() != 0x1)
        gPokenavStructPtr->unk300 = gUnknown_03000744;
}
