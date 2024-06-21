require 'factory_bot'

FactoryBot.define do

  factory :json_digital_object_with_typed_identifiers, class: JSONModel(:digital_object) do
    title { "Digital Object #{generate(:generic_title)}" }
    language { generate(:archival_object_language) }
    digital_object_id { generate(:alphanumstr) }
    extents { [build(:json_extent)] }
    file_versions { few_or_none(:json_file_version) }
    dates { few_or_none(:json_date) }
    typed_identifiers { [ build(:json_typed_identifier), build(:json_typed_identifier) ] }
  end

  factory :json_additional_identifier, class: JSONModel(:additional_identifier) do
    identifier { generate(:alphanumstr) }
    type { generate(:alphanumstr) }
  end
end
