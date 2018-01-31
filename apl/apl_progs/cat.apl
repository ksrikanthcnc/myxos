integer main()
{
	integer statusold,statusnew,oldseek,newseek,setseek,temp,index;
	string old,new,word;

	temp=Seek(index,setseek);
	
	print("index:");
	read(index);
	setseek=Read(index,word);
	setseek=setseek-1;
	temp=Seek(index,0);
	oldseek = Read(index,word);
	while(1==1)do
		if(word!="")then
			print(word);
		endif;
		newseek = Read(index,word);
		if(oldseek==newseek)then
			break;
		endif;
		oldseek=newseek;		
	endwhile;	
	temp=Seek(index,setseek);

return 0;
}
