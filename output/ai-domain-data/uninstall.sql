-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aidd_name', 'aidd_description', 'aidd_website', 'aidd_contact', 'aidd_logo', 'aidd_entity_type', 'aidd_jsonld');

