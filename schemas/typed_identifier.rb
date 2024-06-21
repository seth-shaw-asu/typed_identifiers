{
  :schema => {
    "$schema" => "https://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",
    "properties" => {
      "id_type" => {"type" => "string", "dynamic_enum" => "typed_identifier_types"},
      "identifier" => {"type" => "string"},
    },
  },
}
