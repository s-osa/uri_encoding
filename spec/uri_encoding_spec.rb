require "spec_helper"

describe UriEncoding do
  describe "::GenDelims" do
    subject{ described_class::GenDelims }
    it{ is_expected.to eq(gen_delims)}
  end

  describe "::SubDelims" do
    subject{ described_class::SubDelims }
    it{ is_expected.to eq(sub_delims)}
  end

  describe "::Reserved characters" do
    subject{ UriEncoding::ReservedCharacters }
    it{ is_expected.to eq(reserved_characters)}
  end

  describe "::Alphabets" do
    subject{ described_class::Alphabets }
    it{ is_expected.to eq(alphabets)}
  end

  describe "::Digits" do
    subject{ described_class::Digits }
    it{ is_expected.to eq(digits)}
  end

  describe "::UnreservedSigns" do
    subject{ described_class::UnreservedSigns }
    it{ is_expected.to eq(unreserved_signs)}
  end

  describe "::Unreserved characters" do
    subject{ UriEncoding::UnreservedCharacters }
    it{ is_expected.to eq(unreserved_characters)}
  end
end
