global.lives -= 1;

if global.lives > 0
{
    audio_stop_sound(sound_main);
    room_goto(Death_Screen);
}
else 
{
    global.score = 0;
    audio_stop_sound(sound_main);
    room_goto(Game_Over);
}
