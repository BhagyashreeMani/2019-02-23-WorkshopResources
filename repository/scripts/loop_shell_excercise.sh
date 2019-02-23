# $1 is field to cut
# $2 specifies head or tail
for gapminderfile in [U-Z]*.txt
do
    echo $gapminderfile
    if [ "$2" = "high" ] # test whether 2nd argument is "high"
    then # if "high" then show highest value (tail)
            cut -f "$1" $gapminderfile | sort -n | tail -1 >> gm_field"$1"
    else  # otherwise show lowest value (head)
            cut -f "$1" $gapminderfile | sort -n | head -1 >> gm_field"$1"
    fi # Dont forget to end if conditional
done
