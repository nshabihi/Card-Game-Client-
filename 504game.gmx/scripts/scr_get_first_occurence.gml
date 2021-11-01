var arrayToTest = argument0;
var testOccur   = argument1;

//scr_show_array(arrayToTest);

var result = 0;
for(var i=(real(global.levelNum)-1)*7; i< array_length_1d(arrayToTest); i++)
{
    if(arrayToTest[i] == testOccur)
    {
        result = i - (real(global.levelNum)-1)*7 ;
        break;
    }
}

if(result == 0)
{
    result = array_length_1d(arrayToTest);
}

return result;
