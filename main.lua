local sheetData = { width=512, height=256, numFrames=8, sheetContentWidth=1024, sheetContentHeight=1024 }
 
  local mySheet = graphics.newImageSheet( "runningcat.png", sheetData )
 
  local sequenceData = {
    { name = "normalRun",  
    start = 1,  --starting frame index
    count = 8,  --total number of frames to animate consecutively before stopping or looping
    time = 800,  --optional, in milliseconds; if not supplied, the sprite is frame-based
    loopCount = 0,  --optional. 0 (default) repeats forever; a positive integer specifies the number of loops
    loopDirection = "forward"  --optional, either "forward" (default) or "bounce" which will play forward then backwards through the sequence of frames
  }  --if defining more sequences, place a comma here and proceed to the next sequence sub-table
 
}
 
local animation = display.newSprite( mySheet, sequenceData )
animation.x = display.contentWidth/2  --center the sprite horizontally
animation.y = display.contentHeight/2  --center the sprite vertically
 
animation:play()