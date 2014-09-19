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
    subject{ described_class::ReservedCharacters }
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
    subject{ described_class::UnreservedCharacters }
    it{ is_expected.to eq(unreserved_characters)}
  end

  describe ".encode" do
    context "default exceptions" do
      default_mappings.each do |source, result|
        describe "#{source}" do
          subject{ described_class.encode(source) }
          it{ is_expected.to eq(result) }
        end
      end
    end

    context "no exceptions" do
      everything_escaped_mappings.each do |source, result|
        describe "#{source}" do
          subject{ described_class.encode(source, []) }
          it{ is_expected.to eq(result) }
        end
      end
    end
  end

  describe ".decode" do
    context "default exceptions" do
      default_mappings.each do |source, encoded|
        describe "#{encoded}" do
          subject{ described_class.decode(encoded) }
          it{ is_expected.to eq(source) }
        end
      end
    end

    context "no exceptions" do
      everything_escaped_mappings.each do |source, encoded|
        describe "#{encoded}" do
          subject{ described_class.decode(encoded) }
          it{ is_expected.to eq(source) }
        end
      end
    end
  end
end
