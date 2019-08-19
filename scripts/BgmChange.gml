//changes BGM when player changes area

if(!instance_exists(Awakening))
{
if(!instance_exists(obj_transition_start))
bgm_obj.bgm_forest = Dawn_of_Forests;
//forest bgm
if(room == forest_start || room == forest_exit || room == forest_area4)
{
audio_stop_sound(bgm_town);
audio_stop_sound(No1_title_screen);

if(audio_is_playing(bgm_forest))
{
//do nothing
}
else
{
global.music = audio_play_sound(bgm_forest,5,true);
}

}

//town bgm
else if(room == town_start || room == town_fountain)
{
audio_stop_sound(bgm_forest);
audio_stop_sound(bgm_sewers);
audio_stop_sound(No1_title_screen);

if(audio_is_playing(bgm_town))
{
//do nothing
}
else
{
global.music = audio_play_sound(bgm_town,5,true);
}

}

//sewers bgm
else if(room == sewer_entrance || room == sewer_exit || room == sewer_main)
{
audio_stop_sound(bgm_town);
audio_stop_sound(bgm_castle);
audio_stop_sound(No1_title_screen);

if(audio_is_playing(bgm_sewers))
{
//do nothing
}
else
{
global.music = audio_play_sound(bgm_sewers,5,true);
}

}

//castle bgm
else if(room == Castle_entrance)
{
audio_stop_sound(bgm_sewers);
audio_stop_sound(No1_title_screen);

if(audio_is_playing(bgm_castle))
{
//do nothing
}
else
{
global.music = audio_play_sound(bgm_castle,5,true);
}

}

else if(room == title_screen)
{
if audio_is_playing(bgm_castle)
audio_stop_sound(bgm_castle);
if audio_is_playing(bgm_forest)
audio_stop_sound(bgm_forest);
if audio_is_playing(bgm_sewers)
audio_stop_sound(bgm_sewers);
if audio_is_playing(bgm_town)
audio_stop_sound(bgm_town);

if(audio_is_playing(No1_title_screen))
{
//do nothing
}
else
{
global.music = audio_play_sound(No1_title_screen,5,true);
}

}

}
