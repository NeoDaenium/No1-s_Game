if(!instance_exists(DialogueBox_obj))
{

if(place_meeting(x,y-5,char_obj))
{
if(!instance_exists(arrow_obj))
instance_create(x,y-64,arrow_obj);
}

else if(place_meeting(x,y+5,char_obj))
{
if(!instance_exists(arrow_obj))
instance_create(x,y-64,arrow_obj);
}

else if(place_meeting(x+5,y,char_obj))
{
if(!instance_exists(arrow_obj))
instance_create(x,y-64,arrow_obj);
}

else if(place_meeting(x-5,y,char_obj))
{
if(!instance_exists(arrow_obj))
instance_create(x,y-64,arrow_obj);
}

else
{
with(arrow_obj)
{
instance_destroy();
}
interact=0;
}

}




