-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fwc_settings', 'fwc_settings_statistics', 'fwc_count_times', 'fwc_count_users');

