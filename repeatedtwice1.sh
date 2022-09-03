k=0
for((i=1;i<=100;i++))
do
a=$((i%10))
b=$((i/10))

while((a==b))
do
((a++))
numbers[k]=$i
((k++))
done
done
echo "1.range from 0-100"
echo "2.Find the digit repeated twice"
echo "3.save that value in array and print"
echo ${numbers[@]}
