with(DpadFight_down)
instance_destroy();

with(DpadFight_up)
instance_destroy();

with(DpadFight_left)
instance_destroy();

with(DpadFight_right)
instance_destroy();

with(CharFight_obj)
{
if(global.wiz_char==1)
{
sprite_index = WizIdle_Right;

}


else if(global.war_char==1)
{
sprite_index = WarIdle_Right;

}

else if(global.alch_char==1)
{
sprite_index = AlchIdle_Right;

}

else if(global.arch_char==1)
{
sprite_index = ArcherIdle_Right;

}
}

instance_create(global.FightX,global.FightY,FightButton_obj);
instance_create(global.ItemX,global.ItemY,ItemButton_obj);
instance_create(global.ActX,global.ActY,ActButton_obj);
instance_create(global.PhoneX,global.PhoneY,PhoneButton_obj);

CharFight_obj.called = 0;
