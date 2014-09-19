module UriEncoding
  class Encoder
    def initialize(excepted_chars=nil)
      @excepted_chars = excepted_chars || ReservedCharacters + UnreservedCharacters
    end

    def encode(str)
      str.to_s.each_char.map{|c| @excepted_chars.include?(c) ? c : escape_char(c) }.join("")
    end

    private

    def escape_char(char)
      char.each_byte.map{|byte| "%#{byte.to_s(16).upcase}" }.join("")
    end
  end
end
