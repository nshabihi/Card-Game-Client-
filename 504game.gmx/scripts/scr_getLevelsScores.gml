var userGames     = argument0;
userGamesArray[0] = 0;
userGamesArray    = scr_between_comma_array(userGames,userGamesArray,",");
var count         = 0;
var tempLength    = array_length_1d(userGamesArray);

if(tempLength >=6)
{
    count = floor((tempLength-6) / 7) + 1;
}
var tempIndex = 0;

for(var i =0;i< 100; i++) // TODO : change 100!
{
    argument1[i] = 0;
}

for(var i =0;i < count; i++)
{
    argument1[real(userGamesArray[7*i])-1] = userGamesArray[7*i+1];
    tempIndex    = real(userGamesArray[7*i]);
}
         
 
global.indexOfLastLevel = real(tempIndex);

return argument1;
