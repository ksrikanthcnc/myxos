integer main() {
integer a,b,a1,b1;
integer fd;
integer i;
string out;
a1=Fork();
b1=Fork();
if(a1==-2 && b1==-2)then
	a=Create("4.dat");	
	fd=Open("4.dat");
	i=3;
	while(i<100)do
		a=Write(fd,i);
		i=i+4;
	endwhile;
	print("4 over");
endif;
if(a1==-2 && b1!=-2)then
	a=Create("3.dat");	
	fd=Open("3.dat");
	i=2;
	while(i<100)do
		a=Write(fd,i);
		i=i+4;
	endwhile;
	print("3 over");
endif;
if(a1!=-2 && b1==-2)then
	a=Create("2.dat");	
	fd=Open("2.dat");
	i=1;
	while(i<100)do
		a=Write(fd,i);
		i=i+4;
	endwhile;
	print("2 over");
endif;
if(a1!=-2 && b1!=-2)then
	a=Create("1.dat");	
	fd=Open("1.dat");
	i=0;
	while(i<100)do
		a=Write(fd,i);
		i=i+4;
	endwhile;
	print("1 over");
endif;

return 0;}

