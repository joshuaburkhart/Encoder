require 'test/unit'
require_relative '../lib/String2Utf8.rb'

class String2Utf8Test < Test::Unit::TestCase
    def setup
        @converter = String2Utf8.new
    end
    def testError
        actual = @converter.getOrigCharCodes(nil)
        expected = nil
        assert_equal(expected,actual)

        actual = @converter.getOrigCharCodes(42)
        expected = nil
        assert_equal(expected,actual)

        actual = @converter.getUtf8CharCodes(nil)
        expected = nil
        assert_equal(expected,actual)

        actual = @converter.getUtf8CharCodes(42)
        expected = nil
        assert_equal(expected,actual)
    end
    def testOrigCharCodesWhenSet
        actual = @converter.getOrigCharCodes("hello 123 : 4 5 6")
        expected = "68 65 6c 6c 6f 20 31 32 33 20 3a 20 34 20 35 20 36".split(' ')
        assert_equal(expected,actual)
    end
    def testUtf8CharCodesWhenSet
        actual = @converter.getUtf8CharCodes("hello 123 : 4 5 6")
        expected = "U+0068 U+0065 U+006c U+006c U+006f U+0020 U+0031 U+0032 U+0033 U+0020 U+003a U+0020 U+0034 U+0020 U+0035 U+0020 U+0036".split(' ')
        assert_equal(expected,actual)
    end
    def testCheckCompliance
        actual = @converter.checkCompliance("hello 123 : 4 5 6")
        expected = true
        assert_equal(expected,actual)
    end
end
