# READ and WRITE csv files
# gawk -f *.awk *.csv > *.csv
BEGIN {
    FPAT = "([^,\"]*)|(\"((\"\")*[^\"]*)*\")"; OFS="," 
}

{
    if ($1 > 2014)
        print $1, $2, $3, $8, $9, $12
}
