title.backgroundColor = "#ed8b9b"
startColor = "#8beddd"
goalColor = "#f4b7c1"
labelColor = "#6CB7AB"
stagenumber = 2
n = 5
mirrorFlag = 0
borderType = 1
changeFlag = 0
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x+k,y-k for k in [0...n-x]
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
