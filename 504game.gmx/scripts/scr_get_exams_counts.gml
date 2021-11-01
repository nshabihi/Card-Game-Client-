var userExamsArray = argument0;

var count = floor(array_length_1d(userExamsArray) / 4);

for(var i=0 ; i< 100; i++)
{
    argument1[i] = 0;
}

for(var i=0 ; i< count; i++)
{
    argument1[real(userExamsArray[4*i]) -1 ] = userExamsArray[4*i + 2];
}



return argument1;
