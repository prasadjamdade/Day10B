#! /bin/bash  

read -p "Enter number of times to flip the coin: " num


#Base flipper
tail=0;
head=0;
for (( i = 0; i < $num; i++ )); 
	do
		coin=$((RANDOM%2));
			if [[ $coin == 0 ]]
		then
			tail=$(($tail+1));
		else
			head=$(($head+1));
	fi
	done

#Tie breaker
tiegen(){
	etail=0;
	ehead=0;
	for (( i = 0; i < $(($num+100)); i++ ));
			do
				ecoin=$((RANDOM%2));
				if [[ $ecoin == 0 ]]; 
				then
					tie[$i]=H
				else
					tie[$i]=T
				fi
			done
	echo "The outcomes after initial run (${tie[*]})";
	for (( i = 0; i < 100; i++ )); 
		do
		if [[ ${tie[$i]} == ${tie[$(($i+1))]} ]]; 
			then
				echo "==================================="
				echo "${tie[$i]} side won the Tiebreaker."
				break
		fi
		done
	
}

#Wins counter of base flipper
if [[ $tail -gt $head ]]
	then
		wtail=$(($tail-$head));
		echo "Tail's side won by differnce of: " $wtail;
	elif [[ $head -gt $tail ]]
		then
		whead=$(($head-$tail))
		echo "Heads won by differnce of: " $whead;
	elif [[  $head == $tail ]]
		then
		echo "Its a tie"
		tiegen
	fi

