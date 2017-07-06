

for file in ~/nmon/kar*.html
do

sed -i '1i/<html> <a href="'$file'" target="_blank"> '$file' </a><html> <br>' ~/nmon/sample.html
echo "entered in to loop"

done
 
