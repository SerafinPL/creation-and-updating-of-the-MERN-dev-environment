

checkCommand() {
    if hash $1 2>/dev/null; then
	echo
echo $1 "is installed"
return 0
    else
	echo
echo -e  $1 "can be instlled" 
return 1
    fi
}


