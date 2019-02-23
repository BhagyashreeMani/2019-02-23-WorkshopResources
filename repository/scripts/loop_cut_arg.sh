# $1, $2, $3 are options for cut columns
# $4 is number of lines for head
# $5  is sort options (e.g..n or nr)
echo "column for cut $1 $2 $3"
echo "number for head: $4"
echo  "sort type $5"
for gapminderfile in [S-V]*.txt
do
    echo $gapminderfile
    cut -f "$1,$2,$3" $gapminderfile | sort -"$5" | head -$4
done
