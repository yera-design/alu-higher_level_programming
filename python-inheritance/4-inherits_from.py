#!/usr/bin/python3
"""Module for inherits_from function."""

def inherits_from(obj, a_class):
    """Returns True if obj is an instance of a class that inherited from a_class."""
    return isinstance(obj, a_class) and type(obj) is not a_class
