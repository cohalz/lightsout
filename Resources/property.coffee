#deviceWidth = Ti.Platform.displayCaps.platformWidth
#deviceHeight = Ti.Platform.displayCaps.platformHeight
#pannelSize = deviceWidth/n
#widthBorder = new Array(n)
#heightBorder = new Array(n)
clearCount= 0
#win = Ti.UI.createWindow
#  backgroundColor:colorBackground
pannelSize = deviceWidth/5

#win.orientationModes = [Ti.UI.PORTRAIT]
#view = Ti.UI.createView()
#for i in [0...9]
#  for j in [0...9]
#    label[i][j].left = (deviceWidth/5)*(j-3)
#    label[i][j].top = deviceHeight-deviceWidth+(deviceWidth/5)*i-20*(deviceWidth/320)
#    label[i][j].width = deviceWidth/5
#    label[i][j].height = deviceWidth/5
#switch Ti.Platform.osname
#  when 'iphone','ipad'
#    Ti.UI.iPhone.hideStatusBar()

#win.add view
#win.open()
for i in [0...6]
  for j in [0...9]
    label[i][j].backgroundColor = startColor
    label[i][j].borderColor = title.backgroundColor
    label[i][j].color = labelColor
    if 0 <= i <= 4 and 0 <= j <= 4
      label[i][j+3].removeEventListener("touchstart",listener) if lflag isnt 0
      label[i][j+3].flag = 0
      #for i in [0...5]
      #for j in [0...5]
      #label[i][j+3].removeEventListener("touchstart",listener) if lflag isnt 0
      #label[i][j+3].flag = 0
#Ti.include "label.js"
#Ti.include "border.js"
Ti.include "clear.js"
Ti.include "change.js"
Ti.include "tapCount.js"
Ti.include "toChange.js"
Ti.include "reset.js"
Ti.include "toTitle.js"
Ti.include "getPosition.js"
Ti.include "timer.js"
Ti.include "stagenumber.js"
#Ti.include "score.js"
#Ti.include "brightness.js"
titleButton.backgroundColor = title.backgroundColor
resetButton.backgroundColor = title.backgroundColor
stagelabel.backgroundColor = title.backgroundColor
stagelabel.opacity = 1.0
resetButton.opacity = 1.0
titleButton.opacity = 1.0
tapCountLabel.opacity = 1.0
timerLabel.opacity = 1.0
if lflag isnt 0
  label[5][4].removeEventListener("touchstart",totit)
  label[5][5].removeEventListener("touchstart",restart)
  label[5][6].removeEventListener("touchstart",next)
  clearInterval(timerID)
  timerLabel.text = "00:00"
lflag++
resetButton.fireEvent("touchstart")

