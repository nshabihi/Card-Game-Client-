tempArray = argument0;
toSearch  = argument1;

tempSize  = array_length_1d(tempArray);

for(var i=0; i< tempSize; i++)
{
    if(tempArray[i] == toSearch)
        return 1;
}

return 0;
