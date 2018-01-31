integer main()
{
	integer pid,q;
	print ("Before Fork");
	q=1;
	while(q<100)do
		pid = Fork();
		q=q+1;
	endwhile;
	q=Getpid();
	print (q);
	return 0;
}
