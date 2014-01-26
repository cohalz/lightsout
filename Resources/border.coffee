if borderType is 0
  borderWidth = deviceWidth/80
else if borderType is 1
  borderWidth = (deviceWidth/80)/1.2
else
  borderWidth = deviceWidth/64

widthBorder = new Array(n)
heightBorder = new Array(n)

for i in [0..n]
  widthBorder[i] = Ti.UI.createLabel
    bottom:0
    left:pannelSize*i-(borderWidth/2)
    width:borderWidth
    height:deviceHeight
    backgroundColor:colorBorder

  heightBorder[i] = Ti.UI.createLabel
    bottom:pannelSize*i-(borderWidth/2)
    left:0
    width:deviceWidth
    height:borderWidth
    backgroundColor:colorBorder

    # view.add widthBorder[i]
    #view.add heightBorder[i]
