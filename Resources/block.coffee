block = new Array(n)
block[i] = new Array(n) for i in [0...n]
for i in [0...n]
  for j in [0...n]
    block[i][j] = Ti.UI.createLabel
    aBorder = Ti.UI.createLabel
      bottom:(pannelSize-borderWidth)/2
      left:-pannelSize*(Math.sqrt(2)-1)/2
      width:pannelSize*Math.sqrt(2)
      height:borderWidth
      backgroundColor:colorBorder
      transform: Ti.UI.create2DMatrix().rotate(45)

    bBorder = Ti.UI.createLabel
      bottom:(pannelSize-borderWidth)/2
      left:-pannelSize*(Math.sqrt(2)-1)/2
      width:pannelSize*Math.sqrt(2)
      height:borderWidth
      backgroundColor:colorBorder
      transform: Ti.UI.create2DMatrix().rotate(-45)



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

for i in [0...n]
  for j in [0...n]
    view.add(block[i][j])

