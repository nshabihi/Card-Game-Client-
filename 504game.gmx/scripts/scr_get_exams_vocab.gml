var userExamsArray = argument0;
//2,Keen,1,700,3,Data,3,1010,userData,11580,4
var count = floor(array_length_1d(userExamsArray) / 4);

for(var i=0 ; i< count; i++)
{
    argument1[real(userExamsArray[4*i])-1] = userExamsArray[4*i + 1];
}

return argument1;
