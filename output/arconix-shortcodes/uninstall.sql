-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shortcodes_version', 'ts_reset_tracking', 'wcap_restrict_domain_address', 'active_TS_plugins', 'shortcodes_allow_tracking');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_ts_tracker_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown_time';

