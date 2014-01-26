a =1
change = (x,y)->
  Ti.API.info x
  Ti.API.info y
  n = 5
  if 3 <= x < n+3 and 0 <= y < n
    if label[y][x].flag is 0
      label[y][x].backgroundColor = goalColor
      label[y][x].flag = 1
      clearCount++
    else if changeFlag is 1
      label[y][x].backgroundColor = startColor
      label[y][x].flag = 0
      clearCount--
  else if mirrorFlag is 1
    change x,y+n if y < 0
    change x,y-n if y >= n
    change x+n,y if x < 0+3
    change x-n,y if x >= n+3

  else if mirrorFlag is 2
    change x,y+n if y < 0
    change x,y-n if y >= n

  else if mirrorFlag is 3
    change x+n,y if x < 0+3
    change x-n,y if x >= n+3

  else if mirrorFlag is 4
    change x,n-y-1 if y < 0
    change x,2*n-y-1 if y >= n
    change n-x-1,y if x < 0+3
    change 2*n-x-1,y if x >= n+3

  else if mirrorFlag is 5
    change x,n-y-1 if y < 0
    change x,2*n-y-1 if y >= n

  else if mirrorFlag is 6
    change n-x-1,y if x < 0+3
    change 2*n-x-1,y if x >= n+3

  else if mirrorFlag is 7
    change x,n-y-1 if y < 0
    change x,2*n-y-1 if y >= n
    change x+n,y if x < 0+3
    change x-n,y if x >= n+3

  else if mirrorFlag is 8
    change x,y+n if y < 0
    change x,y-n if y >= n
    change n-x-1,y if x < 0+3
    change 2*n-x-1,y if x >= n+3
