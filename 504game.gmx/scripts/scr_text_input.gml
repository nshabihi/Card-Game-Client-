/*
    scr_text_input(index);
    First parameter is the ds index to update
    returns true if editing false when done.
*/
var code, def, key, char, count, value, update;

// Just return if no key was pressed to save time
if(keyboard_check(vk_nokey)) {return (true);}

update = argument0;         // ds list index
count = 20;                 // max characters allowed
def = "Ann Onimous";        // default value if no text entered
value = ds_list_find_value(global.CH_hiscore_name,update);
keycode = keyboard_lastkey;    // grab last key pressed code

if(keycode == vk_escape || keycode == vk_enter) {
  io_clear();
  if(value == "(Enter Name)" || value == ""){
    ds_list_replace(global.CH_hiscore_name,update,def);
  }
  return (false); // Finished editing
}

if(keycode == vk_delete){
  // delete all character if default exists
  if(value == def){
    ds_list_replace(global.CH_hiscore_name,update,"");
  }
  io_clear();
  // exit but we are still editing
  return (true); 
}

if(keycode == vk_backspace){
  // delete last char
  char = string_copy(value,0,string_length(value)-1);
  ds_list_replace(global.CH_hiscore_name,update,char);
  io_clear()
  // exit but we still editing
  return (true); 
}
// Check input is still less than the allowed length
if(string_length(value) >= count){
  // exit but we are still editing
  return (true);
}

if(string_pos("(",value) > 0 || string_pos(")",value) > 0){
  ds_list_replace(global.CH_hiscore_name,update,"");
  value = "";
  blink = 0;
}
//  Call Security to frisk the input
// (prevent illegal chars being entered)
if(keycode > 31 && keycode < 123){
  // Exclude non printable characters.
  if(keycode > 47 && keycode < 58 || keycode > 64 || keycode == 32){
    // Only add numbers, lower and upper letters plus space.
   str = "";
    if(value == def){
      ds_list_replace(global.CH_hiscore_name,update,"");
    }
    char = value+keyboard_lastchar;
    ds_list_replace(global.CH_hiscore_name,update,char);
  }
}

io_clear();
// exit but we still editing
return (true);
