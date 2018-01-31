integer main(){
	integer status,i,even,odd,ans;
	status=Create("even");
	status=Create("odd");
	status=Create("merge");
	status=Open("even");
	status=Open("odd");
	status=Open("merge");

	i=1;
	while(i<=40)do
		if(i%2==1)then
			status=Write(1,i);
		endif;
		i=i+1;
	endwhile;
	
	i=20;
	while(i<=60)do
		if(i%2==0)then
			status=Write(0,i);
		endif;
		i=i+1;
	endwhile;
	
	status=Write(0,100);
	status=Write(1,100);
	status=Seek(0,0);
	status=Seek(1,0);
	status=Read(0,even);
	status=Read(1,odd);
	while(1==1)do
		if(even==100&&odd==100)then
			break;
		endif;
		if(even<odd&&even!=100)then
			status=Write(2,even);
			status=Read(0,even);
			continue;
		endif;
		if(even>odd&&odd!=100)then
			status=Write(2,odd);
			status=Read(1,odd);
			continue;
		endif;
	endwhile;

	status=Close(0);
	status=Close(1);
	status=Delete("even");
	status=Delete("odd");
	status=Write(2,100);
	status=Seek(2,0);
	status=Read(2,ans);

	while(ans!=100)do
		print(ans);
		status=Read(2,ans);
	endwhile;

return 0;
}
