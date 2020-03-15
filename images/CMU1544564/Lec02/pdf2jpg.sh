#!/bin/bash
# This bash file receives a pdf file as input
# This bash file should stay in a folder, where the pdf file stays
ll
echo "This bash file seperates a multi-pages pdf file into seperate page(s) as jpg"

file=$1
echo "The file: $file is seperated into some page(s) as jpg file"

# https://stackoverflow.com/questions/14704274/how-to-write-shell-script-for-finding-number-of-pages-in-pdf
page_number=$(pdftk $file dump_data | grep NumberOfPages | awk '{print $2}')

echo $file "has" $page_number "pages"

pdfseparate $file %d.pdf

# https://stackoverflow.com/questions/169511/how-do-i-iterate-over-a-range-of-numbers-defined-by-variables-in-bash
for i in $( eval echo {1..$page_number})
do
   convert $i.pdf $i.jpg
   rm $i.pdf
done

echo "Done with following files:"

ls -a
# ls -al