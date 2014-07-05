#!/bin/bash

source ./bashcolors.sh
initializeANSI

echo
echo $cyanf"# Integration testing for mkhexgrid"
echo

source ./svg_1x1.sh

function test_svg() {

  results=`diff $1 $2`
  if [[ $results ]] ; then
    echo $redf"failed $1: diff results in $results"
  else
    echo $greenf"passed $1"
  fi
}


control="./fixtures/1x1.svg"
output="./output/output_1x1.svg"
test_svg $control $output

echo
