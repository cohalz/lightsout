title.backgroundColor = "#b7f4f4"
labelColor = "#f4b7b7"
startColor = "#eddd8b"
goalColor = "#8bedbb"
n = 5
stagenumber = 15
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x+k,y for k in [0...n-x]
  toChange n-1,y-k-1 for k in [0...y]
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
