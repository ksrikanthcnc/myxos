integer main(){
	string original,tem,word;
	integer temp,desc,oldseek,newseek;
	
	print("full?");
	print("compact?");
	read(tem);
	
	print("name:");
	read(original);
	desc=Open(original);
	if(desc==-1)then
		print("no-file");
		temp=Open("");
		Exit();
	endif;
	
	temp=Create("copy");
	if(temp==-1)then
		print("no-space");
		Exit();
	endif;
	
	temp=Open("copy");
	
	oldseek = Read(0,word);
	while(1==1)do
		if(tem=="compact")then
			if(word!="")then
				temp=Write(1,word);
			endif;
		else
			temp=Write(1,word);
		endif;
		newseek = Read(0,word);
		if(oldseek==newseek)then
			break;
		endif;
		oldseek=newseek;		
	endwhile;	
	
	return 0;
}
