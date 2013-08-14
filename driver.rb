require_relative 'lib/String2Utf8.rb'

#Usage: ruby driver.rb <input string>

#Example: ruby driver.rb hello123

input_string = ">@HWI:1234 \tTCTATCTAGAGAGATATC"
if(ARGV.length > 0)
    input_string = ARGV.join(' ')
    puts "Accepted user-defined input string '#{input_string}'"
else
    puts "Using default input string '#{input_string}'"
end
puts

converter = String2Utf8.new

orig_char_codes = converter.getOrigCharCodes(input_string)
utf8_char_codes = converter.getUtf8CharCodes(input_string)
utf8_compliant = converter.checkCompliance(input_string)
puts "Original Characters:\n#{orig_char_codes.join(" ")}"
puts
puts "UTF-8 Characters:\n#{utf8_char_codes.join(" ")}"
puts
puts "UTF-8 Compliant:\n#{utf8_compliant}"
puts
puts "done."
