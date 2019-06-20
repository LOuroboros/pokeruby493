The following is a list of the files that you have to modify in order to expand the amount of pokémon in Pokémon Ruby and Sapphire.

1) [data\graphics\pokemon\back_pic_coords.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/back_pic_coords.inc)
2) [data\graphics\pokemon\back_pic_table.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/back_pic_table.inc)
3) [data\graphics\pokemon\front_pic_coords.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/front_pic_coords.inc)
4) [data\graphics\pokemon\front_pic_table.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/front_pic_table.inc)
5) [data\graphics\pokemon\palette_table.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/palette_table.inc)
6) [data\graphics\pokemon\shiny_palette_table.inc](https://github.com/LOuroboros/pokeruby493/blob/master/data/graphics/pokemon/shiny_palette_table.inc)
7) [include\constants\species.h](https://github.com/LOuroboros/pokeruby493/blob/master/include/constants/species.h)
8) [include\global.h](https://github.com/LOuroboros/pokeruby493/blob/master/include/global.h)
9) [include\graphics.h](https://github.com/LOuroboros/pokeruby493/blob/master/include/graphics.h)
10) [include\pokedex.h](https://github.com/LOuroboros/pokeruby493/blob/master/include/pokedex.h)
11) [sound\direct_sound_data.inc](https://github.com/LOuroboros/pokeruby493/blob/master/sound/direct_sound_data.inc)
12) [sound\voice_groups.inc](https://github.com/LOuroboros/pokeruby493/blob/master/sound/voice_groups.inc)
13) [src\battle\battle_1.c](https://github.com/LOuroboros/pokeruby493/blob/master/src/battle/battle_1.c)
14) [src\data\pokemon\base_stats.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/base_stats.h)
15) [src\data\pokemon\cry_ids.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/cry_ids.h)
16) [src\data\pokemon\egg_moves.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/egg_moves.h)
17) [src\data\pokemon\evolution.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/evolution.h)
18) [src\data\pokemon\level_up_learnset_pointers.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/level_up_learnset_pointers.h)
19) [src\data\pokemon\level_up_learnsets.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/level_up_learnsets.h)
20) [src\data\pokemon\tmhm_learnsets.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon/tmhm_learnsets.h)
21) [data\text\species_names_en.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/text/species_names_en.h)
22) [src\data\pokedex_entries_en.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokedex_entries_en.h)
23) [src\data\pokedex_orders.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokedex_orders.h)
24) [src\data\pokemon_gfx.h](https://github.com/LOuroboros/pokeruby493/blob/master/src/data/pokemon_gfx.h)
25) [src\pokedex.c](https://github.com/LOuroboros/pokeruby493/blob/master/src/pokedex.c)
26) [src\pokemon_1.c](https://github.com/LOuroboros/pokeruby493/blob/master/src/pokemon_1.c)
27) [src\pokemon_icon.c](https://github.com/LOuroboros/pokeruby493/blob/master/src/pokemon_icon.c)

Additionally, you will have to insert visual and sound assets as you see fit in the following folders:

[graphics\pokemon](https://github.com/LOuroboros/pokeruby493/tree/master/graphics/pokemon)

[sound\direct_sound_samples\cries](https://github.com/LOuroboros/pokeruby493/tree/master/sound/direct_sound_samples/cries)

A couple of extra things to mention:
1) An extra modification will also be needed in [src\hall_of_fame.c](https://github.com/LOuroboros/pokeruby493/blob/master/src/hall_of_fame.c) Line 43, so your newly added pokémon will also show up correctly in the HoF and during the credits of the game.

2) Naturally, some of these files may not be required depending on your needs. Formes don't need a full pokémon's data, for example.