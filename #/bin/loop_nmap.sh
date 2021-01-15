#/bin/bash
input="$1"
while IFS= read -r line
do
nmap -p- -sS --min-rate 5000 -vvv -n --open -T5 -Pn $line
sleep 3
done <"${input}"
