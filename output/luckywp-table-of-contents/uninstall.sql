-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwptoc_general', 'lwptoc_appearance', 'lwptoc_autoInsert', 'lwptoc_misc', 'rate_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ct_builder_json', '_lwptoc_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ct_builder_json', '_lwptoc_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ct_builder_json', '_lwptoc_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ct_builder_json', '_lwptoc_settings');

