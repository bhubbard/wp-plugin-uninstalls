-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glospa_flush_needed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_glossary_pages_definition', '_glossary_pages_synonym', '_glossary_pages_example');
DELETE FROM wp_usermeta WHERE meta_key IN ('_glossary_pages_definition', '_glossary_pages_synonym', '_glossary_pages_example');
DELETE FROM wp_termmeta WHERE meta_key IN ('_glossary_pages_definition', '_glossary_pages_synonym', '_glossary_pages_example');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_glossary_pages_definition', '_glossary_pages_synonym', '_glossary_pages_example');

