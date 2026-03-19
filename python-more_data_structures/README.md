#!/usr/bin/python3
"""
Module containing various functions for dictionary, set, and list operations.
All functions are implemented without importing any external modules.
"""

def square_matrix_simple(matrix=[]):
    """
    Computes the square value of all integers in a 2D matrix.
    Returns a new matrix of the same size, leaving the original unchanged.
    """
    return [[x ** 2 for x in row] for row in matrix]


def search_replace(my_list, search, replace):
    """
    Replaces all occurrences of 'search' by 'replace' in a new list.
    The original list remains unchanged.
    """
    return [replace if item == search else item for item in my_list]


def uniq_add(my_list=[]):
    """
    Returns the sum of all unique integers in a list.
    """
    return sum(set(my_list))


def common_elements(set_1, set_2):
    """
    Returns a set containing all elements present in both sets.
    """
    return set_1 & set_2


def only_diff_elements(set_1, set_2):
    """
    Returns a set containing all elements present in only one of the two sets.
    """
    return set_1 ^ set_2


def number_keys(a_dictionary):
    """
    Returns the number of keys in a dictionary.
    """
    return len(a_dictionary)


def print_sorted_dictionary(a_dictionary):
    """
    Prints a dictionary with its keys sorted in alphabetical order.
    Only top-level keys are sorted; nested dictionaries are not affected.
    """
    for key in sorted(a_dictionary):
        print(f"{key}: {a_dictionary[key]}")


def update_dictionary(a_dictionary, key, value):
    """
    Replaces or adds a key/value pair in a dictionary.
    Returns the updated dictionary.
    """
    a_dictionary[key] = value
    return a_dictionary


def simple_delete(a_dictionary, key=""):
    """
    Deletes a key from a dictionary. If the key doesn't exist, the dictionary remains unchanged.
    Returns the dictionary.
    """
    if key in a_dictionary:
        del a_dictionary[key]
    return a_dictionary


def multiply_by_2(a_dictionary):
    """
    Returns a new dictionary with all values multiplied by 2.
    The original dictionary remains unchanged.
    """
    return {key: value * 2 for key, value in a_dictionary.items()}
