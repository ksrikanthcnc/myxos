integer main()
{
	integer status,one,two,three,zero,zerotwo,onethree,file,all,index;
	string word,a,b,c,d,ac,bd;
	zerotwo=Open("02.dat");
	onethree=Open("13.dat");
	
	status=Create("0123.dat");
	print("0123-create");

	all=Open("0123.dat");
	
	status=Read(zerotwo,ac);
	status=Read(onethree,bd);
	
	while(ac!="101"&&bd!="101")do
		if(ac=="")then
			ac="101";
		endif;
		if(bd=="")then
			bd="101";
		endif;
		if(ac<bd)then
			status=Write(all,ac);
			status=Read(zerotwo,ac);
		endif;
		if(ac>bd)then
			status=Write(all,bd);
			status=Read(onethree,bd);
		endif;
	endwhile;
	print("0123-wrote");
	status=Close(zerotwo);
	status=Close(onethree);
	status=Close(all);

	status=Delete("02.dat");
	status=Delete("13.dat");
	print("02,13-del");	
print("init2-end");
print("");
return 0;
}
