-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restocknotifierpcprajapat_settings', 'restocknotifierpcprajapat_activation_check', 'restocknotifierpcprajapat_setup_defaults', 'restocknotifierpcprajapat_wc_missing_notice');

