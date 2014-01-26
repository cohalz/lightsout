title.backgroundColor = "#ed8b9b"
labelColor = "#6CB7AB"
startColor = "#f4b7c1"
goalColor = "#b7f4b7"
n = 5
stagenumber = 3
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  Ti.API.info x
  Ti.API.info y
  toChange x,y, x-1,y, x+1,y
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener

