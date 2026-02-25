-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_wpun_settings', 'sc_wpun_settings_ver', 'update_core', 'update_plugins', 'update_themes', 'sc_wpun_send_test_slack', 'sc_wpun_send_test_email');

