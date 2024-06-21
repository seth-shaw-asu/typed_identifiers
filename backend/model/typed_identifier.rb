class TypedIdentifier < Sequel::Model(:typed_identifier)
  include ASModel
  corresponds_to JSONModel(:typed_identifier)
  set_model_scope :global
end
