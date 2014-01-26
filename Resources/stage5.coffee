title.backgroundColor = "#ed8b9b"
labelColor = "#6CB7AB"
startColor = "#b7b7f4"
goalColor = "#855d7b"
n = 5
stagenumber = 5
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x-1,y, x+1,y if x isnt y
  toChange x,y if x is y
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
