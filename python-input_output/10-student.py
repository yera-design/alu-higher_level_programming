#!/usr/bin/python3
"""Module for Student class with filtered to_json."""

class Student:
    """Defines a student with first_name, last_name, and age."""

    def __init__(self, first_name, last_name, age):
        """Initialize a Student instance."""
        self.first_name = first_name
        self.last_name = last_name
        self.age = age

    def to_json(self, attrs=None):
        """Retrieves a dictionary representation of a Student instance.
        If attrs is a list of strings, only those attributes are retrieved.
        """
        if attrs is None:
            return self.__dict__
        else:
            return {k: v for k, v in self.__dict__.items() if k in attrs}
