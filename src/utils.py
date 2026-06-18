"""Shared helpers."""

def validate_numbers(a, b):
    if not isinstance(a, (int, float)) or not isinstance(b, (int, float)):
        raise TypeError("Operands must be numbers")
    return a, b
