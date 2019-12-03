#! /bin/bash
# cars.sh
# Annika Hettmann
while true
do
	echo -n "I present to you a menu of things you can do: Press '1' to enter a new car, press '2' to display the list of cars, and press '3' to exit."; read menu
	case $menu in
		"1") 
			echo "What year is it?"; read -r year
			echo "What make is it?"; read -r make
			echo "What model is it?"; read -r model
			echo "$year:$make:$model" >> My_old_cars;;
		"2") 
			:r My_old_cars
			sort -n My_old_cars;;	
		"3") echo "Goodbye"
			break;;
		*) echo "That's not a valid response";;
	esac
done

