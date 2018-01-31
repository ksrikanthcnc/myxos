integer main(){
	
	integer pid,temp,d1,status;
	
	d1=Open("test");
	
	temp=200;
	while(temp<300)do
		print("1BEFORE");
		status=Write(d1,temp);
		print("1AFTER");
		temp=temp+1;
	endwhile;	
	
	temp=Close(d1);
	print("CLOSE 1write");

	temp=0;
	while(temp<1000)do
		temp=temp+1;
	endwhile;

	
	return 0;
}
