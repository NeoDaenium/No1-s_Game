var current, new;

current = global.equip[4];

if(i<global.MaxItems)
{

if(((global.ItemX[i] - 5) == SelectArrow_obj.x) && ((global.ItemY[i] - 8) == SelectArrow_obj.y))
{
new = global.items[i];

with(global.items[i])
instance_destroy();

with(global.equip[4])
instance_destroy();

global.equip[4] = new;
global.items[i] = current;
Slot_obj.items_done = 0;
Slot_obj.equip_done = 0;

instance_activate_object(CloseInven_obj);

with(SelectScreen_obj)
instance_destroy();

with(CancelButton_obj)
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


