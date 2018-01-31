integer main(){
	
	integer temp,d1,status;
	
	
	temp=0;
	while(temp<100)do
		temp=temp+1;
	endwhile;
	d1=Open("a");
	temp=0;
	status=Write(d1,"end1");

	if(status==0)then
		print("written1");
//		breakpoint;
	endif;

	d1=Close(d1);
	return 0;
}
