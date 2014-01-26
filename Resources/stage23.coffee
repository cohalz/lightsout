title.backgroundColor = "#50000a"
labelColor = "#ff3c55"
startColor = "#d7daff"
goalColor = "#ff757f"
n = 5
stagenumber = 23
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y
  toChange x,y+1, x+1,y+1, x,y-1, x-1,y-1 if((count-1)%2 is 0)
  toChange x+1,y, x+1,y-1, x-1,y, x-1,y+1 if((count-1)%2 is 1)
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
