title.backgroundColor = "#b7f4f4"
labelColor = "#f4b7b7"
startColor = "#00b4ff"
goalColor = "#41d921"
n = 5
stagenumber = 11
mirrorFlag = 1
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y+1   if(count-1)%16 is 0
  toChange x+1,y+1 if(count-1)%16 is 1
  toChange x+1,y   if(count-1)%16 is 2
  toChange x+1,y-1 if(count-1)%16 is 3
  toChange x,y-1   if(count-1)%16 is 4
  toChange x-1,y-1 if(count-1)%16 is 5
  toChange x-1,y   if(count-1)%16 is 6
  toChange x-1,y+1 if(count-1)%16 is 7
  toChange x-1,y+1 if(count-1)%16 is 8
  toChange x-1,y   if(count-1)%16 is 9
  toChange x-1,y-1 if(count-1)%16 is 10
  toChange x,y-1   if(count-1)%16 is 11
  toChange x+1,y-1 if(count-1)%16 is 12
  toChange x+1,y   if(count-1)%16 is 13
  toChange x+1,y+1 if(count-1)%16 is 14
  toChange x,y+1   if(count-1)%16 is 15
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
