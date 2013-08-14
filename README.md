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
