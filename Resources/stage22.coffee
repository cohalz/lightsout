title.backgroundColor = "#50000a"
labelColor = "#ff3c55"
startColor = "#3a4aff"
goalColor = "#d7daff"
n = 5
stagenumber = 22
mirrorFlag = 1
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y if((count-1)%2 is 0)
  toChange y,x if((count-1)%2 is 1)
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
