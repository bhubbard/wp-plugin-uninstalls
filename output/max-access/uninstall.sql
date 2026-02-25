-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ll_at_license', 'toolbar_license_key', 'oada_activation_token', 'license_activated', 'error_message', 'max_access_settings');

