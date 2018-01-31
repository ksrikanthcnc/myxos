integer main(){
	
	integer pid,temp,d1,d2,d3;
	string str;
	
	temp=Create("a");
	temp=Create("b");
	temp=Create("c");
	
	pid=Fork();
	d1=Open("a");

	if(pid==-2)then
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		temp=Write(d1,"child-a");
		Exit();
	else	
		temp=Wait(pid);
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
		temp=Write(d1,"parent-a");
	endif;
	
		temp=Seek(d1,0);
		d3=0;
		while(d3<=19)do
			temp=Read(d1,str);
			print(str);
			d3=d3+1;
		endwhile;	
		temp=Seek(1,0);
		d3=0;
		while(d3<=19)do
			temp=Read(1,str);
			print(str);
			d3=d3+1;
		endwhile;	
		
	return 0;
}
