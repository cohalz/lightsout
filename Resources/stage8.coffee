title.backgroundColor = "#b7f4b7"
labelColor = "#f4b7b7"
startColor = "#6d9717"
goalColor = "#00cffc"
n = 5
stagenumber = 8
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x-1,y, x+1,y
  toChange (count-1)%5,Math.floor((count-1)/5)%5
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
