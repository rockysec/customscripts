#/bin/bash
input="$1"
while read -u 10 line;
do
bash ~/tools/RockySecTools/RockySecTool.sh -domain $line -recon -wayback -nuclei_cves -nuclei_dlogins -nuclei_panels -nuclei_exposures -nuclei_misc -nuclei_misconfig -nuclei_takeovers -nuclei_tech -nuclei_vuln -cors -nmap -xss -crlf -sqli -or -pp -output
sleep 3
done 10< "${1}"
