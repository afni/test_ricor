# This script runs a test set through retroicorTaylor.  It creates a
# subdirectory, testDir, if it does not already exist.  Within this
# directory, it writes the output, for each run of retroicorTaylor, to
# a subdirectory reflecting the name of the input dataset.  The
# SliBase file is compared with the known good sliBase file for that
# dataset.  It does that for every dataset that is expected to run
# without error.  The results of this analysis are written to the file
# testDir/fileConsistencyRegression.txt

set outDir=testDir/test000c
set prefix=test000
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
set fileConsistencyRegressionFile=testDir/fileConsistencyRegression.txt
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -card_file physiopy/test000c -prefix $prefix -num_slices 33 -volume_tr 2.2 -freq 400    -num_time_pts 17   -do_fix_nan -slice_pattern alt+z  -extra_fix_list 5000 -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test001
set prefix=test001
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
 python ~/retroicor/retroicorTaylor.py -resp_file physiopy/test001r -card_file physiopy/test001c -num_slices 33 -volume_tr 2.2 -freq 50   -num_time_pts 27  -prefix $prefix -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test002c
set prefix=test002c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -resp_file physiopy/test002r -card_file physiopy/test002c -prefix $prefix -num_slices 33 -volume_tr 2.2  -freq 50   -num_time_pts 27   -do_fix_nan -slice_pattern alt+z -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test003c
set prefix=test003c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python retroicorTaylor.py -phys_file physiopy/test003c.tsv.gz -phys_json physiopy/test003c.json -prefix $prefix -num_slices 34 -volume_tr 2.0 -num_time_pts 34 -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test003r
set prefix=test003r
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python retroicorTaylor.py -phys_file physiopy/test003r.tsv.gz -phys_json physiopy/test003r.json -prefix $prefix -num_slices 34 -volume_tr 2.0 -num_time_pts 94 -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test004
set prefix=test004
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced
 
# Run ricor program
python ~/retroicor/retroicorTaylor.py -phys_file physiopy/test004.tsv.gz -phys_json physiopy/test004.json -prefix $prefix -num_slices 34 -volume_tr 2.0   -num_time_pts 20   -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test005
set prefix=test005
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -phys_file physiopy/test005.tsv.gz -phys_json physiopy/test005.json -prefix $prefix -num_slices 34 -volume_tr 2.0   -num_time_pts 35   -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test007c
set prefix=test007c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -card_file physiopy/test007c -prefix $prefix -num_slices 33 -volume_tr 2.2 -freq 50    -num_time_pts 18 -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test008c
set prefix=test008c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -card_file physiopy/test008c -prefix $prefix -num_slices 33 -volume_tr 2.2 -freq 50    -num_time_pts 18 -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test007r
set prefix=test007r
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -resp_file physiopy/test007r -prefix $prefix -num_slices 33 -volume_tr 2.2 -freq 50    -num_time_pts 72 -do_fix_nan -slice_pattern alt+z  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/sub-005_ses-01_task-rest_run-1_physio-ECG
set prefix=sub-005_ses-01_task-rest_run-1_physio-ECG
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir  # Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorTaylor.py -card_file physiopy/sub-005_ses-01_task-rest_run-1_physio-ECG.txt -resp_file physiopy/sub-005_ses-01_task-rest_run-1_physio-Resp.txt -num_slices 33 -volume_tr 2.2 -freq 50    -num_time_pts 219  -do_fix_nan -slice_pattern alt+z -prefix $prefix  -out_dir $outDir

# Compare output SliBase file with known good file
echo "csh testSlibaseOutput.csh " $outPutFileName $prefix ".slibase.1D " $fileConsistencyRegressionFile
csh testSlibaseOutput.csh $outPutFileName $prefix.slibase.1D $fileConsistencyRegressionFile

