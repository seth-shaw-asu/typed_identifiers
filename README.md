Typed Identifiers for ArchivesSpace
===================================

ArchivesSpace *requires* a unique identifier be provided, but also doesn't have
a separate field for externally provided identifiers. This plugin adds a
"typed identifier" field that allows us to provide additional identifiers and
indicate their type (e.g. uuid, ark, local) based on a configurable Identifier
Type enumeration.
