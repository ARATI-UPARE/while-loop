#! /bin/bash -x 

# Flip coin till either Head or Tail wins 11 time.

Head=0
Tail=0
while [[ $Head -ne 11 && $Tail -ne 11 ]]
do
		coin=$(( RANDOM%2 ))
		if [[ $coin -eq 1 ]]
		then
				(( ++Head ))
		else
				(( ++Tail ))
		fi
done
echo $Head $Tail
