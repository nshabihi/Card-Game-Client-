newScore= global.scoreDiff;
maxScore = ds_map_find_value(global.maxScore, real(global.subLevelNum));
prevScore = real(global.userGameScores[(real(global.levelNum)-1)*7+real(global.subLevelNum)-1]);
//scr_show_array(global.userGameScores);

if (prevScore == 0)
    scoreImprovement = newScore;
        
else if(newScore > prevScore)
    {
    scoreImprovement = newScore - prevScore;
    }
else
    scoreImprovement = 0;

result = scoreImprovement / maxScore;


return result;

/*
if(newTime < minTime*1.3)
    result = "best";
