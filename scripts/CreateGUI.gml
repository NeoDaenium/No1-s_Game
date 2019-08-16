/*
with(dpad_down_obj)
{
press=0;
visible = true;
}

with(dpad_left_obj)
{
press=0;
visible = true;
}

with(dpad_right_obj)
{
press=0;
visible = true;
}

with(dpad_up_obj)
{
press=0;
visible = true;
}
*/
instance_create(x,y,dpad_up_obj);
instance_create(x,y,dpad_down_obj);
instance_create(x,y,dpad_left_obj);
instance_create(x,y,dpad_right_obj);

instance_create(x,y,inven_button_obj);
instance_create(x,y,Settings_button_obj);
map_button_obj.active=1;
map_button_obj.visible = true;

if(map_button_obj.image_index == 1)
view_visible[1] = true;

else
view_visible[1] = false;


