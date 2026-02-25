-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabmel_override_ms', 'Admin', 'tablepress_tables');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tablepress_table_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tablepress_table_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tablepress_table_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tablepress_table_options');

