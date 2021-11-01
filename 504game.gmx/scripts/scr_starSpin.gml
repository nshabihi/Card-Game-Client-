/// SCRIPT

///scr_starSpin(star_xscale, star_yscale, star_rot , star_alpha)
var _star_xscale = argument0;
var _star_yscale = argument1;
var _star_rot = argument2;
var _star_alpha = argument3;

_star_xscale += 0.05;
_star_yscale += 0.05;
_star_rot += 18;
_star_alpha += 0.05;

if (_star_xscale == 1) _star_xscale = 111;
if (_star_yscale == 1) _star_yscale = 111;
if (_star_rot < 100) _star_rot = _star_rot +900;
if (_star_alpha == 1) _star_alpha = 111;


return string(_star_xscale)+string(_star_yscale)+string(_star_rot)+string(_star_alpha);
