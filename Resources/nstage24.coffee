colorBackground = "#ed8b9b"
colorBorder = colorBackground
startColor = "#8beddd"
goalColor = "#eddd8b"
n = 5
mirrorFlag = 0
borderType = 1
changeFlag = 1
Ti.include "property.js"
for i in [0...n]
  for j in [0...n]
    label[i][j].addEventListener "touchstart",(e)->
      [x,y]=[getX(@),getY(@)]
      timeArray = timerLabel.text.split(":")
      second = parseInt(parseInt(timeArray[0])*60+parseInt(timeArray[1]))
      toChange second%5,parseInt((second%25)/5)
      clear(24) if clearCount >= n*n



