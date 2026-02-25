-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jmvstream-api-settings', 'jmvstream-general-settings', 'jmvstream_do_activation_redirect', 'jmvstream_auth_token');

