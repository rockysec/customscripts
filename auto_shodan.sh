#/bin/bash
#usage ./auto_shodan.sh "YOUR_IP_FILE"
input="$1"
while IFS= read -r line
do 
   shodan host $line >> shodan.txt
   sleep 5
done <"${input}"
