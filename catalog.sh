#Harrold Ventayen
#This file takes an argument for a GET command that finds you the "best match" of a course by entering the course number
#In the terminal, write the file name and the course number you are searching a class for and it will return the HTML of a course name with the course number you provided
#It will use the following command: http GET "https://catalog.fullerton.edu/search_advanced.php?cur_cat_oid=70&search_database=Search&search_db=Search&cpage=1&ecpage=1&ppage=1&spage=1&tpage=1&location=33&filter[keyword]=CPSC 349&filter[exact_match]=1" | grep -e "Best Match:"
#After using the command it will take your provided course number and put it in place of the course number in the link from the GET command, and it will return the HTML of the course name found with the course number provided
#!/bin/bash
script="$0"
first="$1"
echo "File Name: $script"
echo "Title of another course with $1:"
http GET "https://catalog.fullerton.edu/search_advanced.php?cur_cat_oid=70&search_database=Search&search_db=Search&cpage=1&ecpage=1&ppage=1&spage=1&tpage=1&location=33&filter[keyword]=CPSC $1&filter[exact_match]=1" | grep -e "Best Match:"