if lflag is 0
  timerLabel = Ti.UI.createLabel
    flag:0
    text:"00:00"
    color:goalColor
    font: { fontSize:deviceWidth/12 }
    width:Ti.UI.SIZE
    height:Ti.UI.SIZE
    right:deviceHeight/12
    top:(deviceHeight-deviceWidth)/12
    backgroundColor:colorBackground
    opacity:1.0
  
  view.add timerLabel
  timerID = 0
timerLabel.flag = 0
for i in [0...5]
  for j in [0...5]
    label[i][j+3].addEventListener "touchstart",(e)->
      if timerLabel.flag is 0
        timerLabel.flag = 1
        start = new Date()
        hour = 0
        min = 0
        sec = 0
        now = 0
        datet = 0

        timerID = setInterval (->
          now = new Date()
          datet = parseInt((now.getTime() - start.getTime()) / 1000)
          hour = parseInt(datet / 3600)
          min = parseInt((datet / 60) % 60)
          sec = datet % 60
          hour = "0" + hour  if hour < 10
          min = "0" + min  if min < 10
          sec = "0" + sec  if sec < 10
          timerLabel.text = "" + min + ":" + sec
        ), 1000
timerLabel.color = goalColor
timerLabel.backgroundColor = title.backgroundColor
