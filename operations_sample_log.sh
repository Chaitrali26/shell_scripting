!/bin/sh

# AWK needs log file to have comma seprated values or tab seprated values. If it is not formatted data, then use SED
#need to print all content of log file
awk '{print}' sample.log

# Need to print first column of log file
awk '{print $1}' sample.log

# Need to print first and second column of log file
awk '{print $1,$2}' sample.log

# need to print all lines containing only "info" from sample.log
awk '/INFO/ {print $1,$2,$3,$5}' sample.log

# count how many "info" message in log file.
awk '/INFO/ {count ++} END {print "The count of "INFO" is:", count}' sample.log

#count how many times this IP comes in the log file.
#9.37.65.139
awk '/9.37.65.139/ {count ++} END {print "The count of IP 9.37.65.139 is:", count}' sample.log

#print logs for certain timestamp only.
awk '$2 >= "08:53:00" && $2 <= "08:53:59" {print $2,$3,$4}' sample.log

#print only row 2-10 from sample.log
#here NR means Number of rows
awk 'NR>=2 && NR<=10 {print}' sample.log

# -----------------------------------------------------------------------------------------------------------------------------

# SED [stream editor] : can do searching, find-and-replace, insertion, deletion, and more, without the need to open the file in an editor.
# sed <options> <commands> filename

#need to print only lines containing "INFO"
sed -n '/INFO/p' sample.log

#need to replace INFO to INFOLOG. Here g means globally. s means subreplace
sed 's/INFO/INFOLOG/g' sample.log

# delete 3rd line
sed '3d' sample.log

#Delete all lines containing "error"
sed '/error/d' sample.log

#insert a line before 2nd line:
sed '2i\This is a new line' sample.log

#append a line after 3rd line
sed '3a\This is appended' sample.log

#need to print line no. and that row which contains "INFO" message
# here -e stands for expression. 
#When you use the -n option, it prevents this automatic printing, so only the lines explicitly specified with the p (print) command will be displayed.
sed -n -e '/INFO/=' sample.log #this will just print row number.
sed -n -e '/INFO/=' -e 'INFO/p' sample.log #this will just print row number and entire row.

#need to replace INFO with LOG but only in first 10 line of sample.log
sed '1,10 s/INFO/LOG/g' sample.log

#need to replace INFO with LOG but only in first 10 line of sample.log. Print those first 10 line and quit at 11th line
sed '1,10 s/INFO/LOG/g; 1,10p; 11q' sample.log
# -----------------------------------------------------------------------------------------------------------------------------






