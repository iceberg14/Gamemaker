if (powerup != "grease") obj_player.x_accel = (1/6);
switch (powerup)
{
    case "grease":   scr_power_grease();   break;
    case "volcanic": scr_power_volcanic(); break;
    case "glow":     scr_power_glow();     break;
    case "none":     scr_power_none();     break;
}
