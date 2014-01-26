title.backgroundColor = "#b7f4b7"
labelColor = "#f4b7b7"
startColor = "#3d550d"
goalColor = "#6d9717"
n = 5
stagenumber = 7
mirrorFlag = 1
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x,y+1, x,y+2, x,y+3 if x isnt y
  toChange x,y if x is y
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
