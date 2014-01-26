title.backgroundColor = "#ed8b9b"
labelColor = "#6CB7AB"
startColor = "#eddd8b"
goalColor = "#8beddd"
n = 5
stagenumber = 1
mirrorFlag = 0
borderType = 1
changeFlag = 0
Ti.include "property.js"
sound = Titanium.Media.createSound(
    url: 'sound/Kypabi.aif'
)
sound.play()
listener = ->
  [x,y]=[getX(@),getY(@)]
  toChange x,y, n-x-1,n-y-1
  clear(stagenumber) if clearCount >= n*n
for i in [0...n]
  for j in [0...n]
    label[i][j+3].addEventListener "touchstart",listener
