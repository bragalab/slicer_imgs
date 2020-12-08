# Braga Lab Slicer Script
# Used to output slice images for boldqc pipeline

# Created by R. Braga, A. Holubeck, S. Cermak - Nov 4th, 2020
 
# Usage:
# slicer_bold_CBS2p4.sh scan_name out_dir
# e.g. slicer_bold_CBS2p4.sh /projects/b1134/processed/boldqc/SeqDev/sub-fMRIPILOT1030/ses-fMRIPILOT1030/tmp/sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST02_acq-CBS2p4_bold_skip_mc_mean.nii.gz /projects/b1134/processed/boldqc/SeqDev/sub-fMRIPILOT1030/ses-fMRIPILOT1030

sequence_name=$2
OUTPATH=$2

SLICERBASEDIR=/Users/sec9607/Documents/slicers

sequence_tag=
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz

WKDIR=~/Downloads/slicerims
mkdir -p $WKDIR

#MEAN

SLICERDIR=$SLICERBASEDIR/mean
mkdir -p "$SLICERDIR"

#CBS2p4 AXIAL

outfile=$SLICERDIR/${SUB}_${sequence_tag}_meanBOLD.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4 SAGITTAL
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_meanBOLD_sag.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
numslices=$(($xdim/28))
xthick=$(($xdim-15))
width=$((7*$ydim))
fslroi $underlay ${WKDIR}/ov_roi.nii.gz 15 $xthick 0 $ydim 0 $zdim
fslswapdim ${WKDIR}/ov_roi.nii.gz y z -x ${WKDIR}/${nmov}
slicer ${WKDIR}/${nmov} -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

