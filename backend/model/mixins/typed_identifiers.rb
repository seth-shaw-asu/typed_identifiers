module TypedIdentifiers

  def self.included(base)
    base.one_to_many :typed_identifier

    base.def_nested_record(:the_property => :typed_identifiers,
                          :contains_records_of_type => :typed_identifier,
                          :corresponding_to_association => :typed_identifier)
  end

end
