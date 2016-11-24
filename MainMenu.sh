#!/bin/bash

selection=
until [ "$selection" = "1" ] || [ "$selection" = "2" ] || [ "$selection" = "3" ] || [ "$selection" = "4" ] || [ "$selection" = "E" ]; do

	echo ""
	echo "======================================================================"	
	echo "|                       Soccer League Database                       |"
	echo "|                     CPS510 Section #4, Group #9                    |"
	echo "|                 Kenny Nguyen, Emmanuel Joshua Sinlao               |"
	echo "----------------------------------------------------------------------"
	echo ""	
	echo "1 ) Drop Tables"
	echo "2 ) Create Tables"
	echo "3 ) Populate Tables"
	echo "4 ) Query Tables"
	echo "5 ) View Tables"
    echo ""
    echo "E ) Exit"
    echo ""
    echo -n "Please select an option: "
    read selection
    echo ""

    case $selection in

    1 ) clear
		sh DropTables.sh
		;;

	2)	clear
		sh CreateTables.sh
		;;

	3)	clear
		sh PopulateTables.sh
		;;

	4)	clear
		sh QueryTables.sh
		;;
	5) 	clear
		sh ViewTables.sh
		;;
    E ) clear 
		echo "Exiting..."
		echo ""
		exit 
		;;

	* ) clear
		echo "Invalid option. Please try again."
		;;

	esac
done
