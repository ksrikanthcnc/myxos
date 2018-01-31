integer main(){

	integer statusold,statusnew,oldseek,newseek,setseek,temp,index;
	string old,new,word;

	print("index:");
	read(index);
	setseek=Read(index,word);
	setseek=setseek-1;
	temp=Seek(index,0);
	oldseek = Read(index,word);
	while(1==1)do
		print(word);
		newseek = Read(index,word);
		if(oldseek==newseek)then
			break;
		endif;
		oldseek=newseek;		
	endwhile;	
	temp=Seek(index,setseek);
	return 0;
}
