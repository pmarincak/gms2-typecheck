///@desc Checks if the provided value is null or not
///@param {*} value The value to check
///@returns {Bool} True if null, false otherwise

var value = argument0;
var result = is_undefined(value) || !is_real(value) || !instance_exists(value) || value == noone || value < 0;
return result;