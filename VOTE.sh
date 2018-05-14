#! /bin/bash
echo "\nENTER NAME"
read name
echo "\nENTER AGE"
read age
limit=18
flag=0
echo "\nHELLO $name !"
echo "\nYOUR AGE IS: $age"
if [ $age -ge $limit ]
then
echo "\nYou are Eligible to vote"
echo "\nDO YOU WANT TO VOTE?(1/0)"
read choice
else
echo "\nYou are not eligible to vote"
exit
fi
if [ $choice -eq 1 ]
then
echo "Vote for Party 0 (1/0)"
read vote 
echo "\nYour VOTE IS : $vote"
echo
echo "Want to vote for another party? (1/0)"
read anchoice
else
echo "\nPLEASE COME BACK TO VOTE AGAIN"
echo "\nEXITING"
exit
fi
if [ $anchoice -eq 1 ] 
then
echo "How many parties do you want to vote for?"
read num 
for ((i=1; i<=num; i++))
do
 echo "Vote for party $i (1/0)"
 read vote
 echo "\nYour VOTE IS : $vote"
done
echo "\nTHANKS FOR VOTING!"
else
echo "\nEXITING"
fi

