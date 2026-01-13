y+=spd;
image_angle+=spd/2;

if(y>room_height+64){
	instance_destroy();
}