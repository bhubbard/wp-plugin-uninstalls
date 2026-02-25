-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('301_redirects_wildcard', 'simple301redirects_hide_btl_notice', '301_redirects', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'simple301redirects_version', 'simple_301_redirects_import_info');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';

