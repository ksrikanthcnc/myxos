integer main(){
	
	integer pid,temp,d1;
	
	temp=Create("a");
	d1=Open("a");
	temp=Write(d1,"staart");
	temp=Close(d1);

	pid=Fork();
	
	if(pid==-2)then
		temp=Exec("end1.xsm");
	endif;

	pid=Fork();
	
	if(pid==-2)then
		temp=Exec("end2.xsm");
	endif;

	d1=Open("a");	
		
	temp=0;
	while(temp<500)do
//		print(temp);
		temp=temp+1;
	endwhile;

	temp=Close(d1);

	return 0;
}
