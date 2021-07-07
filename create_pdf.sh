#!/bin/bash

# If resume.pdf exists, remove it and recreate it.

FILE=resume.pdf
if [ -f "$FILE" ]; then
    echo "$FILE exists so removing it."
    rm -f resume.pdf
    # Convert resume.md to resume.pdf
    echo "Creating $FILE."
    mdpdf -o resume.pdf resume.md
else 
    echo "$FILE does not exist."
    echo "Creating $FILE."
    # Convert resume.md to resume.pdf
    mdpdf -o resume.pdf resume.md
fi
