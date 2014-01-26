push = (stagenumber) ->
  for i in [0...n]
    for j in [0...n]
      label[i][j].addEventListener "touchstart",(e)->
        tapCountLabel.text++
        [x,y]=[getX(@),getY(@)]
        clear(stagenumber) if clearCount >= n*n
        return positionArray = [x,y]
