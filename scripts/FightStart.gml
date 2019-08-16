with(FightButton_obj)
instance_destroy();

with(ItemButton_obj)
instance_destroy();

with(ActButton_obj)
instance_destroy();

with(PhoneButton_obj)
instance_destroy();

instance_create(x,y,timer_obj);
instance_create(128,480,DpadFight_up);
instance_create(64,544,DpadFight_left);
instance_create(192,544,DpadFight_right);
instance_create(128,608,DpadFight_down);

instance_create(1024,576,fight_A_obj);
instance_create(1152,512,fight_B_obj);
