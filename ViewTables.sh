#!/bin/bash

selection=
until [ "$selection" = "B" ]; do

        echo ""
        echo "======================================================================"
        echo "|                          View Tables                               |"
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
        echo "8 ) Plays in"
	echo "9 ) Plays  for"
	echo "10 ) Manages"
	echo "11) Penalizes"
	echo ""
    echo "B ) Back"
    echo ""
    echo -n "Please select a view: "
    read selection
    echo ""
    case $selection in
  1 )

        

        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        SELECT *
	FROM Season;
exit;
EOF
                                                ;;
 2 )


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544
 sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
	Select * 
from  Match;
exit;
EOF
                                                ;;
3 )


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
	Select * from Referee;
exit;
EOF
                                                ;;
 4 )
        

        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
     	Select * from Coach;
exit;
EOF
                                                ;;
 5 )
            export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
     Select * from Team;
exit;
EOF
                                                ;;
  6 )
        

        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

        user=esinlao
        pass=04177544
 sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        Select * from Roster;
exit;
EOF
                                                ;;
  7 )

       export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        
        Select * from Player;
EOF
                                                ;;
  8 )

        
        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        Select * from Plays_in;
exit;
EOF
                                                ;;




 9 )


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        Select * from Plays_for;
exit;
EOF
                                                ;;
 
 10 )


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        Select * from Manages;
exit;
EOF
                                                ;;
11 )


        export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
        clear
        user=esinlao
        pass=04177544

        sqlplus64 -s "$user/$pass@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=141.117.57.159)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
        Select * from Penalizes;
exit;
EOF
                                                ;;



  B ) clear
                 sh MainMenu.sh
                 ;;

        * ) clear
                        echo "Invalid query. Please try again."
    esac
done
