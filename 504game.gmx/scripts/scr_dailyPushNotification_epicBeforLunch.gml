numberOfNotifications = 3;
for(i=0 ; i<numberOfNotifications ; i++)
    setNotification[i] = 0;

notifiText[0] = "Hey! Kingfisher is pecking sailor's books, help!";
notifiText[1] = "Turtles are swimming all together, join them!";
notifiText[2] = "Take a look! Starfishers found something in the island!";
notifiText[3] = "Where are you?! Flamingos are migrating without even saying goodbye!";
notifiText[4] = "Crabs are fighting, come and help to break them up!";

lastNotificationDate_year   = "-1";
lastNotificationDate_month  = "-1";
lastNotificationDate_day    = "-1";

if(file_exists("game504Data.ini"))
{
    ini_open("game504Data.ini");
    lastNotificationDate_year       = ini_read_string("dailyNotification" , "lastNotificationDate_year" , "-1");
    lastNotificationDate_month      = ini_read_string("dailyNotification" , "lastNotificationDate_month" , "-1");
    lastNotificationDate_day        = ini_read_string("dailyNotification" , "lastNotificationDate_day" , "-1");
    ini_close();
}

currentTime = date_current_datetime();
year = real(date_get_year(currentTime));
month = real(date_get_month(currentTime));
day = real(date_get_day(currentTime));
fakeTodayDate = date_create_datetime(year, month, day, 18 , 0 , 0);

if(lastNotificationDate_year != "-1")
{
    lastNotificationDate = date_create_datetime(real(lastNotificationDate_year), real(lastNotificationDate_month), real(lastNotificationDate_day), 18 , 0 , 0);
    for(i=0 ; i<numberOfNotifications ; i++)
    {
        if(date_compare_datetime(lastNotificationDate, date_inc_day(fakeTodayDate , i+1)) == -1)
        {
            setNotification[i] = 1;
        }
    }
}
else 
{
    for(i=0 ; i<numberOfNotifications ; i++)
    {
        setNotification[i] = 1;
    }
}

setNotifi = 0;
for(i=0 ; i<numberOfNotifications ; i++)
{
    setNotifi += setNotification[i];
}

if(setNotifi > 0)
{

    for(i=0 ; i<numberOfNotifications ; i++)
    {
        if(setNotification[i] == 1)
        {
            setNotification[i] = 0;
            var fireTime = date_inc_day(fakeTodayDate, i+1);
            var data = "daily_practice";
            randomize();
            r = irandom(4);
            message = notifiText[r];
            push_local_notification(fireTime, "Rememry Time!", message, data);
        }
    }

    ini_open("game504Data.ini");
    lastDate = date_inc_day(fakeTodayDate , 3)
    year = real(date_get_year(lastDate));
    month = real(date_get_month(lastDate));
    day = real(date_get_day(lastDate));
    ini_write_string("dailyNotification" , "lastNotificationDate_year" , string(year));
    ini_write_string("dailyNotification" , "lastNotificationDate_month" , string(month));
    ini_write_string("dailyNotification" , "lastNotificationDate_day" , string(day));
    ini_close();
}
