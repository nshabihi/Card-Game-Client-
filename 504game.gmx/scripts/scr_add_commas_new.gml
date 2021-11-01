/// scr_add_commas(value);
/*
   Returns a string with commas as a thousands separator
   (Can be used with strings or real numbers)
   val = scr_add_commas(10000); // returns val as the string "10,000"
   val = scr_add_commas("1234567") // returns val as "1,234,567"
*/
var strScore, n;

// Insure we have a string representation of the value.
if(!is_real(argument0)){
  // convert to string if a real value specified
  strScore = argument0;
}else{
  strScore = string(argument0);
}
n = string_length(strScore)-2;
// Loop through the string in reverse order
while (n > 1) {
  strScore = string_insert(",",strScore,n);
  n -= 3;
}
return (strScore);
