-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbpn_settings_v1', 'tbpn_test_results', 'tbpn_activation_notice');

