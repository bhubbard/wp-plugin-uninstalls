-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ezgmaps_settings', 'ezgmaps_settings_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ezgmaps_meta_value_key', 'ezgmaps_Address', 'ezgmaps_Zipcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('ezgmaps_meta_value_key', 'ezgmaps_Address', 'ezgmaps_Zipcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('ezgmaps_meta_value_key', 'ezgmaps_Address', 'ezgmaps_Zipcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ezgmaps_meta_value_key', 'ezgmaps_Address', 'ezgmaps_Zipcode');

