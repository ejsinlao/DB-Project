#!/bin/bash

function press_enter
{
    echo ""
    echo -n "Press Enter to continue"
    read
    clear
}

selection=
until [ "$selection" = "0" ]; do
    echo ""
    echo "Advanced Queries List Menu"
    echo "1 - List all players who play for a certain team and their positions"
    echo "2 - List all coaches who coach a certain team alphabetically"
    echo "3 - List each team, the number of players that play for each team alphabetically"
    echo "4 - List all players who have scored more than 10 goals, or all players who have saved more than 10 goals"
    echo "5 - List all of the players from a certain team and their contract expiration dates"
    echo ""
    echo "0 - exit program"
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

user=esinlao
pass=04177544

sqlplus64 "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

SELECT Team_Name, Player_Name, Position
        FROM Plays_For, Team, Player
        WHERE Team.Team_ID = 01
                AND Plays_For.Team_ID = Team.Team_ID
                AND Plays_For.Player_ID = Player.Player_ID
        ORDER BY Position ASC;

exit;

EOF
     o
                                               ;;

  2 )export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

user=esinlao
pass=04177544

sqlplus64 "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

SELECT Coach_Name, Team_Name
                FROM Coach, Team, Manages
                WHERE Team.Team_ID = 01
                AND Manages.Team_ID = Team.Team_ID
                AND Manages.Coach_License_Number = Coach.Coach_License_Number
                ORDER BY Coach_Name ASC;

exit;

EOF
                                                ;;
 3 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

user=esinlao
pass=04177544

sqlplus64 "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

SELECT Team_Name, COUNT(Player_ID) AS Number_of_Players
                FROM Team, Plays_For
                WHERE Team.Team_ID = Plays_For.Team_ID
                GROUP BY Team_Name
                ORDER BY Team_Name ASC;
exit;

EOF
                                                ;;
 4 )export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

user=esinlao
pass=04177544

sqlplus64 "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

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
  5 ) export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

user=esinlao
pass=04177544

sqlplus64 "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

SELECT Team_Name, Player_Name, Contract_Expiration_Date
                FROM Plays_For, Team, Player
                WHERE Team.Team_ID = 01
                AND Plays_For.Team_ID = Team.Team_ID
                AND Plays_For.Player_ID = Player.Player_ID
                ORDER BY Contract_Expiration_Date ASC;
exit;

EOF
                                                ;;

        0 ) exit ;;
        * ) echo "Please enter 1, 2, 3, 4, 5, or 0"
    esac
done
