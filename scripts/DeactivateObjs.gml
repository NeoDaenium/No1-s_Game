//deactivates certain objs outside of the camera(lessens lag/memory use)

instance_deactivate_object(Big_tree_obj);
instance_deactivate_object(wall_obj);
instance_deactivate_object(room_go_obj);

instance_activate_region(view_xview[0], view_yview, view_wview[0], view_hview[0], true);
