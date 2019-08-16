//for pushing certain objs
if(dpad_left_obj.press == 1)
{
x-=3;
}

else if(dpad_right_obj.press == 1)
{
x+=3;
}

else if(dpad_up_obj.press == 1)
{
y-=3;
}

else if(dpad_down_obj.press == 1)
{
y+=3;
}

//for char
with(char_obj)
{
if(dpad_left_obj.press == 1)
{
x+=2;
}

else if(dpad_right_obj.press == 1)
{
x-=2;
}

else if(dpad_up_obj.press == 1)
{
y+=2;
}

else if(dpad_down_obj.press == 1)
{
y-=2;
}
}
