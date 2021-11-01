/// SCRIPT

///scr_wrap(value, min, max)

var _value = argument0;
var _min = argument1;
var _max = argument2;
var _flip = argument3;

//rotating clockwork
//if (_flip == true)
//{
    var _range = _max - _min;
    
    if (_range <= 0) {
        return 0;
    }
    
    var _result = (_value - _min) % _range;
    
    
    if (_result < 0) {
        _result += _range;
    }

    return _result + _min ;
//}

// rotating reverse
/*
if (_flip == false)
{
    var _range = _max - _min;
    
    if (_range <= 0) {
        return 0;
    }
    
    var _result = (_value - _min) % _range;
    
    if (_result < 0) {
        _result += _range;
    }

    return  _max - _result ;
}
///////////////
