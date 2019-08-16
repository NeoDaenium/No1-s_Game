with(SelectArrow_obj)
instance_destroy();

with(global.ItemSelected)
instance_destroy();

global.NextI = 0;

instance_create(x - 5, y - 8, SelectArrow_obj);


