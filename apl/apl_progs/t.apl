integer main(){
	
	integer pid,temp,d1,status;
	string word;
	
//	temp=Create("test");
	d1=Open("test");
//	temp=1;
//	while(temp<100)do
//		status=Write(d1,temp);
//		temp=temp+1;
//	endwhile;	
//	breakpoint;

	pid=Fork();
	if(pid==-2)then
		temp=Exec("t1.xsm");
	endif;

	pid=Fork();
	if(pid==-2)then
		temp=Exec("t2.xsm");
	endif;
	
	
	temp=100;
	while(temp<200)do
		print("MBEFORE");
		status=Write(d1,temp);
		print("MAFTER");
		temp=temp+1;
	endwhile;	
	
	temp=Close(d1);
	print("CLOSE mwrite");

	temp=0;
	while(temp<10000)do
		temp=temp+1;
	endwhile;
	
	return 0;
}
