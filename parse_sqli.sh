#!/bin/bash

input_file="sqli_tmp.txt"
output_file="resultado.txt"

previous_line=""

while IFS= read -r line; do
  if [[ $previous_line == "GET http"* ]]; then
    if [[ $line == *"Payload:"* ]]; then
      echo "${previous_line}, $line" >> "$output_file"
    else
      echo "$previous_line" >> "$output_file"
      echo "$line" >> "$output_file"
    fi
  elif [[ $line == "GET http"* ]]; then
    previous_line="$line"
  elif [[ $line == *"Payload:"* ]]; then
    echo "$line" >> "$output_file"
  fi
done < "$input_file"
grep -E "GET\http|Payload:" "$output_file" | awk '{ $2 = $2; print }' > sqli.csv
rm $output_file
