getX = (labl) ->
  #Ti.API.info labl.left
  #Ti.API.info pannelSize
  #labl.left/pannelSize
  for i in [0...5]
    for j in [0...5]
      if labl is label[i][j+3]
        return j
getY = (labl) ->
  tapCountLabel.text++
  count++
  #if stagenumber > 1
  # win[stagenumber-1].close()
  #else
  #(labl.bottom/pannelSize-n)
  for i in [0...5]
    for j in [0...5]
      if labl is label[i][j+3]
        return i
