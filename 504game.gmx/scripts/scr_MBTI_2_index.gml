global.personalityTypeNum = 0;  

if(string_length(global.userPersonality) == 4)
{
    t1 = string_copy(global.userPersonality , 1 , 1);
    t2 = string_copy(global.userPersonality , 2 , 1);
    t3 = string_copy(global.userPersonality , 3 , 1);
    t4 = string_copy(global.userPersonality , 4 , 1);  
     
    if (t1 == "I")
        global.personalityTypeNum+=8;
    
    if(t2 == "S")
        global.personalityTypeNum+=4;
    
    if(t3 == "T")
        global.personalityTypeNum+=2;
    
    if(t4 == "P")
        global.personalityTypeNum+=1;
}
     
    
return global.personalityTypeNum;  
