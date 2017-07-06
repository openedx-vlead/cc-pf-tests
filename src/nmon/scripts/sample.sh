    
 #echo who are you
 #echo this is karhtik 


#for number in 1 2 3 4 5 6 8
#do
#echo $number
#done
#exit 0

#for number in {1..12..2}
#do
#echo $number
#done

#for ((n=1;n<50;n++))
#{
#if (($n%5==0))
#then 
#echo "$n is divisible by 5"
#fi
#}

#for file in /home/karthik/Documents/test/karthik-Inspiron-5548_170629_1910.nmon /home/karthik/Documents/test/karthik-Inspiron-5548_170629_1920.nmon /home/karthik/Documents/test/karthik-Inspiron-5548_170629_1930.nmon
#do
#./nmonchart $file $file.html
#don
#e
#/usr/bin/nmon -c 10 -s 6 -F ~/nmon/file-$(date +'%Y-%m-%d:%H:%M').nmon
#/usr/bin/nmon -c 30 -s 20 -F ~/nmon/file-$(date +'%Y-%m-%d:%H:%M').nmon

# /usr/bin/nmon -c 10 -s 6 -F ~/nmon/file-$(date +'%Y-%m-%d:%H:%M').nmon


for file in ~/nmon/*.nmon
do
cd ~/nmon/
./nmonchart  $file $file.html
done


#for test in ~/nmon/*.html
#do
#sed -i "1680,1698d" $test > test-$(date +'%Y-%m-%d:%H:%M').html
#done

for test in ~/nmon/file*.html
do 
sed '1410,1418d' $test > kar-$(date +'%Y-%m-%d:%H:%M').html
rm -rf $test
done

























