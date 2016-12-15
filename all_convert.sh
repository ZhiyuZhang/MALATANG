for filename in *.sdf; do 
    ./initialisation.sh                        "$filename"
    ipython convert_JCMT_to_sdfits.py           ${filename:0:23}.fits 
    class @ convert_fits_to_class.class         ${filename:0:23}
done


