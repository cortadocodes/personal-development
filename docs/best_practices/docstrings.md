# Python docstrings

For `sphinx` to be able to automatically pull out docstrings as documentation, one of the docstring standards must be 
followed. The most common seems to be the reStructuredText standard.


## reStructuredText docstrings

### General structure
```python
def my_function(...):
    """ Succinct imperative description of function.
    
    Params/variables
    ...
    
    Returns
    ...
    """
```
Note that:
* Docstring descriptions should be full sentences and end with a full stop.
* At least the first sentence of the description should be written in the imperative.

### Fields
Any of the following 'fields' can be used in the docstring to specify parameters, exceptions and returns:
* **param, parameter, arg, argument, key, keyword:** description of a parameter.
* **type:** type of a parameter; creates a link if possible.
* **raises, raise, except, exception:** how/when an exception is raised.
* **var, ivar, cvar:** description of a variable.
* **vartype:** type of a variable; creates a link if possible.
* **returns, return:** description of the return value.
* **rtype:** return type of the previous return specified; creates a link if possible.

Declarations of the fields and their types can be combined in two ways; either

**Structure 1**
```
:param parameter_type parameter_name: description

:return return_type: description
```
or

**Structure 2**
```
:param parameter_name: description
:type parameter_name: parameter_type_1 or parameter_type_2 or ...

:return: description
:rtype: return_type_1 or return_type_2 or ...
```

All of these fields, complete with their arguments (i.e. name/type of parameters/variables/returns up until the 
description), **must** be delimited by colons before descriptions are added.

### Types
* Structure 1 can be used only if one input/return type is expected for a field.
* If multiple types are possible, structure 2 is necessary, and different types must be separated by the 
keyword `or`.
* If container types are used, the types of their content can also be specified using the following syntax:
```python
:type parameter_name: list(int)
:type parameter_name: list[int]
:type parameter_name: dict(str, int)
:type parameter_name: dict[str, int]
:type parameter_name: tuple(float, float)
:type parameter_name: tuple[float, float]
```


## Usage example
```python
def send_message(sender, recipient, message_body, priority=1):
    """ Send a message to a recipient.
    
    :param str sender: The person sending the message
    :param str recipient: The recipient of the message
    :param str message_body: The body of the message
    :param priority: The priority of the message, can be a number 1-5
    :type priority: integer or None
    
    :return str: the message
    :return: the message id
    :rtype: int
    :raise ValueError: if the message_body exceeds 160 characters
    :raise TypeError: if the message_body is not a basestring
    """
```


## References:
* [Sphinx docs](https://www.sphinx-doc.org/en/1.8/usage/restructuredtext/domains.html#info-field-lists)
