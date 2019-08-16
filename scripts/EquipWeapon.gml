if(instance_exists(EquipButton_obj))
{

var current, new;

current = global.equip[1];

if(i<global.MaxItems)
{

if(((global.ItemX[i] - 5) == SelectArrow_obj.x) && ((global.ItemY[i] - 8) == SelectArrow_obj.y))
{
new = global.items[i];

with(global.items[i])
instance_destroy();

with(global.equip[1])
instance_destroy();

global.equip[1] = new;
global.items[i] = current;
Slot_obj.items_done = 0;
Slot_obj.equip_done = 0;


instance_activate_object(CloseInven_obj);

with(SelectScreen_obj)
instance_destroy();

with(DiscardButton_obj)
instance_destroy();

with(EquipButton_obj)
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

}


