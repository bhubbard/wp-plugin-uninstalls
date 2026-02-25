-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ni_isJsonValid', 'ni_settings_request_url', 'ni_settings_request_type', 'ni_settings_request_authtype', 'ni_settings_request_username', 'ni_settings_request_password', 'ni_settings_headers', 'ni_settings_fields', 'ni_settings_post_type', 'ni_settings_arraykey', 'ni_settings_titlekey', 'ni_settings_descriptionkey', 'ni_settings_datekey', 'ni_settings_post_status', 'ni_responseKeys');

