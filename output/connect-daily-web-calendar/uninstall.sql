-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdaily_url', 'cdaily_skip_resource_types', 'cdaily_username', 'cdaily_password', 'cdaily_token', 'cdaily_used', 'cdaily_keypair', 'cdaily_resource_management', 'cdaily_settings', 'datetime_format', 'activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'cdnonce_%';

