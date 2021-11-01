minutesToEndOfLeague = floor(real(global.leagueRemainedTime) / (60));
tempNotifiDate = date_inc_minute(date_current_datetime(), minutesToEndOfLeague);
tempNotifiDay = date_get_day(tempNotifiDate); 
tempNotifiMonth = date_get_month(tempNotifiDate);
    

lastNotificationMonth = -1;
lastNotificationDay = -1;
setNotification = 0;
if(file_exists("game504Data.ini"))
{
    ini_open("game504Data.ini");
    lastNotificationMonth   = ini_read_real("notification" , "leagueNotifM" , -1);
    lastNotificationDay     = ini_read_real("notification" , "leagueNotifD" , -1)
    ini_close();
}

if(lastNotificationMonth != -1)
{
    if(tempNotifiDay == lastNotificationDay)
    {
        if(tempNotifiMonth == lastNotificationMonth)
        {
            //nothing
        }
        else
        {
            setNotification = 1;
        }
    }
    else
    {
        setNotification = 1;
    }        
}else
{
    setNotification = 1;
}

if(setNotification == 1)
{

    requiredMins = minutesToEndOfLeague - 2*60; 

    ini_open("game504Data.ini");
    ini_write_real("notification" , "leagueNotifM" , tempNotifiMonth);
    ini_write_real("notification" , "leagueNotifD" , tempNotifiDay);
    ini_close();
    
    requiredMins = minutesToEndOfLeague - 2*60; // minutes from now until two hours befor the end of league
    var notificationOfLeagueEnd = date_inc_minute(date_current_datetime(), requiredMins);
    //date_inc_day(date_current_datetime(), 1);
    var data = "league";
    push_local_notification(notificationOfLeagueEnd, "League Countdown!", "2 hours remained till the end of league.", data);
}
