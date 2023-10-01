README.md: guessinggame.sh
    echo "# Guessing Game Project" > README.md
    echo "" >> README.md
    echo "Date and Time at which make was run:" >> README.md
    date >> README.md
    echo "" >> README.md
    echo "Number of lines of code contained in guessinggame.sh:" >> README.md
    cat guessinggame.sh | wc -l >> README.md

clean:
    rm README.md
