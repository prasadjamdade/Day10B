#! /bin/bash


read -p "Enter the number of times you want to flip a coin: " input;
head=0;
tail=0;
for (( i = 0; i < $input; i++ )); 
	do
	coin=$((RANDOM%2))
	if [[ $coin == 0 ]]
	then
		flip[i]="Head's";
		head=$(($head+1));
	else
		flip[i]="Tail's"
		tail=$(($tail+1));
	fi
	done
echo "===================================================================="
echo "The outcomes of flipping a coin $input time: (${flip[*]})"
echo "===================================================================="
echo "The Head's side won $head times  &  the Tail's side won $tail times."
echo "===================================================================="
