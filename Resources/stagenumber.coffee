if lflag is 0
  stagelabel = Ti.UI.createLabel
    text:"STAGE:#{stagenumber}"
    font: { fontSize:deviceWidth/16 }
    top:20
    left:deviceWidth/4
    width:deviceWidth/3
    color:goalColor
    height:deviceWidth/9
    textAlign:"center"
    verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
    backgroundColor:colorBackground
    opacity:1.0
  
  view.add stagelabel
else
  stagelabel.text = "STAGE:#{stagenumber}"
  stagelabel.backgroundColor = title.backgroundColor
  stagelabel.color = goalColor
