-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forcefield_wbvulndb_verified', 'forcefield', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'forcefield_server_ip', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'wordquest_plugin_info', 'wordquest_guides_feed', 'wordquest_quest_feed', 'pluginreview_newest_feed', 'prn_feed', 'pluginreview_updated_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options';
DELETE FROM wp_options WHERE option_name LIKE '%_first_install';
DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off';

