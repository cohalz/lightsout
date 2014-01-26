colorBorder = "#888888"
colorBackground = "#cced8b"
color1 = "#8bcced"
color2 = "#edac8b"
win = Ti.UI.createWindow
  backgroundColor:colorBackground
view = Ti.UI.createView()
Ti.UI.iPhone.hideStatusBar()
num = 5
timerFlag = 0
timer = 0
startTime = 0
currentTime = 0
label = new Array(num*3)
for i in [0...num*3]
  label[i] = new Array(num*3)
deviceWidth = Ti.Platform.displayCaps.platformWidth
deviceHeight = Ti.Platform.displayCaps.platformHeight
pannelSize = deviceWidth/num
widthBorder = new Array(num-1)
heightBorder = new Array(num)
clearCount= 0
tapCountLabel = Ti.UI.createLabel
  right:deviceHeight/8
  top:deviceWidth/6
  text:0
  font: { fontSize:32 }
  color:colorBorder
for i in [0...num*3]
	for j in [0...num*3]
	  label[i][j] = Ti.UI.createLabel
		  flag:0
		  bottom:pannelSize*(i-num)
		  left:pannelSize*(j-num)
		  width:pannelSize
		  height:pannelSize
		  backgroundColor:color1
for i in [0...widthBorder.length]
	  widthBorder[i] = Ti.UI.createLabel
		  bottom:0
		  left:pannelSize*(i+1)
		  width:1
		  height:deviceWidth
		  backgroundColor:colorBorder
for i in [0...heightBorder.length]
	  heightBorder[i] = Ti.UI.createLabel
		  bottom:pannelSize*(i+1)
		  left:0
		  width:deviceWidth
		  height:1
		  backgroundColor:colorBorder
for i in [num...num*2]
	for j in [num...num*2]
	  view.add label[i][j]
for i in [0...widthBorder.length]
  view.add widthBorder[i]
for i in [0...heightBorder.length]
  view.add heightBorder[i]
view.add tapCountLabel
win.add view
win.open()
for i in [num...num*2]
	for j in [num...num*2]
		if label[i][j].addEventListener
			label[i][j].addEventListener "touchstart",(e)->
				if @flag is 0
					@backgroundColor = color2
					@flag=1
					clearCount++
				else
				  @backgroundColor=color1
				  @flag = 0
				  clearCount--
				tapCountLabel.text++
				for k in [num...num*2]
					for l in [num...num*2]
						if(@ is label[k][l])
							if label[k][l+1].flag is 0
							  label[k][l+1].flag = 1
							  label[k][l+1].backgroundColor = color2
							  clearCount++ unless l is 2*num-1
							else
							  label[k][l+1].flag = 0
							  label[k][l+1].backgroundColor = color1
							  clearCount-- unless l is 2*num-1
							if label[k][l-1].flag is 0
							  label[k][l-1].flag = 1
							  label[k][l-1].backgroundColor = color2
							  clearCount++ unless l is num
							else
							  label[k][l-1].flag = 0
							  label[k][l-1].backgroundColor = color1
							  clearCount-- unless l is num
							if label[k-1][l].flag is 0
							  label[k-1][l].flag = 1
							  label[k-1][l].backgroundColor = color2
							  clearCount++ unless k is num
							else
							  label[k-1][l].flag = 0
							  label[k-1][l].backgroundColor = color1
							  clearCount-- unless k is num
							if label[k+1][l].flag is 0
							  label[k+1][l].flag = 1
							  label[k+1][l].backgroundColor = color2
							  clearCount++ unless k is 2*num-1
							else
							  label[k+1][l].flag = 0
							  label[k+1][l].backgroundColor = color1
							  clearCount-- unless k is 2*num-1
							Ti.API.info clearCount
							if clearCount >= num*num
								alert "clear"
								clearCount = 0
								tapCountLabel.text = 0
								for i in [0...num*3]
									for j in [0...num*3]
										label[i][j].flag = 0
										label[i][j].backgroundColor = color1
