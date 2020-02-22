# gms2-typecheck
A series of scripts for GML to add futher is_a typechecking.

## Table of Contents

1. [Install](#install)
2. [API](#api)
   - [is_double](#is_double)
   - [is_null](#is_null)

## Install

Download the [latest release](https://github.com/pmarincak/gms2-typecheck/releases) and import the gml files into your project's scripts. For GameMaker: Studio 2, you can just drag and drop the files into the editor.

## API

### is_double

Used to check if the provided value is a double or not. May also be used to check if a value is a float.

```gml
@param {*} value The value to check
@returns {Boolean} True if double, false otherwise
```

*Double*

```gml
@example
is_double(0.5); // => true

@example
is_double(0.57938342842); // => true

@example
is_double(-2.57938342842); // => true
```

*Non-Double*

```gml
@example
is_double(1.0); // => false

@example
is_double(0); // => false

@example
is_double(-1); // => false

@example
is_double(undefined); // => false

@example
is_double(noone); // => false

@example
is_double(true); // => false

@example
is_double(false); // => false

@example
is_double("hello"); // => false

@example
var instance = instance_create_depth(0,0,0,obj_YourObject);
is_double(instance); // => false

@example
var list = ds_list_create();
is_double(list); // => false

@example
var array = array_create(1);
is_double(array);// => false
```

### is_null

Used to check if an instance is null (i.e. invalid) or not.

```gml
@param {*} value The value to check
@returns {Boolean} True if null, false otherwise
```

*Null*

```gml
@example
is_null(0); // => true

@example
is_null(-1); // => true

@example
is_null(undefined); // => true

@example
is_null(noone); // => true

@example
is_null(0.5); // => true

@example
is_null(true); // => true

@example
is_null(false); // => true

@example
is_null("hello"); // => true

@example
var list = ds_list_create();
is_null(list); // => true

@example
var array = array_create(1);
is_null(array); // => true
```

*Non-Null*

```gml
@example
var instance = instance_create_depth(0,0,0,obj_YourObject);
is_null(instance); // => false
```
