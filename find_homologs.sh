#!/bin/sh
tblastn\
	-query $1\
	-subject $2\
	-outfmt "6 std qlen " | awk '$3==100.000 && $4==$13' > $3
wc -l $3
