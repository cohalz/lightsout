if lflag is 0
  resetButton = Ti.UI.createLabel
    text:"RESET"
    font: { fontSize:deviceWidth/9 }
    color:goalColor
    top:(deviceHeight-deviceWidth)/2-20
    left:0
    width:deviceWidth/2
    height:(deviceHeight-deviceWidth)/2
    textAlign:"center"
    verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
    backgroundColor:colorBackground
    opacity:1.0
  resetButton.addEventListener "touchstart",(e)->
    clearCount *= 0
    count *= 0
    for i in [0...n]
      for j in [0...n]
        label[i][j+3].flag = 0
        label[i][j+3].backgroundColor = startColor
  
  view.add resetButton
else
  resetButton.color = goalColor
  resetButton.backgroundColor = title.backgroundColor
