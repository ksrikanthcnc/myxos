integer main()
{
	integer status,temp;
	string file;
	while(1==1)do
		print("*********************");
		read(file);
		if(file=="b")then
			breakpoint;
			continue;
		endif;
		if(file=="breakpoint")then
			breakpoint;
			continue;
		endif;
		if(file=="ls")then
			file="ls.xsm";
		endif;
		if(file=="help")then
			file="ls.xsm";
		endif;
		if(file=="stop")then
			Exit();
		endif;
		if(file=="halt")then
			Exit();
		endif;
		if(file=="exit")then
			Exit();
		endif;
		if(file=="fat")then
			temp=Open("fat");
			continue;
		endif;
		status=Fork();
		if(status==-2)then
			temp=Exec(file);
			if(temp==-1)then
				if(file!="help"||file!="ls")then
					print("no-file");
				endif;
				temp=Exec("ls.xsm");
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
