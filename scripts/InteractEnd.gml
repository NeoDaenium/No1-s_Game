
if(instance_exists(global.TextCreate))//TextCreate
{
global.text[0] = "";
global.InteractObj.press=0;//InteractObj
global.NextI=0;

with(DialogueBox_obj)
instance_destroy();

with(global.TextCreate)
instance_destroy();

script_execute(CreateGUI);

instance_destroy();
}
