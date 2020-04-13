#!/bin/bash -x

echo Enter stake,days and goals
read s
read d
read g

bets=1
wins=0
loss=0

for(( t=0; t<$d; t++ ))
do
  while(( $s>0 && $s<$g ))
  do
    ((bets++))
     if(( $((1+RANDOM%2)) <= 1 ))
     then
         ((s--))
     else
         ((s++))
     fi
  done
  if(( $s = $g ))
  then
     ((wins++))
  else
     ((loss++))
  fi
done
echo total wins are $wins
echo total loss are $loss
