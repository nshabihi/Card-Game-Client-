tempTime = argument0 mod 3600;
calcType = real(argument1);

var result = "";

if(calcType == 0)
{
    tempDay = string(floor(argument0 / (3600*24)));
    
    var temp = floor(argument0 / 3600) - real(tempDay) * 24;
    tempHour = "";
    
    if(temp < 10)
        tempHour += ("0" + string(temp));
    else
        tempHour += string(temp);
}







if(tempTime < 10)
{
    result = "00:0" + string(tempTime);
}
else if(tempTime >= 10 and tempTime < 60)
{
    result = "00:" + string(tempTime);    
}
else if(tempTime >= 60 and tempTime < 600)
{
    tempResult  = "0";
    tempResult += string(floor(tempTime / 60)) + ":";
    if(floor(tempTime mod 60) >= 10)
    {
        tempResult += string(floor(tempTime mod 60));
    }
    else
    {
        tempResult += "0" + string(floor(tempTime mod 60));    
    }
    
    result =  tempResult;
}else
{
    tempResult = "";
    tempResult += string(floor(tempTime / 60)) + ":";
    
    if(floor(tempTime mod 60) >= 10)
    {
        tempResult += string(floor(tempTime mod 60));
    }
    else
    {
        tempResult += "0" + string(floor(tempTime mod 60));    
    }    
    
    result =  tempResult;
}

tempMin = string_copy(result,1 , 2);
tempSecond = string_copy(result,4 , 2);
if(calcType == 0)
{
    return tempDay + ":" + tempHour + ":" + tempMin + ":" + tempSecond;
}else
{
    return result;
}
