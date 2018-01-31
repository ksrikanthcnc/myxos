integer main(){
	
	integer status;
	string word;
	status=Craete("timer");
	status=Open("timer");
	print("set?");
	print("unset?");
	read(word);
	status=Write(0,word);
	status=Close("timer");
	status=Delete("timer");
	return 0;
}
