-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_guest_order_tracking_version', 'alg_wc_guest_order_tracking_plugin_enabled', 'alg_gotwc_track_page_url');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

