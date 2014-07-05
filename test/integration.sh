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


function test_loop() {
  control="./fixtures/$1"
  output="./output/$1"
  test_svg $control $output
}

test_loop "1x1.svg"
test_loop "1x1_background.svg"
test_loop "6x6_center_cross.svg"
test_loop "8x8_center_dot.svg"
test_loop '6x6_center_cross_vgrain.svg'

echo
