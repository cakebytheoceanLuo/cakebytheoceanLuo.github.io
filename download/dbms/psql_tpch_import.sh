#!/bin/bash
for i in `ls *.tbl`; do
    echo $i;
    sed -i 's/|$//' *.tbl;
    name=`echo $i| cut -d'.' -f1`;
    psql -d $1 -c "COPY $name FROM '`pwd`/$i' DELIMITER '|' ENCODING 'LATIN1';";
done