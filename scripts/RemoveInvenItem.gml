if(instance_exists(UseButton_obj) || instance_exists(EquipButton_obj))
{

if(i<global.MaxItems)
{

if(((global.ItemX[i] - 5) == SelectArrow_obj.x) && ((global.ItemY[i] - 8) == SelectArrow_obj.y))
{
with(global.items[i])
instance_destroy();

global.items[i] = DummySlot_obj;
Slot_obj.items_done = 0;

instance_activate_object(CloseInven_obj);

with(SelectScreen_obj)
instance_destroy();

with(DiscardButton_obj)
instance_destroy();

with(EquipButton_obj)
instance_destroy();

with(UnequipButton_obj)
instance_destroy();

with(UseButton_obj)
instance_destroy();

with(SelectArrow_obj)
instance_destroy();

with(global.ItemSelected)
instance_destroy();

global.text = "";
}

else
{
i+=1;
}

}

}
