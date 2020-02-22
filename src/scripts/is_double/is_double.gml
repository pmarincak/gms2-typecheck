///@desc Checks if the provided value is a double or not
///@param {*} value The value to check
///@returns {Bool} True if double, false otherwise

var value = argument0;

if (is_undefined(value) || !is_real(value)){
	return false;
}

var remainder = value % 1;
return remainder != 0;