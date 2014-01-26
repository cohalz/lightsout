title.backgroundColor = "#ffd7ae"
labelColor = "#9a4e00"
startColor = "#ff62b0"
goalColor = "#cf92b0"
n = 5
stagenumber = 18
mirrorFlag = 1
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y if((count-1)%4 is 0)
  toChange y,x if((count-1)%4 is 1)
  toChange n-1-x,n-1-y if((count-1)%4 is 2)
  toChange n-1-y,n-1-x if((count-1)%4 is 3)
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
