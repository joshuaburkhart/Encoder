# encoding: UTF-8
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
        @converter.orig_string = "œ∑´®†"
        actual = @converter.getOrigCharCodes
        expected = "c5 93 e2 88 91 c2 b4 c2 ae e2 80 a0".split(' ')
        assert_equal(expected,actual)
    end
    def testUtf8CharCodesWhenSet
        @converter.orig_string = "œ∑´®†".force_encoding('UTF-8')
        actual = @converter.getUtf8CharCodes
        expected = "U+00c3 U+0085 U+00c2 U+0093 U+00c3 U+00a2 U+00c2 U+0088 U+00c2 U+0091 U+00c3 U+0082 U+00c2 U+00b4 U+00c3 U+0082 U+00c2 U+00ae U+00c3 U+00a2 U+00c2 U+0080 U+00c2 U+00a0".split(' ')
        assert_equal(expected,actual)
    end
end
