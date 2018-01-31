integer main(){
		
	integer pid,temp;	
print("dead2");
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
		temp=Exec("dead3.xsm");
	endif;
print("2-wait");
print("for");
print(pid);
	temp=Wait(pid);
	print("dead2-dead");
	return 0;
}
