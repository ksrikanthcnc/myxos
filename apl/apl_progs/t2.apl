integer main(){
	
	integer pid,temp,d1;
	string word;
	d1=Open("test");
	
	temp=Seek(d1,0);
	temp=Read(d1,word);
	print(word);
	while(word!="")do	
		temp=Read(d1,word);
		print(word);
	endwhile;

	temp=0;
	while(temp<1000)do
		temp=temp+1;
	endwhile;
	temp=Close(d1);
	print("CLOSE rea");
	temp=0;
	while(temp<1000)do
		temp=temp+1;
	endwhile;

			
	return 0;
}
