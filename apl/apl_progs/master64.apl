decl
	integer pid,i,s;
enddecl
integer main()
{
	print ("Before Fork");

	i=0;
	while(i<60) do
		pid = Fork();
		if(pid == -2) then
			s=Exec("ex10.xsm");
		endif;
		if(pid==-1)then
			print("pid=-1");
			breakpoint;
			break;
		endif;		
		i=i+1;
	endwhile;
//	s=Wait(i+1);
	breakpoint;
	return 0;
}
