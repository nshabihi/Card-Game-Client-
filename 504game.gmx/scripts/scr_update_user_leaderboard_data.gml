//1,recentRank,1,1,1,hamLevelsRank,1
userLBData = argument0;
global.notificationOfTotalRankImprovement = 0;

global.userTotalRank      = real(userLBData[0]);
global.userLeagueScore    = real(userLBData[2]);
global.userLeagueRank     = real(userLBData[3]);
global.leagueRemainedTime = real(userLBData[4]);
global.userHamLevelsRank  = real(userLBData[6]);
global.rankUpTreshold     = real(userLBData[7]);

if(global.notifiOfTotalRank_login == false)
    if(global.userTotalRank_temp > global.userTotalRank)
    {
        global.totalRankImprovementAmount = global.userTotalRank_temp - global.userTotalRank;
        if(global.totalRankImprovementAmount >= global.rankUpTreshold)
            global.notificationOfTotalRankImprovement = 1;
    }
global.notifiOfTotalRank_login = false;

global.userTotalRank_temp       = global.userTotalRank;
global.userLeagueScore_temp     = global.userLeagueScore;
global.userLeagueRank_temp      = global.userLeagueRank;
global.leagueRemainedTime_temp  = global.leagueRemainedTime;
global.userHamLevelsRank_temp   = global.userHamLevelsRank;
