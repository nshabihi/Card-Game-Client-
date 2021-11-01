index = argument0;
randNList = argument1;
flag = false;
totalSum = 0;
NOUSC = 0;  //number of un selected cards
n = (real(ds_map_find_value(global.subLevelVocabsNum , real(global.subLevelNum))));

for (i=0 ; i<n ; i++)
{
    flag = false;
    for(j= 0 ; j<(global.levelCardsN+1) ; j++)
    {
        if (randNList[j] == i)
        {
            flag = true;
        }
    }
    if(flag == false)
    {
        totalSum = totalSum + global.cardAppearFreq[(real(global.levelNum)-1)*7 + i];
        NOUSC ++;
    }
}

meanFreq = totalSum / NOUSC  ;


if(global.cardAppearFreq[(real(global.levelNum)-1)*7 + index] > meanFreq)
    result = 1;
else
    result = 0;

return result;
