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

  DefaultExceptions = ReservedCharacters + UnreservedCharacters

  module_function

  def encode(str, exceptions=DefaultExceptions)
    encoder = UriEncoding::Encoder.new(exceptions)
    encoder.encode(str)
  end

  def decode(str)
    decoder = UriEncoding::Decoder.new
    decoder.decode(str)
  end
end
