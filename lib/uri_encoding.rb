require "uri_encoding/decoder"
require "uri_encoding/encoder"
require "uri_encoding/version"

module UriEncoding
  GenDelims = %w(: / ? # [ ] @)
  SubDelims = %w(! $ & ' ( ) * + , ; =)
  Alphabets = ("A".."Z").to_a + ("a".."z").to_a
  Digits = (0..9).to_a.map(&:to_s)
  UnreservedSigns = %w(- . _ ~)

  ReservedCharacters = GenDelims + SubDelims
  UnreservedCharacters = Alphabets + Digits + UnreservedSigns
end
