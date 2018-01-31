integer main(){

	integer pid,temp;	
print("dead1");			
	pid=Fork();
	
//	print("=====");
//	print("pid");
//	print(pid);
//	print("");
	
//	print("*****************");
//	temp=Getpid();
//	print(temp);
//	print("");
	
	if(pid==-2)then
		temp=Exec("dead2.xsm");
	endif;
print("1-wait");
print("for");
print(pid);

	temp=Wait(pid);
	print("dead1-dead");
	return 0;
}
