//lastNotificationDate = "-1";
// screen resolution
///Sets views of other screens
var dwidth, dheight, aratio, vwidth, vheight , xview , yview; // 1& 2: device width and height , 3: aspect retio 4 & 5: view width and height , 6 & 7 : x & y port of view
gwidth = 1140;
gheight = 720;
// Get the usable resolution of the device
dwidth  = display_get_width(); //1280 ; //display_get_width();
dheight = display_get_height(); //720; //display_get_height();

// Calculate the aspect ratio
aratio = dwidth / dheight;
if(aratio == 1.5)
{
    vwidth = 1080;
    vheight = 720;
    xview = 30 ;
    yview = 0;

}
else if(aratio > 1.5)
{
    vwidth = gwidth;
    vheight = round(vwidth / aratio);
    xview = 0;
    yview = round(abs(gheight - vheight) /2);


}
else if(aratio < 1.5)
{
    
    vheight = gheight;
    vwidth = round(vheight * aratio);
    xview = round(abs(gwidth - vwidth) /2);
    yview = 0;

}

view_xview[0] = xview;
view_yview[0] = yview;
view_wview[0] = vwidth;
view_hview[0] = vheight;

// for using in other room's initialization
global.roomInt = ds_map_create();
var dwidth, dheight, aratio, vwidth, vheight , xview , yview;
ds_map_add(global.roomInt , "dwidth" , dwidth);
ds_map_add(global.roomInt , "dheight" , dheight);
ds_map_add(global.roomInt , "xview" , xview);
ds_map_add(global.roomInt , "yview" , yview);
ds_map_add(global.roomInt , "vwidth" , vwidth);
ds_map_add(global.roomInt , "vheight" , vheight);
ds_map_add(global.roomInt , "aratio" , aratio);
dsmapr = ds_map_find_value(global.roomInt , dwidth);

// Sets the view's size/aspect ratio to match that of the device, the view is centered in the room
//room_set_view(room_loading, 0, 1, xview, yview , vwidth, vheight, 0, 0, dwidth, dheight, 0, 0, 0, 0, -1);
//room_goto(room_loading);
