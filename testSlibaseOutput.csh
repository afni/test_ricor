set testFileNameWithSearchPath = $1
set testFileNameWithoutSearchPath = $2
set fileConsistencyRegressionFile = $3
echo "Test file name with search path = " $testFileNameWithSearchPath >>$fileConsistencyRegressionFile
echo "Test file name without search path = " $testFileNameWithoutSearchPath >>$fileConsistencyRegressionFile
set refFileName=goodResults/$testFileNameWithoutSearchPath
echo "Ref file name = " $refFileName >>$fileConsistencyRegressionFile
set numLinesOfDifference=`diff $testFileNameWithSearchPath $refFileName | wc -l`
if ($numLinesOfDifference == 0) then
    echo "Output file the same as reference" >>$fileConsistencyRegressionFile
else
    echo "Output file differs from reference" >>$fileConsistencyRegressionFile
    # echo "Number of lines of difference = " $numLinesOfDifference >>$fileConsistencyRegressionFile
    echo "Differences: < represents Test, > represents Reference" >> $fileConsistencyRegressionFile
    diff $testFileNameWithSearchPath $refFileName >>$fileConsistencyRegressionFile
endif
echo '-----------------------------------------------------------' >>$fileConsistencyRegressionFile
