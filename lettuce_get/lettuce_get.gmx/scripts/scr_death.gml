global.lives -= 1;

if global.lives > 0
{
    audio_stop_sound(sound_main);
    room_goto(Death_Screen);
    global.room_of_death = room;
}
else 
{
    global.score = 0;
    audio_stop_sound(sound_main);
    room_goto(Game_Over);
}
