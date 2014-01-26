label = new Array(n)
label[i] = new Array(n) for i in [0...n]

for i in [0...n]
  for j in [0...n]
    label[i][j] = Ti.UI.createLabel
      flag:0
      bottom:pannelSize*i
      left:pannelSize*j
      width:pannelSize
      height:pannelSize
      backgroundColor:startColor
      text:""
      textAlign:"Ti.UI.TEXT_ALIGNMENT_CENTER"
      verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
      font: { fontSize:deviceWidth/4,fontFamily:"SimpleDirectionArrows" }
      color:colorBackground
      borderWidth:deviceWidth/160
      borderColor:colorBackground

for i in [0...n]
  for j in [0...n]
    view.add(label[i][j])

