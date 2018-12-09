#
cars.sh
Ben Bartol

echo "Hello"
RESPONSE=0

while [ $RESPONSE -ne 3 ];
do
	echo "1) Add a car"
	echo "2) List your cars"
	echo "3) Quit"
	read RESPONSE
	echo $RESPONSE
	case "$RESPONSE" in
		1) echo "Addding car"
		echo "Year:"
		read YEAR
		echo "Make:"
		read MAKE
		echo "Model:"
		read MODEL
		STR=$YEAR":"$MAKE":"$MODEL
		echo $STR >> My_old_cars.txt
		echo "Car added";;
		2) echo "List of cars"
		cat My_old_cars.txt | sort My_old_cars.txt | sed 's/:/ /g' My_old_cars.txt;;
		3) echo "Goodbye";;
		*) echo "Please choose a valid option";;
	esac
done
