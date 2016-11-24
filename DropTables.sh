#!/bin/bash

selection=
until [ "$selection" = "B" ]; do

	echo ""
	echo "======================================================================"	
	echo "|                             Drop Tables                            |"
	echo "|                     CPS510 Section #4, Group #9                    |"
	echo "|                 Kenny Nguyen, Emmanuel Joshua Sinlao               |"
	echo "----------------------------------------------------------------------"
	echo ""	
	echo "A ) Automatically Drop ALL Tables"
	echo "1 ) Manually enter a table to drop"
	echo ""
	echo "2 ) Drop Penalizes Table"
	echo "3 ) Drop Manages Table"
    echo "4 ) Drop Plays_For Table"
    echo "5 ) Drop Plays_In Table"
    echo "6 ) Drop Awards Table"
    echo "7 ) Drop Player Table"
    echo "8 ) Drop Roster Table"
    echo "9 ) Drop Coach Table"
    echo "10 ) Drop Referee Table"
    echo "11 ) Drop Match Table"
    echo "12 ) Drop Season Table"
    echo "13 ) Drop Team Table"
    echo ""
    echo "B ) Back"
    echo ""
    echo -n "Please select an option: "
    read selection
    echo ""
    case $selection in

    A ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Penalizes;
		DROP TABLE Manages;
		DROP TABLE Plays_For;
		DROP TABLE Plays_In;
		DROP TABLE Awards;
		DROP TABLE Player;
		DROP TABLE Roster;
		DROP TABLE Coach;
		DROP TABLE Referee;
		DROP TABLE Match;
		DROP TABLE Season;
		DROP TABLE Team;
exit;
EOF
                                                ;;  
    1 ) echo -n "Please enter a valid table: "
		read table
		clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE $table;
exit;
EOF
                                                ;;
    
      
    2 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Penalizes;
exit;
EOF
                                                ;; 
    
    3 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Manages;
exit;
EOF
                                                ;; 
    
    4 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Plays_For;
exit;
EOF
                                                ;; 

    5 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Plays_In;
exit;
EOF
                                                ;; 

    6 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Awards;
exit;
EOF
                                                ;;      

    7 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Player;
exit;
EOF
                                                ;; 
    
    8 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Roster;
exit;
EOF
                                                ;; 

    9 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Coach;
exit;
EOF
                                                ;; 

    10 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Referee;
exit;
EOF
                                                ;; 

    11 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Match;
exit;
EOF
                                                ;; 

    12 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Season;
exit;
EOF
                                                ;; 

    13 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		DROP TABLE Team;
exit;
EOF
                                                ;; 

    B ) clear
        sh MainMenu.sh
        ;;

	* ) clear
		echo "Invalid option. Please try again."
		;;

	esac
done
