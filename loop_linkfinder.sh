#/bin/bash
input="$1"
while IFS= read -r line
do
GoLinkFinder -d $line >> linkfinder.txt
sleep 3
done <"${input}"
