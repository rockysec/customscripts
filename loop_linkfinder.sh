#/bin/bash
input="$1"
while IFS= read -r line
do
python ~/tools/LinkFinder/linkfinder.py -i $line >> linkfinder.txt
sleep 3
done <"${input}"
