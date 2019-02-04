#!/bin/bash
# Authors : Aryan Regmi
# Date: 2/1/2019


#Problem 1 Code:
#-------------------------------------------------------------------#

#Prompt user for Filename and store into variable
echo "Enter filename: "
read file_name

#Prompt user for regular expression and store into variable
echo "Enter regular expression: "
read reg_exp

#Feed user input to grep
grep $reg_exp $file_name
echo ""


#Count number of phone numbers
echo "Number of Phone Numbers in 'regex_practice.txt':  "
grep '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt | wc -l
echo ""


#Count number of emails
echo "Number of Emails in 'regex_practice.txt': "
grep @ regex_practice.txt | wc -l
echo ""


#List (303) phone numbers in 'phone_results.txt'
grep '303-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt >> phone_results.txt


#List 'geocities.com' emails in 'email_results.txt'
grep '@geocities.com' regex_practice.txt >> email_results.txt


#Support command-line regex
grep $1 regex_practice.txt >> command_results.txt


