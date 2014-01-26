title.backgroundColor = "#ffd7ae"
labelColor = "#9a4e00"
startColor = "#ffb162"
goalColor = "#ff62b0"
n = 5
stagenumber = 17
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y
  toChange x,y+1, x-1,y+1 if((count-1)%4 is 0)
  toChange x-1,y, x-1,y-1 if((count-1)%4 is 1)
  toChange x,y-1, x+1,y-1 if((count-1)%4 is 2)
  toChange x+1,y, x+1,y+1 if((count-1)%4 is 3)
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
