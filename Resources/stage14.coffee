title.backgroundColor = "#b7f4f4"
labelColor = "#f4b7b7"
startColor = "#5fe6d0"
goalColor = "#eddd8b"
n = 5
stagenumber = 14
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x-1,y, x+1,y
  toChange x,y+1 if (count-1)%2 is 0
  toChange x,y-1 if (count-1)%2 is 1
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
