brightness = (color)->
  colorString = color.substr(1)
  colorArray = new Array(3)
  resultColor = "#"
  for i in [0...3]
    colorArray[i] = "0x#{colorString.substr(i*2,2)}"
    resultColor += (colorArray[i]-(-Math.floor((0xff-colorArray[i])/64))).toString(16)
    Ti.API.info(colorArray[i]-(-Math.floor((0xff-colorArray[i])/64)))
  return resultColor
