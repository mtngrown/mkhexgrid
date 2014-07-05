#!/bin/bash

source ./bashcolors.sh
initializeANSI

echo
echo $cyanf"# Integration testing for mkhexgrid"
echo

source ./svg.sh

function test_svg() {



  results=`diff $1 $2`
  if [[ $results ]] ; then
    echo $redf"failed $1: diff results in $results"
  else
    echo $greenf"passed $1"
  fi
}


control="./fixtures/1x1.svg"
output="./output/1x1.svg"
test_svg $control $output

control="./fixtures/1x1_background.svg"
output="./output/1x1_background.svg"
test_svg $control $output

control="./fixtures/6x6_center_cross.svg"
output="./output/6x6_center_cross.svg"
test_svg $control $output

control="./fixtures/8x8_center_dot.svg"
output="./output/8x8_center_dot.svg"
test_svg $control $output

echo
