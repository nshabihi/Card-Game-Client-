best_time = 0;
subLevelCardsCnt = 0;
MCT = 0.3; //matchedCardsTime
UMCT = 1.2; //unMatchedCardsTime

if(real(global.subLevelNum) == 1 or real(global.subLevelNum) == 2 or real(global.subLevelNum) == 4)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , real(global.subLevelNum));
    best_time += 3*((subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT);
}

if(real(global.subLevelNum) == 3)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , real(global.subLevelNum)) -2;
    best_time += 3* MCT;
    best_time = best_time + 3*((subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT);
}

if(real(global.subLevelNum) == 5)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , real(global.subLevelNum));
    best_time = (subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT;
}

if(real(global.subLevelNum) == 6 or real(global.subLevelNum) == 7)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , real(global.subLevelNum)) -2;
    best_time += MCT;
    best_time = best_time + (subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT;
}


return best_time;
