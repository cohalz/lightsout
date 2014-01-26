toChange = (changeArray...)->
  for i in [0...changeArray.length] by 2
    change(changeArray[i]+3,changeArray[i+1])
