-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'linkt_options', 'linkt_default_options', 'wpt_linkt_setting_track_admin', 'wpt_linkt_setting_url_ext', 'linkt_plugin_version', 'linkt_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_linkt_url_params', '_linkt_social_title', '_linkt_social_desc', '_linkt_social_image', '_linkt_redirect', '_linkt_social_url', '_linkt_social_type', 'linkt_total_clicks', '_linkt_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_linkt_url_params', '_linkt_social_title', '_linkt_social_desc', '_linkt_social_image', '_linkt_redirect', '_linkt_social_url', '_linkt_social_type', 'linkt_total_clicks', '_linkt_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_linkt_url_params', '_linkt_social_title', '_linkt_social_desc', '_linkt_social_image', '_linkt_redirect', '_linkt_social_url', '_linkt_social_type', 'linkt_total_clicks', '_linkt_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_linkt_url_params', '_linkt_social_title', '_linkt_social_desc', '_linkt_social_image', '_linkt_redirect', '_linkt_social_url', '_linkt_social_type', 'linkt_total_clicks', '_linkt_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

