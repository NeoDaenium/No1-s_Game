
instance_create(x,y,DialogueBox_obj);

with(DialogueBox_obj)
sprite_index = global.char_box;

instance_create(x,y,global.TextCreate);
press=1;

script_execute(DestroyGUI);

with(arrow_obj)
{
instance_destroy();
}

