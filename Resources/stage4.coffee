title.backgroundColor = "#ed8b9b"
labelColor = "#6CB7AB"
startColor = "#b7f4b7"
goalColor = "#b7b7f4"
n = 5
stagenumber = 4
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  Ti.API.info clearCount
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x-1,y-1, x,y-1
  clear(stagenumber) if clearCount >= n*n

for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
