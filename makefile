all:
	README.md

README.md : 
	touch README.md
	echo "# The Guessing Game Project" > README.md
	echo "The **makefile** was run at $$(date +%c )" >> README.md
	echo "The guessinggame.sh file has $$(cat guessinggame.sh | wc -l ) number of lines." >> README.md
clean: 
	rm README.md


