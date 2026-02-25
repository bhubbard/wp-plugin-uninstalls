-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dyxperts_selected_post_types', 'dyxperts_output_location');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_schema_markup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_schema_markup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_schema_markup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_schema_markup');

