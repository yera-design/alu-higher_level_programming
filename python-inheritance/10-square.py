#!/usr/bin/python3
"""Module for Square class inheriting from Rectangle."""
Rectangle = __import__('9-rectangle').Rectangle

class Square(Rectangle):
    """Square class that inherits from Rectangle."""

    def __init__(self, size):
        """Initialize square with size."""
        self.integer_validator("size", size)
        self.__size = size
        super().__init__(size, size)

    def area(self):
        """Return the area of the square."""
        return self.__size ** 2
