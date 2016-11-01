#kappa
#smurf 
#convert
. $KAPPA_DIR/kappa.sh > /dev/null
. $SMURF_DIR/smurf.sh > /dev/null
. $CONVERT_DIR/convert.sh > /dev/null

rm AllTsys.dat 
rm a20151202_00030_01_0001.fits
rm receptors_cat.FIT
rm jcmt_cube.sdf

# output a Tsys array for each subscan and each receptor 
hdstrace a20151202_00030_01_0001.sdf.more.acsis.tsys nlines=all > AllTsys.dat  
# convert the JCMT format data to .fits format 
ndf2fits a20151202_00030_01_0001.sdf a20151202_00030_01_0001.fits allowtab comp=d encoding='fits-wcs'  
# get the locations for the receptors for each subscan 
makecube in=a20151202_00030_01_0001.sdf outcat=receptors_cat out=jcmt_cube


