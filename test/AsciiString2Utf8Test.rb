require 'test/unit'
require_relative '../lib/String2Utf8.rb'

class String2Utf8Test < Test::Unit::TestCase
    def setup
        @converter = String2Utf8.new
    end
    def testUnset
        actual = @converter.getOrigCharCodes
        expected = nil
        assert_equal(expected,actual)

        actual = @converter.getUtf8CharCodes
        expected = nil
        assert_equal(expected,actual)
    end
    def testOrigCharCodesWhenSet
        @converter.orig_string = "hello 123 : 4 5 6"
        actual = @converter.getOrigCharCodes
        expected = "68 65 6c 6c 6f 20 31 32 33 20 3a 20 34 20 35 20 36".split(' ')
        assert_equal(expected,actual)
    end
    def testUtf8CharCodesWhenSet
        @converter.orig_string = "hello 123 : 4 5 6"
        actual = @converter.getUtf8CharCodes
        expected = "U+0068 U+0065 U+006c U+006c U+006f U+0020 U+0031 U+0032 U+0033 U+0020 U+003a U+0020 U+0034 U+0020 U+0035 U+0020 U+0036".split(' ')
        assert_equal(expected,actual)
    end
end
