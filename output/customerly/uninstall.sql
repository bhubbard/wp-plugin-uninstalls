-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cly_cf7_api_notices_options', 'customerly_settings', 'cly_do_activation_redirect');

