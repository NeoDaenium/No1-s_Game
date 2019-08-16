if(instance_exists(UnequipButton_obj))
{

if(i<global.EquipItem)
{

if(((global.EquipItemX[i] - 5) == SelectArrow_obj.x) && ((global.EquipItemY[i] - 8) == SelectArrow_obj.y))
{
with(global.equip[i])
instance_destroy();

global.equip[i] = DummySlot_obj;
Slot_obj.equip_done = 0;

instance_activate_object(CloseInven_obj);

with(SelectScreen_obj)
instance_destroy();

with(DiscardButton_obj)
instance_destroy();

with(EquipButton_obj)
instance_destroy();

with(UnequipButton_obj)
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
