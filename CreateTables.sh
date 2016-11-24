
#!/bin/bash

selection=
until [ "$selection" = "B" ]; do

	echo ""
	echo "======================================================================"	
	echo "|                           Create Tables                            |"
	echo "|                     CPS510 Section #4, Group #9                    |"
	echo "|                 Kenny Nguyen, Emmanuel Joshua Sinlao               |"
	echo "----------------------------------------------------------------------"
	echo ""	
	echo "A ) Automatically Create ALL Tables"
	echo ""
	echo "1 ) Create Team Table"
	echo "2 ) Create Season Table"
	echo "3 ) Create Match Table"
    echo "4 ) Create Referee Table"
    echo "5 ) Create Coach Table"
    echo "6 ) Create Roster Table"
    echo "7 ) Create Player Table"
    echo "8 ) Create Awards Table"
    echo "9 ) Create Plays_In Table"
    echo "10 ) Create Plays_For Table"
    echo "11 ) Create Manages Table"
    echo "12 ) Create Penalizes Table"
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
		CREATE TABLE Team (
		Team_ID NUMBER CHECK (Team_ID BETWEEN 1 AND 9999),
		Team_Name VARCHAR (10) NOT NULL,
		Nationality VARCHAR(10) NOT NULL,
		Wins NUMBER DEFAULT 0,
		Losses NUMBER DEFAULT 0,
		Draws NUMBER DEFAULT 0,
		Points NUMBER DEFAULT 0,
		PRIMARY KEY (Team_ID));
		
		CREATE TABLE Season (
		Season_Date VARCHAR2(15),
		Winner VARCHAR2(15),
		PRIMARY KEY (Season_Date));
		
		CREATE TABLE Match (
		Match_ID NUMBER CHECK (Match_ID BETWEEN 1 AND 9999),
		Start_Date VARCHAR2(10) NOT NULL,
		Time_Taken NUMBER NOT NULL,
		Venue VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Match_ID));
		
		CREATE TABLE Referee (
		Referee_License_Number NUMBER CHECK (Referee_License_Number BETWEEN 1 AND 9999),
		Referee_Name VARCHAR2 (10) NOT NULL,
		PRIMARY KEY (Referee_License_Number));
		
		CREATE TABLE Coach (
		Coach_License_Number NUMBER CHECK (Coach_License_Number BETWEEN 1 AND 9999),
		Coach_Name VARCHAR2 (10) NOT NULL,
		PRIMARY KEY (Coach_License_Number));
		
		CREATE TABLE Roster (
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Roster_ID NUMBER CHECK (Roster_ID BETWEEN 1 AND 9999),
		Competition VARCHAR2(15) NOT NULL,
		PRIMARY KEY (Team_ID, Roster_ID));
		
		CREATE TABLE Player (
		Player_ID NUMBER CHECK (Player_ID BETWEEN 1 AND 9999),
		Player_Name VARCHAR(10) NOT NULL,
		Jersey_Number NUMBER DEFAULT NULL,
		Nationality VARCHAR(10) NOT NULL,
		Position VARCHAR(10) DEFAULT NULL,
		Goals NUMBER DEFAULT 0,
		Saves NUMBER DEFAULT 0,
		Assists NUMBER DEFAULT 0,
		Dribbles NUMBER DEFAULT 0,
		PRIMARY KEY (Player_ID));

		CREATE TABLE Awards (
		Season_Date VARCHAR(15) REFERENCES Season(Season_Date),
		Player_ID NUMBER REFERENCES Player(Player_ID),
		Award_ID NUMBER CHECK (Award_ID BETWEEN 1 AND 9999),
		Type_of_Award VARCHAR(10) NOT NULL,
		PRIMARY KEY (Season_Date, Player_ID, Award_ID));

		CREATE TABLE Plays_In (
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Match_ID NUMBER REFERENCES Match(Match_ID),
		Score NUMBER DEFAULT NULL,
		PRIMARY KEY (Team_ID, Match_ID));

		CREATE TABLE Plays_For (
		Player_ID NUMBER REFERENCES Player(Player_ID),
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Contract_Effective_Date VARCHAR2(10) NOT NULL,
		Contract_Expiration_Date VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Player_ID, Team_ID));

		CREATE TABLE Manages (
		Coach_License_Number NUMBER REFERENCES Coach(Coach_License_Number),
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Start_Date VARCHAR2(10) NOT NULL,
		End_Date VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Coach_License_Number, Team_ID));

		CREATE TABLE Penalizes (
		Penalty_ID NUMBER,
		Referee_License_Number NUMBER REFERENCES Referee(Referee_License_Number),
		Player_ID NUMBER REFERENCES Player(Player_ID),
		Reason_for_Penalty VARCHAR(10) NOT NULL,
		Date_Issued VARCHAR(10) NOT NULL,
		PRIMARY KEY (Penalty_ID, Referee_License_Number, Player_ID));

exit;
EOF
                                                ;;  
    1 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Team (
		Team_ID NUMBER CHECK (Team_ID BETWEEN 1 AND 9999),
		Team_Name VARCHAR (10) NOT NULL,
		Nationality VARCHAR(10) NOT NULL,
		Wins NUMBER DEFAULT 0,
		Losses NUMBER DEFAULT 0,
		Draws NUMBER DEFAULT 0,
		Points NUMBER DEFAULT 0,
		PRIMARY KEY (Team_ID));
exit;
EOF
                                                ;;     

    2 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Season (
		Season_Date VARCHAR2(15),
		Winner VARCHAR2(15),
		PRIMARY KEY (Season_Date));
exit;
EOF
                                                ;; 

    3 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Match (
		Match_ID NUMBER CHECK (Match_ID BETWEEN 1 AND 9999),
		Start_Date VARCHAR2(10) NOT NULL,
		Time_Taken NUMBER NOT NULL,
		Venue VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Match_ID));
exit;
EOF
                                                ;;

    4 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Referee (
		Referee_License_Number NUMBER CHECK (Referee_License_Number BETWEEN 1 AND 9999),
		Referee_Name VARCHAR2 (10) NOT NULL,
		PRIMARY KEY (Referee_License_Number));
exit;
EOF
                                                ;; 

    5 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Coach (
		Coach_License_Number NUMBER CHECK (Coach_License_Number BETWEEN 1 AND 9999),
		Coach_Name VARCHAR2 (10) NOT NULL,
		PRIMARY KEY (Coach_License_Number));
exit;
EOF
                                                ;; 

    6 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Roster (
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Roster_ID NUMBER CHECK (Roster_ID BETWEEN 1 AND 9999),
		Competition VARCHAR2(15) NOT NULL,
		PRIMARY KEY (Team_ID, Roster_ID));
exit;
EOF
                                                ;; 

	7 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Player (
		Player_ID NUMBER CHECK (Player_ID BETWEEN 1 AND 9999),
		Player_Name VARCHAR(10) NOT NULL,
		Jersey_Number NUMBER DEFAULT NULL,
		Nationality VARCHAR(10) NOT NULL,
		Position VARCHAR(10) DEFAULT NULL,
		Goals NUMBER DEFAULT 0,
		Saves NUMBER DEFAULT 0,
		Assists NUMBER DEFAULT 0,
		Dribbles NUMBER DEFAULT 0,
		PRIMARY KEY (Player_ID));
exit;
EOF
                                                ;; 

    8 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Awards (
		Season_Date VARCHAR(15),
		Player_ID NUMBER CHECK (Player_ID BETWEEN 1 AND 9999),
		Type_of_Award VARCHAR(10) NOT NULL,
		PRIMARY KEY (Season_Date, Player_ID));
exit;
EOF
                                                ;;      
    
    9 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Plays_In (
		Team_ID NUMBER REFERENCES Team(Team_ID),
		Match_ID NUMBER REFERENCES Match(Match_ID),
		Score NUMBER DEFAULT NULL,
		PRIMARY KEY (Team_ID, Match_ID));
exit;
EOF
                                                ;; 

	10 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Plays_For (
		Player_ID NUMBER REFERENCES Player(Player_ID),
		Team_ID NUMBER CHECK (Team_ID BETWEEN 1 AND 9999),
		Contract_Effective_Date VARCHAR2(10) NOT NULL,
		Contract_Expiration_Date VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Player_ID),
		FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID));
exit;
EOF
                                                ;; 

    11 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Manages (
		Coach_License_Number NUMBER REFERENCES Coach(Coach_License_Number),
		Team_ID NUMBER CHECK (Team_ID BETWEEN 1 AND 9999),
		Start_Date VARCHAR2(10) NOT NULL,
		End_Date VARCHAR2(10) NOT NULL,
		PRIMARY KEY (Coach_License_Number),
		FOREIGN KEY (Team_ID) REFERENCES Team(Team_ID));
exit;
EOF
                                                ;; 

    12 ) clear
		export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

		user=esinlao
		pass=04177544

		sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
		CREATE TABLE Penalizes (
		Penalty_ID NUMBER,
		Referee_License_Number NUMBER CHECK (Referee_License_Number BETWEEN 1 AND 9999),
		Player_ID NUMBER CHECK (Player_ID BETWEEN 1 AND 9999),
		Reason_for_Penalty VARCHAR(10) NOT NULL,
		Date_Issued VARCHAR(10) NOT NULL,
		PRIMARY KEY (Penalty_ID),
		FOREIGN KEY (Referee_License_Number) REFERENCES Referee(Referee_License_Number),
		FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID));
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
