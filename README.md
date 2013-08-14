Encoder
=======

NOTE: This program was tested using jruby 1.7.3 (1.9.3p385) 2013-02-21 dac429b on Java HotSpot(TM) 64-Bit Server VM 1.6.0_51-b11-457-11M4509 [darwin-x86_64] but should work on ruby 1.9.3+

Execution Instructions
----------------------

Use the command line.

$ruby driver.rb sample-string

Test Instructions
-----------------

Due to ruby's single character encoding per source file, two test classes were created.

$jruby AsciiString2Utf8Test.rb
$jruby Utf8String2Utf8Test.rb

Example Execution Output
------------------------

 demeter:Encoder joshuaburkhart$ jruby driver.rb sample1
 Accepted user-defined input string 'sample1'
 
 Original Characters:
 73 61 6d 70 6c 65 31
 
 UTF-8 Characters:
 U+0073 U+0061 U+006d U+0070 U+006c U+0065 U+0031
 
 UTF-8 Compliant:
 true
 
 done.
 demeter:Encoder joshuaburkhart$ jruby driver.rb s∆mpl∑
 Accepted user-defined input string 's∆mpl∑'
 
 Original Characters:
 73 e2 88 86 6d 70 6c e2 88 91
 
 UTF-8 Characters:
 U+0073 U+00c3 U+00a2 U+00c2 U+0088 U+00c2 U+0086 U+006d U+0070 U+006c U+00c3 U+00a2 U+00c2 U+0088 U+00c2 U+0091
 
 UTF-8 Compliant:
 false
 
 done.
