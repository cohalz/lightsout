
title = Ti.UI.createWindow
  backgroundColor:"#ed8b9b"
colorBackground = title.backgroundColor
title.orientationModes = [Ti.UI.PORTRAIT]
view = Ti.UI.createView()
n = 9
lflag = 0
stagenumber = 0
deviceWidth = Ti.Platform.displayCaps.platformWidth
deviceHeight = Ti.Platform.displayCaps.platformHeight
pannelSize = deviceWidth/3
barsizex = 0
switch Ti.Platform.osname
  when 'iphone'
    barsizex = (deviceWidth/320)
  when  'ipad'
    barsizex = (deviceWidth/768)
    
labelColor = "#6CB7AB"
title.add view
title.open({fullscreen:true})

label = new Array(n-3)
label[i] = new Array(n) for i in [0...n]

for i in [0...n-3]
  for j in [0...n]
    label[i][j] = Ti.UI.createLabel
      flag:0
      text:""
      color:labelColor
      bottom:pannelSize*(3-i)
      left:pannelSize*j
      width:pannelSize
      height:pannelSize
      textAlign:"center"
      verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
      backgroundColor:"#eddd8b"
      borderWidth:pannelSize/32
      borderColor:colorBackground
      font: { fontSize:pannelSize/3,fontFamily:"" }
      wordWrap : false
    view.add label[i][j]

for i in [0...4]
  for j in [0...3]
    if(i isnt 3)
      label[i][j].text = 3*i+j+1
    else
      label[i][j].setFont({fontSize:pannelSize/2,fontFamily : "SimpleDirectionArrows"})
label[3][0].text = "b"
#label[3][1].text = "x"
label[3][2].text = "n"

label[3][0].addEventListener 'touchstart',(e)->
  if(label[0][0].text isnt 1)
    for j in [0...3]
      for k in [0...3]
        label[j][k].text -= 9

label[3][2].addEventListener 'touchstart',(e)->
  if(label[0][0].text isnt 37)
    for j in [0...3]
      for k in [0...3]
        label[j][k].text += 9

label[5][i+4].setFont({fontSize:pannelSize/1.5,fontFamily : "SimpleDirectionArrows"}) for i in [0...3]
label[5][4].text = "v"
label[5][5].text = "1"
label[5][6].text = "g"
###a = 22.5
for i in [0...n]
  for j in [0...n]
    label[i][j].borderWidth *= a
    label[i][j].animate
      left:(pannelSize*a)*(j-2)-(label[i][j].borderWidth*a*3)
      top:(pannelSize*a)*(j-5)-(label[i][j].borderWidth*a*3)
      width:pannelSize*a
      height:pannelSize*a
      duration: 200###

Ti.API.info 'aaaaa'
for i in [0...3]
  for j in [0...3]
    label[i][j].addEventListener 'touchstart',(e)->
      if @text > 25
        return 1
      for k in [0...6]
        for l in [0...9]
          label[k][l].borderWidth = deviceWidth/160
          if Ti.Platform.osname is "android"
            label[k][l].left = (deviceWidth/5)*(l-3)
            label[k][l].bottom = (deviceWidth/5)*(4-k)
            label[k][l].width = deviceWidth/5
            label[k][l].height = deviceWidth/5
          else
            label[k][l].animate
              left:(deviceWidth/5)*(l-3)
              bottom:(deviceWidth/5)*(4-k)
              width:deviceWidth/5
              height:deviceWidth/5
              duration: 200

      Ti.include "stage#{@text}.js"
