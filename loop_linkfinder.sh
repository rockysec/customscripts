#/bin/bash
input="$1"
while IFS= read -r line
do
python3 ~/tools/LinkFinder/linkfinder.py -i $line -o cli >> linkfinder.txt
sleep 3
done <"${input}"
