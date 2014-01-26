colorBorder = "#555"
colorBackground = "#5d8567"
startColor = "#85aa8e"
goalColor = "#855d7b"
n = 5
mirrorFlag = 0
Ti.include "property.js"
Ti.include "change.js"
Ti.include "label.js"
Ti.include "clear.js"
Ti.include "border.js"
Ti.include "tapCount.js"
Ti.include "toChange.js"
Ti.include "reset.js"
for i in [0...n]
  for j in [0...n]
    label[i][j].addEventListener "touchstart",(e)->
      [x,y]=[getX(@),getY(@)]
      toChange k,l,k,l-1,k,l+1,k-1,l,k+1,l
      toChange 0,0 if 0 <= (tapCountLabel.text-1)%8 < 2
      toChange 0,n-1 if 2 <= (tapCountLabel.text-1)%8 < 4
      toChange n-1,0 if 4 <= (tapCountLabel.text-1)%8 < 6
      toChange n-1,n-1 if 6 <= (tapCountLabel.text-1)%8 < 8
