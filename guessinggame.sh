#!/usr/bin/env bash
 
function ask {
	echo "Koliko mislis da ima fajlova ovde?"
	read koliko
    files=$(ls -1 | wc -l)
}
ask
while [[ $koliko -ne $files ]]
do
	if [[ $koliko -lt $files ]] 
	then
		echo "Sto mislis da ima toliko malo?Ima vise. "	
	else
		echo "Sto mislis da ima toliko mnogo? Ima manje. "	
	fi
	ask
done
echo "BRAVO, pogodio si!"

echo "---" && ls -1
