best_time = 0;
subLevelCardsCnt = 0;
MCT = 0.3; //matchedCardsTime
UMCT = 1.2; //unMatchedCardsTime
for (i=1; i<8; i+=1)
{
best_time = 0;

if(i == 1 or i == 2 or i == 4)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , i);
    best_time += 3*((subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT);
}

if(i == 3)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , i) -2;
    best_time += 3* MCT;
    best_time = best_time + 3*((subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT);
}

if(i == 5)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , i);
    best_time = (subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT;
}

if(i == 6 or i == 7)
{
    subLevelCardsCnt = ds_map_find_value(global.subLevelCardNumber , i) -2;
    best_time += MCT;
    best_time = best_time + (subLevelCardsCnt/4)*UMCT + (subLevelCardsCnt/2)*MCT;

}


}
return best_time;
