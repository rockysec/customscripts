#/bin/bash
input="$1"
while IFS= read -r line
do
bash RockySecTool.sh -d $line
sleep 3
done <"${input}"
