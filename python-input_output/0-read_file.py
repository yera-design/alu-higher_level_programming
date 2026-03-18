#!/usr/bin/python3
"""Module for read_file function."""

def read_file(filename=""):
    """Reads a text file (UTF8) and prints its content to stdout."""
    with open(filename, 'r', encoding='utf-8') as f:
        print(f.read(), end="")
