///log(string)

var _string = argument0;

var _t = date_current_datetime();

if(!is_string(_string))
    show_debug_message(string(date_get_hour(_t)) + ":" + string(date_get_minute(_t)) + ":" + string(date_get_second(_t)) + "   [" + object_get_name(object_index) + "] -> " + string(_string));
else
    show_debug_message(string(date_get_hour(_t)) + ":" + string(date_get_minute(_t)) + ":" + string(date_get_second(_t)) + "   [" + object_get_name(object_index) + "] -> " + _string);
