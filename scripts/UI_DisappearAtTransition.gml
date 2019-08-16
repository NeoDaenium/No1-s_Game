//WIP
if(instance_exists(obj_transition))
{
with(dpad_down_obj)
instance_destroy();

with(dpad_left_obj)
instance_destroy();

with(dpad_right_obj)
instance_destroy();

with(dpad_up_obj)
instance_destroy();

with(inven_button_obj)
instance_destroy();

}

else if(!instance_exists(obj_transition))
{

if(!instance_exists(dpad_down_obj))
instance_create(x,y,dpad_down_obj);

if(!instance_exists(dpad_up_obj))
instance_create(x,y,dpad_up_obj);

if(!instance_exists(dpad_right_obj))
instance_create(x,y,dpad_right_obj);

if(!instance_exists(dpad_left_obj))
instance_create(x,y,dpad_left_obj);

if(!instance_exists(inven_button_obj))
instance_create(x,y,inven_button_obj);

}
