#!/usr/bin/python3
"""Checks subclass only."""
def inherits_from(obj, a_class):
    """Return True if subclass only."""
    return isinstance(obj, a_class) and type(obj) is not a_class
