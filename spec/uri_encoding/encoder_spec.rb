require "spec_helper"

describe UriEncoding::Encoder do
  describe "#initialize" do
    context "without excepted characters" do
      subject{ described_class.new }
      it{ is_expected.to be_an_instance_of(described_class) }
    end

    context "with excepted characters" do
      let(:excepted_chars){ %w(a b c) }
      subject{ described_class.new(excepted_chars) }
      it{ is_expected.to be_an_instance_of(described_class) }
    end
  end

  describe "#encode" do
    context "default exceptions" do
      let(:encoder){ described_class.new }
      default_mappings.each do |source, result|
        describe "#{source}" do
          subject{ encoder.encode(source) }
          it{ is_expected.to eq(result) }
        end
      end
    end

    context "no exceptions" do
      let(:encoder){ described_class.new([]) }
      everything_escaped_mappings.each do |source, result|
        describe "#{source}" do
          subject{ encoder.encode(source) }
          it{ is_expected.to eq(result) }
        end
      end
    end
  end
end
