###aBorder = Ti.UI.createLabel
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
  ###
