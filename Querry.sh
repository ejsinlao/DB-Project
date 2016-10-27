#!/bin/bash

selection=
until [ "$selection" = "0" ]; do
	echo ""
	echo "======================================================================"	
	echo "|						         Querries							   |"
	echo "|				        CPS510 Section #4, Group #9                    |"
	echo "|			        Kenny Nguyen, Emmanuel Joshua Sinlao			   |"
	echo "----------------------------------------------------------------------"
	echo ""	
   	echo "1 ) List all players who play for a certain team and their positions."
    echo "2 ) List all coaches who coach a certain team."
    echo "3 ) List all teams and the number of players that play for each team."
    echo "4 ) List all players who have scored more than 10 goals, and all players who have saved more than 10 goals."
    echo "5 ) List all penalties a player received, the reason, the date, and the referee who issued the penalty."
	echo "6 ) List all players from a certain team and their contract expiration dates."
	echo "7 ) Find the average and maximum amount of goals scored, and goals saved."
	echo "8 ) List all winners in preivous seasons of the league."
	echo ""
    echo "0 ) Exit."
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in

	1 ) 

	echo -n "Enter Team ID: "
	read team
	
	export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

	SELECT Team_Name, Player_Name, Position
	FROM Plays_For, Team, Player
	WHERE Team.Team_ID = $team
		AND Plays_For.Team_ID = Team.Team_ID
		AND Plays_For.Player_ID = Player.Player_ID
	ORDER BY Position ASC;
exit;
EOF
                                                ;;
	2 ) 

	echo -n "Enter Team ID: "
	read team

	export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

	SELECT Coach_Name, Team_Name
	FROM Coach, Team, Manages
	WHERE Team.Team_ID = $team
		AND Manages.Team_ID = Team.Team_ID
		AND Manages.Coach_License_Number = Coach.Coach_License_Number
	ORDER BY Coach_Name ASC;
exit;
EOF
                                                ;;
 	3 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

	SELECT Team_Name, COUNT(Player_ID) AS Number_of_Players
	FROM Team, Plays_For
	WHERE Team.Team_ID = Plays_For.Team_ID
	GROUP BY Team_Name
	ORDER BY Team_Name ASC;
exit;
EOF
                                                ;;
 	4 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

     SELECT Player_Name, Goals, Saves
	FROM Player
	WHERE Goals > 10
	UNION
	(SELECT Player_Name, Goals, Saves
	FROM Player
	WHERE Saves > 10); 
exit;
EOF
                                                ;;
	5 )

	echo -n "Enter Player ID: "
	read player	

	export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

     SELECT Player_Name, Reason_for_Penalty, Date_Issued, Referee_Name
	FROM Player, Referee, Penalizes
	WHERE Penalizes.Player_ID = $player
		AND Player.Player_ID = Penalizes.Player_ID
		AND Referee.Referee_License_Number = Penalizes.Referee_License_Number;
exit;
EOF
                                                ;;
 	6 ) 

	echo -n "Enter Team ID: "
	read team
	
	export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
	SELECT Team_Name, Player_Name, Contract_Expiration_Date
                FROM Plays_For, Team, Player
                WHERE Team.Team_ID = $team
                AND Plays_For.Team_ID = Team.Team_ID
                AND Plays_For.Player_ID = Player.Player_ID
                ORDER BY Contract_Expiration_Date ASC;
exit;
EOF
                                                ;;
 	7 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
	SELECT AVG(Goals) AS AVG_Goals, MAX(Goals) AS MAX_Goals, AVG(Saves) AS AVG_Saves, MAX(Saves) AS MAX_Saves
	FROM Player;
exit;
EOF
                                                ;;
	8 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
````````````````````````````````````````	
	user=esinlao
	pass=04177544

	sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
	SELECT Season_Date, Winner
	FROM Season
	ORDER BY Season_Date ASC;
exit;
EOF
                                                ;;
        0 ) echo "Exiting..."
		  echo ""
exit ;;
        * ) echo "Invalid option."
    esac
done
