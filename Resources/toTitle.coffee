if lflag is 0
  titleButton = Ti.UI.createLabel
    text:"←"
    font: { fontSize:deviceWidth/6 }
    color:goalColor
    top:-20
    left:0
    width:deviceWidth/4
    height:(deviceHeight-deviceWidth)/2
    textAlign:"center"
    verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
    backgroundColor:colorBackground
    opacity:1.0
  titleButton.addEventListener  "touchstart",(e)->
    clearInterval(timerID)
    stagelabel.opacity = 0.0
    resetButton.opacity = 0.0
    titleButton.opacity = 0.0
    tapCountLabel.opacity = 0.0
    timerLabel.opacity = 0.0
    timerLabel.text = "00:00"
    tapCountLabel.text = 0
    clearCount *= 0
    timerLabel.flag = 0
    for i in [0...5]
      for j in [0...5]
        label[i][j+3].removeEventListener("touchstart",listener)
        label[i][j+3].flag = 0
    for i in [0...6]
      for j in [0...9]
        label[i][j].borderWidth = deviceWidth/96
        if Ti.Platform.osname is "android"
          label[i][j].bottom = (deviceWidth/3)*(3-i)
          label[i][j].left = (deviceWidth/3)*j
          label[i][j].width = deviceWidth/3
          label[i][j].height = deviceWidth/3
        else
          label[i][j].animate
            bottom:(deviceWidth/3)*(3-i)
            left:(deviceWidth/3)*j
            width:deviceWidth/3
            height:deviceWidth/3
  
  view.add titleButton
else
  titleButton.color = goalColor
  titleButton.backgroundColor = title.backgroundColor

