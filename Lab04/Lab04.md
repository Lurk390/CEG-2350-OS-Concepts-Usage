## Lab 04

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

1. `grep -E '(X|x)[0-9]{4}' grepdata.txt`
2. `grep -i 'ca' grepdata.txt`
3. `grep '@' grepdata.txt`
4. `grep ', 2[0-9][0-9][0-9]' grepdata.txt`

## Part 2 Answers

1. `sed -e 's/<[/][^>]*>//g' sedfile.html > sedfile.md`
2. `sed -i -e 's/<li>/- /g' sedfile.md`
3. `sed -i -e 's/<h1>/# /g' sedfile.md`
4. `sed -i -e 's/<h2>/## /g' sedfile.md`
5. `sed -i -e '/<[^>]*>/d' sedfile.md`
6. `sed -i -e 's/Batches/Matches/g' sedfile.md`

## Part 3 Answers

1. `awk '/Bil/ {print $1}' records.txt`
2. `awk '$4 ~ /42/ {print $3}' records.txt`
3. `awk '$3 ~ /wright.edu/ {print $2", "$1": "$3}' records.txt`
4. `awk '$3 ~ /wright.edu/ && $6 ~ /1234/ {print $1" favorite number is: "$4}' records.txt`
5. `awk '$6="N0T@PL@!NP@$$W0RD" {print $0}' records.txt > updaterecords.txt`
