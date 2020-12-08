#!/bin/bash
#SBATCH --account=b1134                # Our account/allocation
#SBATCH --partition=buyin      		# 'Buyin' submits to our node qhimem0018
#SBATCH --time=00:20:00             # Walltime/duration of the job
#SBATCH --mem=40               # Memory per node in GB. Also see --mem-per-cpu
#SBATCH --output=/projects/b1134/processed/slicer/logs/slcr_CBS1p5_%a_%A.out
#SBATCH --error=/projects/b1134/processed/slicer/logs/slcr_CBS1p5_%a_%A.err
#SBATCH --job-name="Slicer"       # Name of job

# Braga Lab Slicer Script
# Used to output slice images for boldqc pipeline

# Created by R. Braga, A. Holubecki, S. Cermak - Nov 4th, 2020
 
# Usage:
# slicer_boldqc_CBS1p5.sh scan_name out_dir
# e.g. sh /projects/b1134/tools/slicer_imgs/slicer_boldqc_CBS1p5.sh /projects/b1134/processed/boldqc/SeqDev/sub-fMRIPILOT1030/ses-fMRIPILOT1030/tmp/sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST01_acq-CBS1p5_bold_skip_mc_mean.nii.gz /projects/b1134/processed/boldqc/SeqDev/sub-fMRIPILOT1030/ses-fMRIPILOT1030/task-REST01 sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST01_acq-CBS1p5_meanBOLD

infile=$1
OUTPATH=$2
img_name=$3

module load fsl

if [ ! -e $infile ]; then
echo "File not found: $infile"
exit
fi

echo "image: $infile"
echo "output directory: $OUTPATH"
echo "output name: $img_name"

mkdir -p $OUTPATH

WKDIR=$OUTPATH/tmp
mkdir -p $WKDIR

underlay=$infile



#CBS2p4 AXIAL
outfile=$OUTPATH/${img_name}_ax.png

zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
zthick=$(($zdim-23))
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
fslroi $underlay ${WKDIR}/ovax_roi.nii.gz 0 $xdim 0 $ydim 21 $zthick

if [[ "$img_name" = *tsnr* ]]; then
slicer ${WKDIR}/ovax_roi.nii.gz -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
else
slicer ${WKDIR}/ovax_roi.nii.gz -u -S $numslices $width $outfile
fi

convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 15 -splice 0x18 -annotate +1+13 ${img_name}_ax -append $outfile

#CBS1p5 SAGITTAL
outfile=$OUTPATH/${img_name}_sag.png
xadjust=12

zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
numslices=$(($xdim/28))
xthick=$(($xdim-40))
width=$((6*$ydim))
fslroi $underlay ${WKDIR}/ovsag_roi.nii.gz $xadjust $xthick 0 $ydim 0 $zdim
fslswapdim ${WKDIR}/ovsag_roi.nii.gz y z -x ${WKDIR}/${nmov}

if [[ "$img_name" = *tsnr* ]]; then
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
else
slicer ${WKDIR}/${nmov} -u -S $numslices $width $outfile
fi

convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 15 -splice 0x18 -annotate +1+13 ${img_name}_sag -append $outfile
