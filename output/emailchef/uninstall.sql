-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailchef_invalid_credentials_notice', 'emailchef_settings', 'fs_contact_global');
DELETE FROM wp_options WHERE option_name LIKE 'fs_contact_form%';

