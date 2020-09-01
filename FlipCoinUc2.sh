#!/bin/bash
read -p "Enter How many times you want to flip:" n
flips=1
heads=0
tails=0
while [[ $flips -le $n ]]
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
      fi
done
echo "Heads Won $heads Times" "and" "Tails Won $tails Times."
exit
