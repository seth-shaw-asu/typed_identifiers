require 'spec_helper'
require_relative 'factories'

describe 'TypedIdentifiers' do
  let(:json) { build(:json_digital_object_with_typed_identifiers, digital_object_id: '123') }
  let(:digital_object) { DigitalObject.create_from_json(json) }

  it "Can be created with Digital Objects" do
    expect(digital_object.typed_identifier.length).to eq(2)
  end

  it "Can have all the expected attributes populated" do
    typed_identifier = digital_object.typed_identifier.sample
    typed_identifier.keys.each do |key|
      expect(typed_identifier[key]).to_not eq(nil)
    end
  end
end
