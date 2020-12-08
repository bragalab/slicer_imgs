
#CBS1p5_run-01 SAGITTTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-01_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-01
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


#CBS1p5_run-03 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz
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

#CBS1p5_run-03 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
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

#CBS2p4_run-04 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz
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

#CBS2p4_run-04 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
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

#CBS1p5_run-05 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz
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

#CBS1p5_run-05 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
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

#CBS2p4_run-06 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
nderlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_mean.nii.gz
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

#CBS2p4_run-06 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
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


#STD

SLICERDIR=$SLICERBASEDIR/std
mkdir -p $SLICERDIR

#CBS1p5_run-01 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-01_acq-CBS1p5_bold
sequence_tag=3ME2p0TR1p5_echo-1
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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


#CBS1p5_run-01 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-01_acq-CBS1p5_bold
sequence_tag=3ME2p0TR1p5_echo-1
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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

#CBS2p4_run-02 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-02_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-02
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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

#CBS2p4_run-02 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-02_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-02
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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

#CBS1p5_run-03 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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

#CBS1p5_run-03 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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

#CBS2p4_run-04 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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

#CBS2p4_run-04 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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

#CBS1p5_run-05 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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

#CBS1p5_run-05 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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


#CBS2p4_run-06 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD.png
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


#CBS2p4_run-06 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_std.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_stdBOLD_sag.png
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


#tSNR

SLICERDIR=$SLICERBASEDIR/tsnr
mkdir -p $SLICERDIR


#CBS1p5_run-01 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-01_acq-CBS1p5_bold
sequence_tag=3ME2p0TR1p5_echo-1
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile



#CBS1p5_run-01 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-01_acq-CBS1p5_bold
sequence_tag=3ME2p0TR1p5_echo-1
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-02 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-02_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-02
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-02 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-02_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-02
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile


#CBS1p5_run-03 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile


#CBS1p5_run-03 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-03_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-03
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-04 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-04 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-04_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-04
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS1p5_run-05 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile


#CBS1p5_run-05 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-05_acq-CBS1p5_bold
sequence_tag=CBS1p5_run-05
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-06 AXIAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr.png
filename=$(basename "$underlay")
nmun="${filename%%.*}"
filename3=$(basename "$outfile")
nmout="${filename3%.*}"
zdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 4 {print}')
numslices=$(($zdim/28))
xdim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 2 {print}')
width=$((7*$xdim))
ydim=$(fslinfo $underlay | awk '{print $2}' | awk 'FNR == 3 {print}')
slicer $underlay -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

#CBS2p4_run-06 SAGITTAL
sequence_name=sub-fMRIPILOT1030_ses-fMRIPILOT1030_task-REST_run-06_acq-CBS2p4_bold
sequence_tag=CBS2p4_run-06
underlay=$OUTPATH_BASE/${sequence_name}/${sequence_name}_skip_mc_tsnr.nii.gz
outfile=$SLICERDIR/${SUB}_${sequence_tag}_BOLD_tsnr_sag.png
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
slicer ${WKDIR}/${nmov} -l $FSLDIR/etc/luts/render3.lut -i 0 100 -u -S $numslices $width $outfile
convert $outfile -resize 700 $outfile
convert $outfile -background White -pointsize 20 label:$nmout +swap -gravity North-West -append $outfile

