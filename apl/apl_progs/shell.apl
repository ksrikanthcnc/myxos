integer main()
{
	integer status,temp;
	string file;
	while(1==1)do
		print("---SH---");
		read(file);
		if(file=="help"||file=="ls")then
			file="ls.xsm";
		endif;
		if(file=="exit"||file=="halt"||file=="stop")then
			Exit();
		endif;
		if(file=="breakpoint"||file=="b")then
			breakpoint;
		endif;
		status=Fork();
		if(status==-2)then
			temp=Exec(file);
			if(temp==-1)then
				if(file!="ls"&&file!="help")then
					print("no-file");
				endif;
				temp=Exec("ls.xsm");
				Exit();
			endif;
		endif;
	endwhile;
return 0;
}
