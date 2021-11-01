var toSplitString = argument0;
var splitter = argument2;
var result = "";

var gamesLength = string_length(toSplitString);

vcount = 0;
tempPart = "";

for(var i =1; i<= gamesLength; i++)
{
    var tempChar = string_char_at(toSplitString,i);
    if(tempChar != splitter)
    {
        tempPart += tempChar;
    }else
    {
        argument1[vcount] = tempPart;

        tempPart = "";
        vcount++;
    }
    
    tempChar = "";
}
if(gamesLength != 0)
argument1[vcount] = tempPart;

return argument1;
