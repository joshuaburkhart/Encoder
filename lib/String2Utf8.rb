class String2Utf8
    def getOrigCharCodes(orig_string)
        if(orig_string && orig_string.class == String)
            return orig_string.bytes.to_a.map {|e| e.to_s(16)}
        else
            logError
        end
    end
    def getUtf8CharCodes(orig_string)
        if(orig_string && orig_string.class == String)
            utf8Ary =  orig_string.bytes.to_a.pack('U*').bytes.to_a.map {|e| e.to_s(16)}
            utf8CodePoints = utf8Ary.map {|e|
                code_point = "U+"
                code_point += "0"*(4 - e.length) + e
            }
            return utf8CodePoints
        else
            logError
        end

    end
    def checkCompliance(orig_string)
        if(orig_string && orig_string.class == String)
            return getOrigCharCodes(orig_string).length == getUtf8CharCodes(orig_string).length
        else
            logError
        end
    end
    def logError
        puts "ERROR: orig_string nil or not String"
    end
end
