integer main()
{
	integer status,temp;
	string file;
	while(1==1)do
		print("*********************");
		read(file);
		if(file=="exit")then
			Exit();
		endif;
		status=Fork();
		if(status==-2)then
			temp=Exec(file);
			if(temp==-1)then
				print("No-File");
				Exit();
			endif;
		endif;
		if(status==-1)then
			print("32-running");
		endif;
		if(status!=-2)then
			temp=Wait(status);
		endif;
	endwhile;
return 0;
}
