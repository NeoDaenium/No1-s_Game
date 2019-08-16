//to keep objs from being stuck to the wall

if(dpad_left_obj.press == 1)
{
char_obj.x+=6;
x+=3;
}

else if(dpad_right_obj.press == 1)
{
char_obj.x-=6;
x-=3;
}

else if(dpad_up_obj.press == 1)
{
char_obj.y+=6;
y+=3;
}

else if(dpad_down_obj.press == 1)
{
char_obj.y-=6;
y-=3;
}

