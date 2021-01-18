#/bin/bash
input="$1"
while IFS= read -r line
do
ffuf -w /root/tools/dirsearch/db/dicc.txt -u $line/FUZZ -t 200 -fc 301,302,401,403,400 -e sql,txt,zip,jsp,log,logs,old,tar.gz,gz,tar,bkp,dump,db,php,xml,py,asp,aspx,rar,do,1,asmx,rar,key,gpg,asc,pl,json -recursion -recursion-depth 2
sleep 3
done <"${input}"
