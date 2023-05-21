#/bin/bash
input="$1"
while IFS= read -r line
do
python3 ~/tools/secretfinder/SecretFinder.py -e -i $line 
sleep 3
done <"${input}"
