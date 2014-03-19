local sheetData = { width=512, height=256, numFrames=8, sheetContentWidth=1024, sheetContentHeight=1024 }
 
  local mySheet = graphics.newImageSheet( "runningcat.png", sheetData )
 
  local sequenceData = {
    { name = "normalRun",  
    start = 1,  
    count = 8,  
    time = 800,  
    loopCount = 0,  
    loopDirection = "forward"  
  }  
}
 
local animation = display.newSprite( mySheet, sequenceData )
animation.x = display.contentWidth/2  
animation.y = display.contentHeight/2 
animation:play()
