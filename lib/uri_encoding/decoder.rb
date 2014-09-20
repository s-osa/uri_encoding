module UriEncoding
  class Decoder
    EncodedCharRegexp = /^%([0-9A-Fa-f]{2})$/

    def decode(str, encoding=nil)
      single_byte_expressions = split_encoded_string(str)
      bytes_string = single_byte_expressions.map{|e| convert_to_byte(e) }.join
      bytes_string.force_encoding(encoding || str.encoding)
    end

    private

    def split_encoded_string(str)
      arr, pos = [], 0
      while pos < str.size
        step =  str[pos] == "%" ? 3 : 1
        arr << str[pos...(pos + step)]
        pos += step
      end
      arr
    end

    def convert_to_byte(exp)
      exp =~ EncodedCharRegexp ?  Integer("0x#{$1}").chr : exp
    end
  end
end
