title.backgroundColor = "#b7f4b7"
labelColor = "#f4b7b7"
startColor = "#855d7b"
goalColor = "#3d550d"
n = 5
stagenumber = 6
mirrorFlag = 0
borderType = 0
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, x,y-1, x,y+1 if x+1 isnt y
  toChange x,y if x+1 is y
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
