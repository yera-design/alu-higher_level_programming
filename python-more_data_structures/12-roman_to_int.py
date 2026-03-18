#!/usr/bin/python3
def roman_to_int(roman_string):
    """
    Converts a Roman numeral string to an integer.
    Returns the integer value, or 0 if input is not a string or None.
    """
    if not isinstance(roman_string, str) or roman_string is None:
        return 0

    roman_values = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    }

    total = 0
    length = len(roman_string)

    for i in range(length):
        current = roman_values.get(roman_string[i], 0)
        # If current value is 0, invalid character, but per problem we assume valid
        if i + 1 < length:
            next_val = roman_values.get(roman_string[i + 1], 0)
            if current < next_val:
                total -= current
            else:
                total += current
        else:
            total += current

    return total
