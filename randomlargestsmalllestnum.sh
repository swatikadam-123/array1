#create array of 3 digit 10 random values
for((i=0;i<10;i++))
do
num[i]=$((RANDOM%899+100))
done
echo "Generate 10 random 3 Digit num Stored random num into array"
echo ${num[@]}

#find largest element in array
r=$((num[0]))
for((i=1;i<10;i++))
do
if((r<num[i]))
then
r=$((num[i]))
else
r=$r
fi
done


#find 2nd largest element in array
p=0
for((i=0;i<10;i++))
do
if((p<num[i] && num[i]!=r))
then
p=$((num[i]))
else
r=$r
fi
done
echo "2nd largest element in array is " $p


#find smallest element in array
r=$((num[0]))
for((i=1;i<10;i++))
do
if((r>num[i]))
then
r=$((num[i]))
else
r=$r
fi
done

#find 2nd smallest element in array
p=1000
for((i=0;i<10;i++))
do
if((p>num[i] && num[i]!=r))
then
p=$((num[i]))
else
r=$r
fi
done
echo "2nd smallest element in array is " $p
