newTime= 0;
prevTime = 0.1 * real(global.userGameTimes[(real(global.levelNum)-1)*7+real(global.subLevelNum)-1]);

for (i=0; i<3; i+=1)
{
    newTime += global.miniGameTime[i];
}
maxTime = ds_map_find_value(global.maxTime, real(global.subLevelNum));
minTime = ds_map_find_value(global.minTime, real(global.subLevelNum));
totalRange = maxTime - minTime;

if (prevTime == 0 or prevTime > maxTime)
    if(newTime < maxTime)
        timeImprovement = maxTime - newTime;
    else
        timeImprovement = 0;
        
else if(prevTime<=maxTime)
    if(newTime < prevTime)
        timeImprovement = prevTime - newTime;
    else
        timeImprovement = 0;
        
  
result  = timeImprovement / totalRange;


return result;
/*
if(newTime < minTime*1.3)
    result = "best";
