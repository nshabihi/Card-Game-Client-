var userGames = argument0;

var result = "";
resultArray[0] = 0;
resultArray = scr_between_comma_array(userGames,resultArray,",");


var vcount = 0;
var tempLength = array_length_1d(resultArray);
if(tempLength >=6)
{
    vcount = floor((tempLength-6) / 7) + 1;
}

var count = 0;

for(var i=0; i< vcount ;i++)
{
    result += resultArray[7*i+3];
    result += resultArray[7*i+4];
    result += resultArray[7*i+5];
    
    count += 3;
}

for(var j =0; j< 220 - count; j++)
{
    result += "3";
}

for (var i=0 ; i < string_length(result) ; i++)
    argument1[i] = real(string_copy(result , i+1 , 1 ));
for (i = string_length(result) ; i<220 ; i++)
    argument1[i] = 3;
    
return argument1;
