#!/bin/bash

selection=
until [ "$selection" = "B" ]; do

        echo ""
        echo "======================================================================"
        echo "|                           Populate Tables                          |"
        echo "|                     CPS510 Section #4, Group #9                    |"
        echo "|                 Kenny Nguyen, Emmanuel Joshua Sinlao               |"
        echo "----------------------------------------------------------------------"
        echo ""
        echo "1 ) Season"
    echo "2 ) Match"
    echo "3 ) Referee"
    echo "4 ) Coach"
    echo "5 ) Team"
        echo "6 ) Roster"
        echo "7 ) Player"
        echo "8 ) Awards"
        echo "9 ) Plays in"
        echo "10) Plays For"
        echo "11) Manages"
        echo "12) Penalizes"
        echo "13) Chooses"
        echo ""
    echo "B ) Back"
    echo ""
    echo -n "Please select a query: "
    read selection
    echo ""
    case $selection in
  1 )

        echo -n "Please enter Season Date: "
        read  date
        clear

        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
                insert into season
                values('$date');
exit;
EOF
                                                ;;
 2 )
        echo -n "Please enter Match ID: "
        read matchid
        echo  "Please enter Start Date(YYYY-MM-DD):  "
        read date
        echo "Please enter Time Taken(mmm): "
        read time
        echo "Please enter Venue: "
        read venue
        clear
 export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into match
        values($matchid,'$date',$time,'$venue');
exit;
EOF
                                                ;;
 3 )
        echo -n "Please enter License Nuber: "
        read number

        echo "Please enter name: "
        read name
        clear
        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into referee
        values($number,'$name');
exit;
EOF
                                                ;;
 4 )
        echo -n "Please enter License Number: "
        read number
        echo "Please enter name: "
        read name
        clear


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
     insert into coach
values($number,'$name');
exit;
EOF
                                                ;;
 5 )
        echo -n "Please enter team id: "
        read teamid
        echo "Please enter team name: "
        read name
        echo "Please enter nationality: "
        read nationality
        echo "Please enter amount of wins: "
        read win
        echo "Please enter amount of losses: "
        read loss
        echo "Please enter amount of draws: "
        read draw
        echo "Please enter amount of points: "
        read point
clear
 export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
     insert into team
values($teamid,'$name','$nationality',$win,$loss,$draw,$point);
exit;
EOF
                                                ;;
 6 )
        echo -n "Please enter a Roster ID: "
        read id
        clear


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into roster
        values($id);
exit;
EOF
                                                ;;
 7 )

        echo -n  " Please enter Player ID: "
        read id
        echo "Please enter Player Name: "
        read name
        echo "Please enter Jersey Number: "
        read number
        echo "Please enter nationality: "
        read nation
        echo "Please enter position: "
        read position
        echo "Please enter goals: "
        read goal
        echo "Please enter saves: "
        read save
        echo "Please enter assists: "
        read assist
        echo "Please enter dribbles: "
        read dribble
        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into player
values($id,'$name',$number,'$nation','$position',$goal,$save,$assist,$dribble);
exit;
EOF
                                                ;;
   8 ) echo -n "Please enter Season Date: "
        read date
        echo "Please enter player id: "
        read id
        echo "Please enter type of award: "
        read award
        clear

 export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into awards
        values('$date',$id,'$award');
exit;
EOF
                                                ;;
9 )

        echo -n "Please enter Team ID: "
        read teamid
        echo "Please enter Match ID : "
        read matchid
        echo "Please enter score: "
        read number
        clear


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544
         sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF


        insert into plays_in
        values($teamid,$matchid,$number);
exit;
EOF
                                                ;;
 10 )

         echo-n "Please enter Player ID: "
        read playerid
        echo "Please enter Team ID: "
        read teamid
        echo "Please enter Contract Effective date: "
        read effdate
        echo "Please enter Contract Expiration Date: "
        read expdate
        clear
 export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544
         sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF


                insert into plays_for
                values($playerid,$teamid,'$effdate','$expdate');
exit;
EOF
                                                ;;


       11 )

        echo -n"Please enter Coach License Number: "
        read coachnumber
        echo "Please enter team ID: "
        read teamid
        echo "Please enter start date : "
        read startdate
        echo "Please enter end date: "
        read enddate
        clear


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

         sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

          insert into manages
        values($coachnumber,$teamid,'$startdate','$endate');
exit;
EOF
                                                ;;

12 )

        echo -n "Please enter Penalty ID: "
        read penaltyid
        echo" Please enter referee license number: "
        read refnumber
        echo "Please enter player ID: "
        read playerid
        echo "Please enter Reason for penalty: "
        read reason
        echo "Please enter date issued: "
        read date
        clear
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

 sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

                        insert into penalizes
                values($penaltyid,$refnumber,$playerid,'$reason','$date');
exit;
EOF
                                                ;;
13 )
        echo -n "Please enter a Team ID: "
        read teamid
        echo "Please enter Roster ID: "
        read roster
        echo "Please enter Roster Number: "
        read rosternum
        clear


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        insert into chooses
        values($teammid,$roster,$rosternum);
exit;
EOF
                                                ;;
 B ) clear
                 sh MainMenu.sh
                 ;;

        * ) clear
                        echo "Invalid . Please try again."
    esac
done
