/// @function string_thousands(number)
/// @param {real} number The number to format
function string_thousands(_number) {
    var _str = string(_number);
    var _len = string_length(_str);
    
    // Loop backwards from the end, skipping the last 3 digits
    for (var i = _len - 3; i > 0; i -= 3) {
        _str = string_insert(",", _str, i + 1);
    }
    
    return _str;
}