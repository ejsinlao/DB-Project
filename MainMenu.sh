#!/bin/bash

function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

select=

until [ "$selection" = "0" ] do
        echo "==========================================================================="
        echo "|                       Soccer League Database                            |"
        echo "|                     CPS510 Section #4 Group #9                          |"
        echo "|                 Kenny Nguyen, Emmanuel Joshua Sinlao                    |"
        echo "---------------------------------------------------------------------------"
        echo " "
        echo " 1) Drop Tables"
        echo " 2) Create Tables"
        echo " 3) Populate Tables"
        echo " 4) Query Tables"
        echo " "
        echo " 0) Exit"
        echo " "
        echo -n "Enter selection: "
        read selection
        echo " "