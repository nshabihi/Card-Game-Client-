global.MenuVObj_X               = 0;
global.CardVObj_X               = 0;
if(file_exists("game504Data.ini"))
{
    ini_open("game504Data.ini");
    
    global.MenuVObj_X = ini_read_real('Sound','atlantico',-1);
    global.CardVObj_X = ini_read_real('Sound','card',-1);
    
    if(global.MenuVObj_X == -1){
        global.MenuVObj_X = 100;
        ini_write_real('Sound','atlantico',100);
    }
    
    if(global.CardVObj_X == -1){
        global.CardVObj_X = 100;
        ini_write_real('Sound','card',100);
    }
    
    ini_close();
}
