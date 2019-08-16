if(i < global.MaxItems)
{

if(global.items[i] == DummySlot_obj)
{

global.items[i] = global.equip[1];

with(global.equip[1])
instance_destroy();

global.equip[1] = DummySlot_obj;
Slot_obj.items_done = 0;
Slot_obj.equip_done = 0;

instance_activate_object(CloseInven_obj);

with(SelectScreen_obj)
instance_destroy();

with(DiscardButton_obj)
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
i+=1;

}




