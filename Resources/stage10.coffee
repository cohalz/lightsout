title.backgroundColor = "#b7f4b7"
labelColor = "#f4b7b7"
startColor = "#eeeeee"
goalColor = "#00b4ff"
n = 5
stagenumber = 10
mirrorFlag = 1
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y+1   if(count-1)%8 is 0
  toChange x+1,y+1 if(count-1)%8 is 1
  toChange x+1,y   if(count-1)%8 is 2
  toChange x+1,y-1 if(count-1)%8 is 3
  toChange x,y-1   if(count-1)%8 is 4
  toChange x-1,y-1 if(count-1)%8 is 5
  toChange x-1,y   if(count-1)%8 is 6
  toChange x-1,y+1 if(count-1)%8 is 7
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
