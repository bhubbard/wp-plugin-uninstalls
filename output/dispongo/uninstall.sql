-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dispongo_url_settings', 'dispongo_advanced_settings', 'dispongo_api_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dispongo_section', 'dispongo_permission', 'DispongoID', 'EncryptedID');
DELETE FROM wp_usermeta WHERE meta_key IN ('dispongo_section', 'dispongo_permission', 'DispongoID', 'EncryptedID');
DELETE FROM wp_termmeta WHERE meta_key IN ('dispongo_section', 'dispongo_permission', 'DispongoID', 'EncryptedID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dispongo_section', 'dispongo_permission', 'DispongoID', 'EncryptedID');

