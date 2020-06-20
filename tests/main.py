import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

import grammar_school


class test_do_something_cool(unittest.TestCase):
    """Unit test cases for grammar_school functions"""
    
    def test_returns_string(self):
        self.assertIsInstance(grammar_school.do_something_cool(),str)

    def test_returns_cool(self):
        self.assertIn('cool',grammar_school.do_something_cool().lower())

if __name__ == '__main__':
    unittest.main(verbosity=2)
