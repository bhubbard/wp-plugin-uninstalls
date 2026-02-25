-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbl_plugin_version', 'cbl_plugin_options', 'cbl_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbl_location_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbl_location_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbl_location_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbl_location_data');

