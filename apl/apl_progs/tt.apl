integer main(){
	
	integer temp,status,d1;
	
	temp=Delete("test");
	temp=Create("test");
	
	d1=Open("test");
	temp=1;
	while(temp<101)do
		status=Write(d1,temp);
		temp=temp+1;
	endwhile;
	
	temp=Close(d1);
	
	return 0;
}
