import unittest
import os,sys,inspect
currentdir = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
parentdir = os.path.dirname(currentdir)
sys.path.insert(0,parentdir)
import vim_listify as sut

# @unittest.skip("Don't forget to test!")
class VimListifyTests(unittest.TestCase):

    def test_listify_buffer_with_order_contents(self):
        buffer_contents = [ 'feature1', 'feature2', 'feature3', 'feature4']
        expected_results = [ '1. feature1', '2. feature2', '3. feature3', '4. feature4']
        sut.vim_listify_order_buffer_contents(buffer_contents)
        self.assertEqual(buffer_contents, expected_results)

    def test_listify_buffer_with_order_contents(self):
        buffer_contents = [ 'feature1', 'feature2', 'feature3', 'feature4']
        expected_results = [ '* feature1', '* feature2', '* feature3', '* feature4']
        sut.vim_listify_unorder_buffer_contents(buffer_contents)
        self.assertEqual(buffer_contents, expected_results)

if __name__ == '__main__':
        unittest.main()
