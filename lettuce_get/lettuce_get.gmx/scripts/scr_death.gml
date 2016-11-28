global.lives -= 1;
audio_stop_all();

if global.lives > 0
{
    room_goto(Death_Screen);
    global.room_of_death = room;
}
else 
{
    global.score = 0;
    room_goto(Game_Over);
}
