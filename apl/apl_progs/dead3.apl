integer main(){
		
	integer pid,temp;	
print("dead3");
	pid=Fork();

//	print("=====");
//	print("pid");
//	print(pid);
//	print("");
	
//	print("=====");
//	temp=Getpid();
//	print(temp);
//	print("");
	
	if(pid==-2)then
		temp=Exec("dead4.xsm");
	endif;
print("3-wait");
print("for");
print(pid);
	temp=Wait(pid);
	print("dead3-dead");
	return 0;
}
