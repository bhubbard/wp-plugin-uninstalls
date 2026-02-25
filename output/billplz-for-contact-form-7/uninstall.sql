-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcf7_general_settings', 'bcf7_api_options', 'bcf7_email_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_additional_settings', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_additional_settings', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_additional_settings', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_additional_settings', '_form');

