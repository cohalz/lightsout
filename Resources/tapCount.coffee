if lflag is 0
  tapCountLabel = Ti.UI.createLabel
    right:deviceHeight/12
    top:(deviceHeight-deviceWidth)/2
    text:0
    height:Ti.UI.SIZE
    width:Ti.UI.SIZE
    font: { fontSize:deviceWidth/9 }
    color:goalColor
    opacity:1.0
  count = 0
  view.add tapCountLabel
else
  tapCountLabel.color = goalColor
  tapCountLabel.backgroundColor = title.backgroundColor
