-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primail_api_debug_enabled', 'primail_api_test_key', 'primail_api_key', 'primail_default_from_name', 'primail_default_from_email');

