#/bin/bash
input="$1"
#while IFS= read -r line
#do
#nuclei -target $line -t ~/tools/nuclei-templates/
nuclei -l $1 —no-color -t ~/nuclei-templates/ 
#nuclei -target $line -t ~/tools/nuclei-templates/technologies/
#nuclei -target $line -t ~/tools/nuclei-templates/cves/
#nuclei -target $line -t ~/tools/nuclei-templates/takeover/
#nuclei -target $line -t ~/tools/nuclei-templates/exposed-panels/
#nuclei -target $line -t ~/tools/nuclei-templates/default-logins/
#nuclei -target $line -t ~/tools/nuclei-templates/dns/
#nuclei -target $line -t ~/tools/nuclei-templates/exposures/
#nuclei -target $line -t ~/tools/nuclei-templates/fuzzing/
#nuclei -target $line -t ~/tools/nuclei-templates/helpers/
#nuclei -target $line -t ~/tools/nuclei-templates/miscellaneous/
#nuclei -target $line -t ~/tools/nuclei-templates/workflows/
#nuclei -target $line -t ~/tools/nuclei-templates/misconfiguration/
#nuclei -target $line -t ~/tools/nuclei-templates/exposed-tokens/
#nuclei -target $line -t ~/tools/nuclei-templates/vulnerabilities/
#sleep 3
#done <"${input}"
