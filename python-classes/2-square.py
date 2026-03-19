#!/usr/bin/python3
"""Module that defines a Square with size validation."""


class Square:
    """Represents a square with validated size."""

    def __init__(self, size=0):
        """Initializes the square with size validation."""
        if not isinstance(size, int):
            raise TypeError("size must be an integer")
        if size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size
