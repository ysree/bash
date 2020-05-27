#!/bin/bash

# Example on switch/case on a string

WORD="banana"

case "$WORD" in
    "apple")
            echo "An apple can be green. Or red."
    ;;
    "pear")
            echo "A pear rhymes with a bear"
    ;;
    "banana")
            echo "bananananaa!"
    ;;
esac

# Example on switch/case on an argument

function menu() {
    echo "Welcome!"
    echo "This is the menu"
}

while (($#))
do
    case "$1" in

        menu)
            menu
            shift
            exit 0
        ;;

        -u|user)
            echo $USER
            shift
            exit 0
        ;;

        *)
            menu
            exit 0
    esac
done
