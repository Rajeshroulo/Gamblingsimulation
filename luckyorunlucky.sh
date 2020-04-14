#!/bin/bash -x

for(( i=0; i<5; i++ ))
do
   echo enter bet results
   read r
   a[$i]=$r
   echo ${a[$i]}
done

 min=a[0]
 max=a[0]
 for(( i=1; i<5; i++ ))
 do
   if((max<a[$i]))
    then
       max=a[$i]
   fi
   if((min>a[$i]))
    then
       min=a[$i]
   fi
 done
echo luckiest day is the day he won $max
echo unluckiest day is the day he loss $min

