# encoding: UTF-8
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
        actual = @converter.getOrigCharCodes("œ∑´®†")
        expected = "c5 93 e2 88 91 c2 b4 c2 ae e2 80 a0".split(' ')
        assert_equal(expected,actual)
    end
    def testUtf8CharCodesWhenSet
        actual = @converter.getUtf8CharCodes("œ∑´®†")
        expected = "U+00c3 U+0085 U+00c2 U+0093 U+00c3 U+00a2 U+00c2 U+0088 U+00c2 U+0091 U+00c3 U+0082 U+00c2 U+00b4 U+00c3 U+0082 U+00c2 U+00ae U+00c3 U+00a2 U+00c2 U+0080 U+00c2 U+00a0".split(' ')
        assert_equal(expected,actual)
    end
    def testCheckCompliance
        actual = @converter.checkCompliance("œ∑´®†")
        expected = false
        assert_equal(expected,actual)
    end
end
