// Changes States based on collisions
var i = 0;

//Check jump held
if enemy = 0 && y_vel < 0 && (!jump_held) && alarm[4] == -1 y_vel = max(y_vel,-2);

// Ground State
switch i
{
    case 0:
        if place_meeting(x+sign(x_vel)*ceil(abs(x_vel)),y,obj_ground) || place_meeting(x,y+round(y_vel),obj_ground) || place_meeting(x+sign(x_vel)*ceil(abs(x_vel)),y+round(y_vel),obj_ground)
        {
            ground = "ground";
            scr_ground();
            break;
        }
// Oneway Platform State
    case 1:
        if y_vel > 0 && place_meeting(x,y + round(y_vel),obj_platform_oneway)
        {
            var platform = instance_place(x,y + round(y_vel),obj_platform_oneway)
            if (y + sprite_height/2) <= platform.y 
            {
                ground = "platform_oneway";
                scr_platform_oneway();
                break;
            }
        }
// Oneway Platform Horizontal State
    case 2:
        if y_vel > 0 && place_meeting(x,y + round(y_vel),obj_platform_oneway_moveh) 
        {
            var platform = instance_place(x,y + round(y_vel),obj_platform_oneway_moveh)
            if (y + sprite_height/2) <= platform.y 
            {
                ground = "platform_oneway_moveh";
                scr_platform_oneway_moveh();
                break;
            }
        }
// Oneway Platform Vertical State
    case 3:
        if y_vel > 0 && place_meeting(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_movev) 
        {
            var platform = instance_place(x,y + round(y_vel) + sprite_height/2,obj_platform_oneway_movev)
            if (y - sprite_get_yoffset(self) + sprite_height) <= platform.y
            {
                ground = "platform_oneway_movev";
                scr_platform_oneway_movev();
                break;
            }
        }
// Moves
    default:
        y += round(y_vel);
        x += sign(x_vel)*ceil(abs(x_vel));
}
    


