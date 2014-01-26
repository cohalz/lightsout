win = Ti.UI.createWindow
  backgroundColor: '#cced8b'

view = Ti.UI.createView()
num=5
label = new Array(num)
widthBorder = new Array(num-1)
heightBorder = new Array(num)
for i in [0...num]
  label[i] = new Array(num)
deviceWidth = Ti.Platform.displayCaps.platformWidth
pannelSize = deviceWidth/num
for i in [0...num]
	for j in [0...num]
	  label[i][j] = Ti.UI.createLabel
		  flag:0
		  bottom:pannelSize*i
		  left:pannelSize*j
		  width:pannelSize
		  height:pannelSize
		  backgroundColor:"#8bcced"
for i in [0...widthBorder.length]
	  widthBorder[i] = Ti.UI.createLabel
		  bottom:0
		  left:pannelSize*(i+1)
		  width:1
		  height:deviceWidth
		  backgroundColor:"#888888"
for i in [0...heightBorder.length]
	  heightBorder[i] = Ti.UI.createLabel
		  bottom:pannelSize*(i+1)
		  left:0
		  width:deviceWidth
		  height:1
		  backgroundColor:"#888888"
for i in [0...num]
	for j in [0...num]
	  view.add label[i][j]
for i in [0...widthBorder.length]
  view.add widthBorder[i]
for i in [0...heightBorder.length]
  view.add heightBorder[i]
win.add view
win.open()
for i in [0...num]
	for j in [0...num]
		if label[i][j].addEventListener
			label[i][j].addEventListener "touchstart",(e)->
				if @flag is 0
				  @backgroundColor = "#edac8b"
				  @flag=1
				else
				  @backgroundColor="#8bcced"
				  @flag = 0

