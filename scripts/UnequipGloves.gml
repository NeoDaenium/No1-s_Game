
if(i < global.MaxItems)
{

if(global.items[i] == DummySlot_obj)
{

global.items[i] = global.equip[5];
with(global.equip[5])
instance_destroy();

global.equip[5] = DummySlot_obj;
Slot_obj.items_done = 0;
Slot_obj.equip_done = 0;

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
