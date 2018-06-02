all: README.md

README.md: guessinggame.sh
	echo "Zadatak sa coursere" > README.md
	echo "\n guessinggame.sh" >> README.md
	echo -n "\n Datum kad smo pravili: " >> README.md
	date >> README.md
	echo -n "\n Linije koda unutar skirpte: " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
rm README.md