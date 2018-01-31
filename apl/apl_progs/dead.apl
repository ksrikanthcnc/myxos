integer main(){

	integer pid,temp;	
	print("dead");			
	pid=Fork();
	
	if(pid==-2)then
		temp=Getppid();
		temp=Wait(temp);
	endif;

	temp=Wait(pid);
	print("dead-dead");
	return 0;
}
