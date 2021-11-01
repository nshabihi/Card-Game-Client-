var newBadges = argument0;
global.badgeCount = real(string_copy(newBadges , 1 , 2));
newBadges = string_copy (newBadges ,4,string_length(newBadges)-3);

userBadgesArray[0] = "null";
userBadgesArray    = scr_between_comma_array(newBadges,userBadgesArray,",");

for(var i = 0 ; i< real(global.badgeCount) ;i++)
{
   global.userBadges[i] = 0;
}
////badges from server
if(userBadgesArray[0] != "null")
    for(var i = 0; i < array_length_1d(userBadgesArray); i++)
    {
        global.userBadges[real(userBadgesArray[i])-1] = 1;
    }

//this is not login
if(global.firstBadgeUpdate_login == false)
{

    for(var i = 0; i < global.badgeCount; i++)   
        if(global.userBadgeTemp[i] < global.userBadges[i])
            global.userBadgeGained[i] = 1;
            

}
else //login
{
    inFileBadgeList = "0";
    if(file_exists("game504Data.ini"))
    {
        ini_open("game504Data.ini");
        //badges from file
        inFileBadgeList = ini_read_string('userBadges' , 'badgeList' , "0");
        ini_close();
    }
    
    if(string_length(inFileBadgeList) == 1)
        for(var i = 0; i < real(global.badgeCount); i++)  
            userFileBadges[i] = 0;
    else
        for(var i = 0; i < real(global.badgeCount); i++)  
            userFileBadges[i] = real(string_copy(inFileBadgeList , i+1 , 1));
            
    for(var i = 0; i < real(global.badgeCount); i++)    
        if(userFileBadges[i] < global.userBadges[i])
            global.userBadgeGained[i] = 1;       
}  

for(var i = 0; i < real(global.badgeCount); i++)    
    global.userBadgeTemp[i] = global.userBadges[i];
    
global.firstBadgeUpdate_login = false; 

stringOfBadges = "";
for(i=0 ; i<real(global.badgeCount) ; i++)
    stringOfBadges += string(global.userBadges[i]);
    
if(file_exists("game504Data.ini"))
{
    ini_open("game504Data.ini");
    ini_write_string('userBadges' , 'badgeList' , stringOfBadges);
    ini_close();
}

global.userBadgeGained[4]   = 0;
global.userBadgeGained[8]   = 0;
global.userBadgeGained[12]  = 0;
global.userBadgeGained[17]  = 0;
global.userBadgeGained[19]  = 0;
