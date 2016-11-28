inv -= 1;

if image_alpha = 1 && invistimer = -1
{
    invistimer = 4;
    image_alpha = .5;
}
else if invistimer = -1
{
    image_alpha = 1;
    invistimer = 4;
}
invistimer -= 1;

if inv < 1 
{
    image_alpha = 1;
    invincible = 0;
}
