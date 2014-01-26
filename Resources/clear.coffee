clear = (stagenumber)->
  clearInterval(timerID)
  # titleButton.text = ""
  #resetButton.text = ""
  for k in [0...5]
    for l in [0...5]
      label[k][l+3].removeEventListener("touchstart",listener)
      label[k][l+3].flag = 0
  clearCount *= 0
  stagelabel.opacity = 0.0
  resetButton.opacity = 0.0
  titleButton.opacity = 0.0
  tapCountLabel.opacity = 0.0
  timerLabel.opacity = 0.0
  clearLabel.backgroundColor = goalColor
  timerLabel.flag = 0
  clearLabel.text = """CLEAR!!
  TAP:#{tapCountLabel.text}
  TIME:#{timerLabel.text}
  """
  tapCountLabel.text = 0
  timerLabel.text = "00:00"
  for k in [0...6]
    for l in [0...9]
      clearLabel.opacity = 1.0 if(k is 5 and l is 8)
      label[k][l].borderWidth = deviceWidth/96
      label[k][l].animate
        bottom:(deviceWidth/3)*(5-k)
        left:(deviceWidth/3)*(l-4)
        width:deviceWidth/3
        height:deviceWidth/3


  for k in [0...4]
    for l in [0...3]
      label[k+1][l+4].borderWidth = 0
      #label[5][4].addEventListener 'touchstart',totit
      #label[5][5].addEventListener 'touchstart',restart
      #label[5][6].addEventListener 'touchstart',next
  
if lflag is 0
  clearLabel = Ti.UI.createLabel
    bottom:deviceWidth/3
    left:0
    width:deviceWidth
    height:deviceHeight-deviceWidth/3
    backgroundColor:goalColor
    text:"CLEAR!!"
    textAlign:"center"
    verticalAlign:"TEXT_VERTICAL_ALIGNMENT_CENTER"
    color:title.backgroundColor
    font: { fontSize:pannelSize/1.5,fontFamily:"" }
    opacity:0.0
  view.add clearLabel
restart = ->
  clearLabel.opacity = 0.0
  for k in [0...6]
    for l in [0...9]
      label[k][l].borderWidth = deviceWidth/160
      #label[l][k].backgroundColor = startColor
      label[k][l].animate
        left:(deviceWidth/5)*(l-3)
        bottom:(deviceWidth/5)*(4-k)
        width:deviceWidth/5
        height:deviceWidth/5
        duration: 200
  Ti.include "stage#{stagenumber}.js"

next = ->
  if stagenumber is 25
    return 1
  clearLabel.opacity = 0.0
  for k in [0...6]
    for l in [0...9]
      label[k][l].borderWidth = deviceWidth/160
      #label[l][k].backgroundColor = goalColor
      #label[l][k].borderColor = title.backgroundColor
      label[k][l].animate
        left:(deviceWidth/5)*(l-3)
        bottom:(deviceWidth/5)*(4-k)
        width:deviceWidth/5
        height:deviceWidth/5
        duration: 200
  Ti.include "stage#{stagenumber+1}.js"

totit = ->
  clearLabel.opacity = 0.0
  for i in [0...6]
    for j in [0...9]
      label[i][j].borderWidth = deviceWidth/96
      label[i][j].animate
        bottom:(deviceWidth/3)*(3-i)
        left:(deviceWidth/3)*j
        width:deviceWidth/3
        height:deviceWidth/3


label[5][4].addEventListener 'touchstart',totit
label[5][5].addEventListener 'touchstart',restart
label[5][6].addEventListener 'touchstart',next
