var url_result = argument0;
var first_limit= argument1;
var last_limit = argument2;

var subStrStart = string_pos(first_limit, url_result) + string_length(first_limit);
var subStrEnd   = string_pos(last_limit, url_result) - 1;

return scr_substr(url_result, subStrStart, subStrEnd);
