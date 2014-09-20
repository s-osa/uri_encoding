require "spec_helper"

describe UriEncoding::Decoder do
  let(:decoder){ described_class.new }

  describe "#initialize" do
    context "without excepted characters" do
      subject{ described_class.new }
      it{ is_expected.to be_an_instance_of(described_class) }
    end
  end

  describe "#decode" do
    context "default exceptions" do
      default_mappings.each do |source, encoded|
        describe "#{encoded}" do
          subject{ decoder.decode(encoded) }
          it{ is_expected.to eq(source) }
        end
      end
    end

    context "no exceptions" do
      everything_escaped_mappings.each do |source, encoded|
        describe "#{encoded}" do
          subject{ decoder.decode(encoded) }
          it{ is_expected.to eq(source) }
        end
      end
    end

    context "with encoding argument" do
      encoding = Encoding::Windows_31J
      source   = "あいう".encode(encoding)
      encoded  =  "%82%A0%82%A2%82%A4"

      describe "#{encoded} as #{encoding}" do
        subject{ decoder.decode(encoded, encoding) }
        it{ is_expected.to eq(source) }
      end
    end
  end
end
