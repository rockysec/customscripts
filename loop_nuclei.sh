#/bin/bash
input="$1"
while IFS= read -r line
do
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/technologies/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/cves/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/takeover/
nuclei -target $line -t ~/tools/nuclei//nuclei-templates/exposed-panels/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/default-logins/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/dns/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/exposures/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/fuzzing/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/helpers/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/miscellaneous/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/workflows/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/misconfiguration/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/exposed-tokens/
nuclei -target $line -t ~/tools/nuclei/nuclei-templates/vulnerabilities/
sleep 3
done <"${input}"
