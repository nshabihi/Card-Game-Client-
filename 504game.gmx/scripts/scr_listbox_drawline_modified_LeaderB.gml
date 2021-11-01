//custom draw on a ui_listbox_ext
//must set CurListB.lineheight to actual height we draw

var curListB, curIndex, curX,curY, curSelected,returnHeight,curLineSt,curItemToDisp,curItemToDisp1,curItemToDisp2,isUserData;

curListB     = argument0;    // self.id of listbox_ext;
curIndex     = argument1;    // index (0 based) of items of listbox
curX         = argument2;    //X  to draw
curY         = argument3;    //Y  to draw
curHeight    = argument4;    // default height of lineitem (usually textheight,  return must be the actual height for variable heights)
curWidth     = argument5;    // width of drawing area;
curLineSt    = argument6;    // cur string to display.
curSelected  = argument7;    //if line is highlited  true/false
curItemToDisp= argument8;
curItemToDisp1= argument9;
curItemToDisp2= argument10;
isUserData    = argument11;



//with (CurListB)    //sample to get other info from listbox_ext
//   {CurLineSt= items[CurIndex];
//   };
   
///DRAW TEXT LINE HERE......    Sample
//*********************************************

if(isUserData == false)
{
    var tempColor = make_color_rgb(128, 67, 53);
    draw_set_color(tempColor);
}
else
{
    draw_set_color(c_white);
}

draw_set_font(fnt_bigJohn);

//if (mouse_x>=curX) && (mouse_x<=curX+curWidth)
//  && (mouse_y>=curY-curHeight) && (mouse_y<=curY) { curListB.itemindex=curIndex;
//                                                  }   


//modified by NGR
if curSelected then {//draw_rectangle_color(curX,curY,curX+curWidth,curY+curHeight,c_blue,c_blue,c_navy,c_navy,false);
                     //draw_set_color(c_white);
                    } 
//end of modified by NGR


/*
if (curIndex mod 7) == 2   //just some sample stuff to change the variable height by lineitem
    {
      curHeight = sprite_get_height(spr_home)+4;     
      //hilite is bigger so we draw a bigger hilite box  
      if curSelected then {draw_rectangle_color(curX,curY,curX+curWidth,curY+curHeight,c_blue,c_blue,c_navy,c_navy,false);
                           draw_set_color(c_white);
                          } 
      draw_sprite(spr_home,0,curX+15, curY+1);
      draw_text(curX+100,curY+5,curLineSt);
    }
else*/

var rankingFontXscale = 0.65;
var rankingFontYScale = 0.65;

draw_text_transformed(curX+4,curY+2,curItemToDisp1,rankingFontXscale,rankingFontYScale,0);
draw_text_transformed(curX+165 * global.numericalsXScale, curY+5,  curLineSt, rankingFontXscale,rankingFontYScale,0);
draw_text_transformed(curX+435 * global.numericalsXScale, curY+5, curItemToDisp, rankingFontXscale,rankingFontYScale,0);
draw_text_transformed(curX+675 * global.numericalsXScale, curY+5, curItemToDisp2, rankingFontXscale,rankingFontYScale,0);

//draw_line(curX,curY+curHeight,curX+curWidth,curY+curHeight);



//**********************************************

return curHeight;
