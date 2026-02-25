-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storeui_license_key', 'storeui_wc_api_keys', 'storeui_app_password', 'storeui_debug_mode', 'storeui_license_active', 'storeui_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_application_passwords');

