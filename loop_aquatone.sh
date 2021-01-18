#/bin/bash
input="$1"
output="$2"
while IFS= read -r line
do
 cat $input | aquatone -out $output -threads 5
sleep 3
done <"${input}"
