all: README.md

README.md: guessinggame.sh
	echo "# UW---project" >> README.md
	echo -n "\nDate that the file was made in:" >> README.md
	echo -n "\n" >> README.md
	date >> README.md
	echo -n "\n" >> README.md
	echo -n "The number of lines is:" >> README.md
	echo -n "\n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
