#ifndef GUARD_CUTE_SKETCH_H
#define GUARD_CUTE_SKETCH_H

struct Unk03005E20
{
    u8 var_0;
    u8 pad1[3];
    u16 (*var_4)[][32];
    u16 *var_8;
    u8 pad0C[4];
    u16 (*var_10)[][32];
    u16 var_14;
    u16 var_16;
    u8 var_18;
    u8 var_19;
    u8 var_1A;
    u8 var_1B;
    u8 var_1C;
    u8 var_1D;
    u8 var_1E;
    u8 var_1F;
};

void sub_80FC7A0(struct Unk03005E20 *);
void sub_80FD8CC(struct Unk03005E20 *);
void sub_80FDA18(struct Unk03005E20 *);

#endif // GUARD_CUTE_SKETCH_H
