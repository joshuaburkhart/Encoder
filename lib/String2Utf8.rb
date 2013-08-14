class String2Utf8
    attr_accessor :orig_string
    def getOrigCharCodes
        if(@orig_string)
            return @orig_string.bytes.to_a.map {|e| e.to_s(16)}
        else
            logUnsetError
        end
    end
    def getUtf8CharCodes
        if(@orig_string)
            utf8Ary =  @orig_string.bytes.to_a.pack('U*').bytes.to_a.map {|e| e.to_s(16)}
            utf8CodePoints = utf8Ary.map {|e|
                code_point = "U+"
                code_point += "0"*(4 - e.length) + e
            }
            return utf8CodePoints
        else
            logUnsetError
        end

    end
    def logUnsetError
        puts "ERROR: string not set"
    end
        
end
