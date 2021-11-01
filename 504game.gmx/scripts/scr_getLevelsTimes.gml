var userGames = argument0;
userGamesArray[0] = 0;
userGamesArray = scr_between_comma_array(userGames,userGamesArray,",");

var count = 0;
var tempLength =array_length_1d(userGamesArray);
if(tempLength >=6)
{
    count = floor((tempLength-6) / 7) + 1;
}

for(var i =0;i < count; i++)
{
    argument1[real(userGamesArray[7*i])-1] = real(userGamesArray[7*i+2]);
}
for(var i=count; i<100 ; i++)
{
    argument1[i] = 0;
}

/*var tempDebug = "";
for(var i =0;i < count; i++)
{
    tempDebug += result[i];
    tempDebug += ",";
}


*/
return argument1;
