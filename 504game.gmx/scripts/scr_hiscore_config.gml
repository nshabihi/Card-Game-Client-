// scr_hiscore_config(); (No parameters)
// Called to zero scores and set custom data
var extra, decimals, reset_score, def_extra;
score = 0;
extra = 0;                            // extra score amount
decimals = 2;                         // extra score decimal places
def_extra = 0;                        // Initial default extra score value
reset_score = false;                  // Resets scores when true
global.CH_score_fname = "Scores.dat"; // Filename to save scores as
global.CH_score_commas = true;        // use commas in score display

global.CH_extra_score = def_extra;    // Extra score value
// Define high score headings - Change to suit your requirements
global.CH_header_name = "Name";
global.CH_header_extra = "Funds";
global.CH_header_score = "Score";

/*
        No need to edit below
  Perform some checks to avoid type missmatch errors
*/
if(is_real(extra)){
  if(is_string(def_extra)){
    global.CH_extra_default = 0;
    global.CH_extra_decimals = 0;
  }else{
    global.CH_extra_default = def_extra;
    global.CH_extra_decimals = decimals;    
  }
}else{
  if(is_real(def_value)){
    global.CH_extra_default = string(def_extra);
    global.CH_extra_decimals = 0;
  }else{
    global.CH_extra_default = def_extra;
    global.CH_extra_decimals = 0;
  }
}
// Check for and remove old score data 
if(reset_score && file_exists(global.CH_score_fname)){
  file_delete(global.CH_score_fname);
}
