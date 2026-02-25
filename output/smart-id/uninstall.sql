-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartid_client_id', 'smartid_debug_mode', 'smartid_registration_disabled', 'eideasy_only_identify', 'eideasy_test_mode', 'smartid_secret', 'smartid_redirect_uri');

