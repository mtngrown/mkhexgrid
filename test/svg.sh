#!/bin/sh

../mkhexgrid  --hex-width=100 --columns=1 --rows=1 --coord-size=8 --grid-grain=h\
  --image-margin=50 --coord-origin=ur -o output/1x1.svg --output=svg

../mkhexgrid  --hex-width=100 --columns=1 --rows=1 --coord-size=8 --grid-grain=h\
  --image-margin=50 --coord-origin=ur -o output/1x1_background.svg --output=svg --bg-color=cc44ee

../mkhexgrid  --hex-width=100 --columns=6 --rows=6 --coord-size=10 --grid-grain=h\
  --image-margin=50 --coord-origin=ur -o output/6x6_center_cross.svg --output=svg --center-style=c

../mkhexgrid  --hex-width=100 --columns=6 --rows=6 --coord-size=10\
  --image-margin=50 --coord-origin=ur -o output/6x6_center_cross_vgrain.svg --output=svg --center-style=c

../mkhexgrid  --hex-width=100 --columns=8 --rows=8 --coord-size=8 --grid-grain=h\
  --image-margin=50 --coord-origin=ur -o output/8x8_center_dot.svg --output=svg --center-style=d
