scoreProportion = argument0;
starCnts        = 0;
if(scoreProportion > 7/8)
    starCnts = 3;
else if(scoreProportion > 5/8)
    starCnts = 2;
else if(scoreProportion > 3/8)
    starCnts = 1;

for (i=0; i<starCnts; i+=1)
    global.threeStarMemory[i] = 0;
for (i=starCnts ; i<3; i+=1)
    global.threeStarMemory[i] = 1;
