-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themexpo_installed', 'themexpo_version', 'tx_setting_option_name');

