decl
	integer func(integer a);
	integer a;
enddecl

integer func(integer a){
	integer b;
	print(a);
	b=func(a+1);
	return 0;
}

integer main(){
	
	integer b;
	b=func(1);
	
	return 0;
}
