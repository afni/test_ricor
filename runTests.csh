# This script runs a test set through retroicorLauren.  It creates a
# subdirectory, testDir, if it does not already exist.  Within this
# directory, it writes the output, for each run of retroicorLauren, to
# a subdirectory reflecting the name of the input dataset.  The
# SliBase file is compared with the known good sliBase file for that
# dataset.  It does that for every dataset that is expected to run
# without error.  The results of this analysis are written to the file
# testDir/fileConsistencyRegression.txt

# Create file similarity regression dirctory if it does not already exist
set testDirectoryName='testDir'
echo 'Test directory name: ' $testDirectoryName
mkdir -p $testDirectoryName

# Set up file similarity regression testing for all files
set fileConsistencyRegressionFile = "testDir/fileConsistencyRegression.txt"
echo "File Consistency Regression" >$fileConsistencyRegressionFile
echo "---------------------------" >>$fileConsistencyRegressionFile

## These commands should run without error

# Set up file similarity regression test for this test set
set outDir=testDir/test000c
set prefix=test000
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorLauren.py                                        \
    -card_file                      physiopy/test000c                        \
    -prefix                         $prefix                                  \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           400                                      \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test001
set prefix=test001
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -resp_file                      physiopy/test001r                        \
    -card_file                      physiopy/test001c                        \
    -prefix                         test001                                  \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           50                                       \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test002
set prefix=test002
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorLauren.py                                        \
    -resp_file                      physiopy/test002r                        \
    -card_file                      physiopy/test002c                        \
    -prefix                         test002                                  \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           50                                       \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test003c
set prefix=test003c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -phys_file                      physiopy/test003c.tsv.gz                 \
    -phys_json                      physiopy/test003c.json                   \
    -prefix                         test003c                                 \
    -num_slices                     34                                       \
    -volume_tr                      2.0                                      \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile

# Set up file similarity regression test for this test set
set outDir=testDir/test003r
set prefix=test003r
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorLauren.py                                        \
    -phys_file                      physiopy/test003r.tsv.gz                 \
    -phys_json                      physiopy/test003r.json                   \
    -prefix                         test003r                                 \
    -num_slices                     34                                       \
    -volume_tr                      2.0                                      \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test004
set prefix=test004
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -phys_file                      physiopy/test004.tsv.gz                  \
    -phys_json                      physiopy/test004.json                    \
    -prefix                         test004                                  \
    -num_slices                     34                                       \
    -volume_tr                      2.0                                      \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh                                                                          \
    testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test005
set prefix=test005
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -phys_file                      physiopy/test005.tsv.gz                  \
    -phys_json                      physiopy/test005.json                    \
    -prefix                         test005                                  \
    -num_slices                     34                                       \
    -volume_tr                      2.0                                      \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh                                                                          \
    testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test007c
set prefix=test007c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -card_file                      physiopy/test007c                        \
    -prefix                         test007c                                 \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           50                                       \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test008c
set prefix=test008c
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorLauren.py                                        \
    -card_file                      physiopy/test008c                        \
    -prefix                         test008c                                 \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           50                                       \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/test007r
set prefix=test007r
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python                                                                       \
    ~/retroicor/retroicorLauren.py                                           \
    -resp_file                      physiopy/test007r                        \
    -prefix                         test007r                                 \
    -num_slices                     33                                       \
    -volume_tr                      2.2                                      \
    -freq                           50                                       \
    -rvt_out                        1                                        \
    -num_time_pts                   220                                      \
    -out_dir                        $outDir                                  \
    -prefix                         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile


# Set up file similarity regression test for this test set
set outDir=testDir/sub-005_ses-01_task-rest_run-1_physio-ECG
set prefix=sub-005_ses-01_task-rest_run-1_physio-ECG
set outPutFileName=$outDir/$prefix.slibase.1D
echo "Output SliBase file name = " $outPutFileName
rm -rf $outDir	# Remove directory which will be replaced

# Run ricor program
python ~/retroicor/retroicorLauren.py                                        \
    -card_file      physiopy/sub-005_ses-01_task-rest_run-1_physio-ECG.txt   \
    -resp_file      physiopy/sub-005_ses-01_task-rest_run-1_physio-Resp.txt  \
    -num_slices     33                                                       \
    -volume_tr      2.2                                                      \
    -freq           50                                                       \
    -rvt_out        1                                                        \
    -num_time_pts   220                                                      \
    -out_dir        $outDir                                                  \
    -prefix         $prefix


# Compare output SliBase file with known good file
csh testSlibaseOutput.csh                                                    \
    $outPutFileName                                                          \
    $prefix.slibase.1D                                                       \
    $fileConsistencyRegressionFile

#
# These fail due to bad data in the input
#python ~/retroicor/retroicorLauren.py -resp_file physiopy/test000r -card_file physiopy/test000c -prefix test000 -num_slices 33 -volume_tr 2.2 -freq 400   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -resp_file physiopy/test006r -prefix test006r -num_slices 33 -volume_tr 2.2 -freq 500   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test006c0 -prefix test006c0 -num_slices 33 -volume_tr 2.2 -freq 500   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test006c1 -prefix test006c1 -num_slices 33 -volume_tr 2.2 -freq 500   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test006c2 -prefix test006c2 -num_slices 33 -volume_tr 2.2 -freq 500   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test006c3 -prefix test006c3 -num_slices 33 -volume_tr 2.2 -freq 500   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -resp_file physiopy/test009r -prefix test009r -num_slices 33 -volume_tr 2.2 -freq 200   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test009c -prefix test009c -num_slices 33 -volume_tr 2.2 -freq 200   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -resp_file physiopy/test010r -prefix test010r -num_slices 33 -volume_tr 2.2 -freq 200   -rvt_out 1 -num_time_pts 220   
#python ~/retroicor/retroicorLauren.py -card_file physiopy/test010c -prefix test010c -num_slices 33 -volume_tr 2.2 -freq 200   -rvt_out 1 -num_time_pts 220   

