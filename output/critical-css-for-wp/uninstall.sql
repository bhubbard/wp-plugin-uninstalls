-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccfwp_settings', 'ccwp_last_altcron_update', 'ccfwp_current_post', 'ccfwp_scan_urls', 'ccfwp_current_term', 'wp_rocket_settings');

