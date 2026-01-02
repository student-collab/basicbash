#!/bin/bash
echo hello world

# -1 variables
PRICE_PER_APPLE=5
MY_LETTERS=ABC
greeting='Hello        world'

echo "Prisen for epler i dag er: $PRICE_PER_APPLE"

echo "Første 10 bokstaver ${MY_LETTERS}DEFGHIJ"

echo $greeting
echo "med white space $greeting"

FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%d-%b-%y).txt
echo $FileWithTimeStamp


: << 'EOF'

%A	Full weekday name (e.g., Saturday)
%a	Abbreviated weekday name (e.g., Sat)
%B	Full month name (e.g., January)
%b	Abbreviated month name (e.g., Jan)
%d	Day of the month (01–31)
%m	Month (01–12)
%Y	Full year (e.g., 2026)
%y	Last two digits of the year (e.g., 26)
EOF

Today=$(/bin/date +%d-%b-%y)
echo $Today
echo $(date -d "$Today" +%A)
