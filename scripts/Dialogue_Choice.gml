if(global.NextI == global.imax && ((!instance_exists(global.choice1) && !instance_exists(global.choice2)) && !instance_exists(NextArrow_obj)))
{

if(i<global.NoOfDialogue)
instance_create(x,y,NextArrow_obj);

else if(i==global.NoOfDialogue)
{
instance_create(x,y,global.choice1);
instance_create(x,y,global.choice2);
}

}

