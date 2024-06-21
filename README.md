Typed Identifiers for ArchivesSpace
===================================

ArchivesSpace *requires* a unique identifier be provided, but also doesn't have
a separate field for externally provided identifiers. This plugin adds a
"typed identifier" field that allows us to provide additional identifiers and
indicate their type (e.g. uuid, ark, local) based on a configurable Identifier
Type enumeration.

Example (abridged) digital object with typed identifiers:

```json
{
  "digital_object_id": "AS REQUIRED 001",
  "title": "A Digital Object",
  "publish": true,
  "typed_identifiers": [
    {
      "identifier": "TEST",
      "id_type": "local",
      "jsonmodel_type": "typed_identifier"
    }
  ],
  "repository": {
    "ref": "/repositories/2"
  }
}
```

Follow the usual instructions for adding modules to your ArchivesSpace instance
including running the database setup to add the new table and default set of
identifier types.

## TODO:

- Add indexing.
- Add to the public UI.

## Acknowledgement

This plugin is *heavily* based on [WGBH-MLA/pbspace](https://github.com/WGBH-MLA/pbspace) which provides it's own "additional identifier" field.