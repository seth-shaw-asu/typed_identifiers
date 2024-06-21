{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",
    "properties" => {
      "id_type" => {"type" => "string", "dynamic_enum" => "typed_identifier_type"},
      "identifier" => {"type" => "string"},
    },
  },
}
