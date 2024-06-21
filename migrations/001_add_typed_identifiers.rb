require 'db/migrations/utils'

Sequel.migration do

  up do
    $stderr.puts("Adding Typed Identifiers tables")

    create_table(:typed_identifier) do
      primary_key :id
      Integer :lock_version, :default => 0, :null => false
      Integer :json_schema_version, :null => false
      Integer :digital_object_id
      DynamicEnum :id_type
      String :identifier

      apply_mtime_columns
    end

    alter_table(:typed_identifier) do
      add_foreign_key([:digital_object_id], :digital_object, :key => :id)
    end

    create_editable_enum("typed_identifier_type", ['local','hdl','ark','doi','uuid','isbn', 'uri', 'urn', 'upc'])
  end

  down do
    drop_table(:typed_identifier)
  end

end
