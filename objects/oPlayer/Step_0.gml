key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;


if(move != 0){ //if you are pressing a key
	hsp = move * walksp; //setting direction
	if(move < 0){
		hsp -= walk;
	} 
}

vsp = vsp + grv;
fric = 4;

if (move = 0){
	while(hsp != 0){
		if (hsp < 0){
			hsp = hsp + fric;	
		} else {
			hsp = hsp - fric;
		}
	}
}

// Jump Function
if (place_meeting(x,y+1,oFloor)) && (key_jump)
{
	vsp = -7;
}


// X Axis Collision
if (place_meeting(x+hsp,y,oFloor))
{
	while (!place_meeting(x+sign(hsp),y,oFloor))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Y Axis Collision
if (place_meeting(x,y+vsp,oFloor))
{
	while(!place_meeting(x,y+sign(vsp),oFloor))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;