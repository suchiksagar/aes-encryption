echo "Welcome to encryption-decryption program"
echo "Please pick one of the following choices of encryption-decryption languages:"
echo "1 ==> Java-Ruby"
echo "2 ==> Java-Python"
echo "3 ==> Ruby-Python"
echo "4 ==> Ruby-Java"
echo "5 ==> Python-Java"
echo "6 ==> Python-Ruby"
read  -p "Input Selection:" mainmenuinput
echo "thanks for your input: "$mainmenuinput
if [ $mainmenuinput == "1" ]
then
	echo "Java-Ruby"
	export CRY_MSG=$(java -cp /home/javadir AESSample e)
	echo "Encrypted msg via Java: "$CRY_MSG
	echo "Decrypted message from Ruby: "$(ruby ruby/sample.rb d)
elif [ $mainmenuinput == "2" ]
then
	echo "Java-Python"
	export CRY_MSG=$(java -cp /home/javadir AESSample e)
	echo "Encrypted msg via Java: "$CRY_MSG
	echo "Decrypted message from Python: "$(python python/aes-sample.py d)
elif [ $mainmenuinput == "3" ]
then
	echo "Ruby-Python"
	export CRY_MSG=$(ruby ruby/sample.rb e)
	echo "Encrypted msg via Ruby: "$CRY_MSG
	echo "Decrypted message from Python: "$(python python/aes-sample.py d)
elif [ $mainmenuinput == "4" ]
then
	echo "Ruby-Java"
	export CRY_MSG=$(ruby ruby/sample.rb e)
	echo "Encrypted msg via Ruby: "$CRY_MSG
	echo "Decrypted message from java: "$(java -cp /home/javadir AESSample d)
elif [ $mainmenuinput == "5" ]
then
	echo "Python-Java"
	export CRY_MSG=$(python python/aes-sample.py e)
	echo "Encrypted msg via Python: "$CRY_MSG
	echo "Decrypted message from Java: "$(java -cp /home/javadir AESSample d)
elif [ $mainmenuinput == "6" ]
then
	echo "Python-Ruby"
	export CRY_MSG=$(python python/aes-sample.py e)
	echo "Encrypted msg via Python: "$CRY_MSG
	echo "Decrypted message from Ruby: "$(ruby ruby/sample.rb d)
else 
	echo "Bye!!"
fi




	