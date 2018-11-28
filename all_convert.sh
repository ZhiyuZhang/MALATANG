# script to convert JCMT sdf file to class format 
# usage: 
# ./all_convert.sh RA Dec 
# Here RA and Dec are in  Radian (J2000 )
# Example (for NGC 6946): 
# ./all_convert.sh 308.71791667      60.15388889   
for filename in *.sdf; do 
    ./initialisation.sh                     "$filename"
    ipython convert_JCMT_to_sdfits.py       ${filename:0:23}.fits 
    line=$(head -1 coordinate.dat)
    class @ convert_fits_to_class.class     ${filename:0:23} $line
done


