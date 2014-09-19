module UriEncoding
  class Decoder
    EncodedCharRegexp = /^%([0-9A-Fa-f]{2})$/

    def decode(str)
      encoded_chars = split_encoded_string(str)
      decoded_chars = encoded_chars.map{|c| decode_char(c) }
      decoded_chars.join
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

    def decode_char(char)
      char =~ EncodedCharRegexp ?  Integer("0x#{$1}").chr : char
    end
  end
end
