title.backgroundColor = "#50000a"
labelColor = "#ff3c55"
startColor = "#21222d"
goalColor = "#3a4aff"
n = 5
stagenumber = 21
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
listener = ->
  [x,y]=[getX(@),getY(@)]
  if((count-1)%4 is 0)
    toChange x+k,y for k in [0...n-x]
    toChange n-1,y-k-1 for k in [0...y]
  if((count-1)%4 is 1)
    toChange x,y+k for k in [0...n-y]
    toChange x+k+1,n-1 for k in [0...n-x]
  if((count-1)%4 is 2)
    toChange x-k,y for k in [0..x]
    toChange 0,y+k+1 for k in [0...n-y]
  if((count-1)%4 is 3)
    toChange x,y-k for k in [0..y]
    toChange x-k-1,0 for k in [0..n-x]
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
