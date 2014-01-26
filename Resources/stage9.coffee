title.backgroundColor = "#b7f4b7"
labelColor = "#f4b7b7"
startColor = "#fbcfcf"
goalColor = "#fcfbe3"
n = 5
stagenumber = 9
mirrorFlag = 1
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x-1,y if 0 <= (count-1)%8 < 2
  toChange x+1,y if 2 <= (count-1)%8 < 4
  toChange x,y-1 if 4 <= (count-1)%8 < 6
  toChange x,y+1 if 6 <= (count-1)%8 < 8
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
