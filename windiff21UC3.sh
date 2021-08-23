#! /bin/bash 

head=0;
tail=0;
while [[ $head -lt 21 ]] && [[ $tail -lt 21 ]]
	do
	coin=$((RANDOM%2))
	if [[ $coin == 0 ]]
		then
			tail=$(($tail+1));
		else
			head=$(($head+1));
	fi
	done

echo "Number of times head won = "$head;
echo "======================================"
echo "Number of times tails won =" $tail;
echo "======================================"


if [[ $tail -gt $head ]]
then
	wtail=$(($tail-$head));
	echo "Tail's side won by differnce of: " $wtail;
elif [[ $head -gt $tail ]]
	then
	whead=$(($head-$tail))
	echo "Heads won by differnce of: " $whead;
elif [[  $head -eq $tails ]]
	then
	echo "Its a tie"
fi
