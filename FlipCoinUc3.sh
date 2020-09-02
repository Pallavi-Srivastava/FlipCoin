#!/bin/bash -x
flips=1
count=0
heads=0
tails=0
while [[ $flips -le 21 ]]
do
     coin=$((RANDOM%2))
     flips=`expr $flips + 1`;
     if [ $coin -eq 1 ]
     then
        echo "Heads";
        heads=`expr $heads + 1`;
     elif [ $coin -eq 0 ]
     then
         echo "Tails";
         tails=`expr $tails + 1`;
     elif [ $heads -eq $tails ]
     then
        echo "Tied"
        count=`expr $count + 1`;
      fi
done
echo "Head Won $heads Times" "," "Tail won $tails Times" "&" "Tied Occur $count "
exit;



