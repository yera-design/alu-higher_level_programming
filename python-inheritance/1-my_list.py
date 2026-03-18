#!/usr/bin/python3
"""Module for MyList class."""

class MyList(list):
    """A subclass of list with a method to print sorted list."""

    def print_sorted(self):
        """Prints the list in ascending order."""
        print(sorted(self))
