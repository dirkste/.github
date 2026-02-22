import pytest
from src.calculator import add, subtract


class TestCalculator:
    """Test suite for calculator module following strict TDD."""

    def test_should_return_sum_when_adding_two_positive_numbers(self):
        """Test addition of two positive integers."""
        result = add(2, 3)
        assert result == 5

    def test_should_return_sum_when_adding_negative_and_positive(self):
        """Test addition with mixed signs."""
        result = add(-2, 5)
        assert result == 3

    def test_should_return_zero_when_adding_zero_values(self):
        """Test addition with zero values."""
        result = add(0, 0)
        assert result == 0

    def test_should_return_difference_when_subtracting_two_numbers(self):
        """Test subtraction of two integers."""
        result = subtract(10, 3)
        assert result == 7

    def test_should_handle_negative_difference(self):
        """Test subtraction resulting in negative."""
        result = subtract(3, 10)
        assert result == -7
