for gapminderfile in [L-O]*.txt
do
    echo $gapminderfile
    # edit the line below so that the lowest values are output
    cut -f 2,3,6 $gapminderfile | sort -nr | tail -1;
done
