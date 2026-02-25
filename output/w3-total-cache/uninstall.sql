-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w3tc_browsercache_flush_timestamp', 'w3tc_state', 'w3tc_alwayscached_worker_timestamp', 'w3tc_alwayscached_wp_cron_time', 'w3tc_alwayscached_wp_cron_interval', 'w3tc_nr_frontend_response_time', 'w3tc_nr_browser_applications', 'w3tc_nr_account_id', 'w3tc_nr_application_id', 'icl_sitepress_settings', 'w3tc_extensions_hooks', 'w3tc_message', 'w3tc_post_update_generic_tasks_ran_versions', 'w3tc_cached_notices', 'w3tc_setupguide_completed', 'w3tc_install_date', 'w3tc_post_update_admin_tasks_ran_versions', 'w3tc_post_update_tasks_ran_versions', 'active_sitewide_plugins', 'w3tc_remove_data', 'license_update_messages', 'w3tcps_refresh_fail', 'w3tcps_refresh_fail_message', 'w3tcps_authorize_success', 'w3tcps_authorize_fail', 'w3tcps_authorize_fail_message', 'w3tcps_revoke_fail', 'w3tcps_revoke_fail_message', 'w3tc_pgcache_prime_offset', 'w3tc_generic_widgetservices', 'w3tc_stats_history_access_log', 'w3tc_stats_history', 'w3tc_stats_hotspot_start', 'w3tc_dashboard_widget_options', 'w3tc_cdn_google_drive_folder_ids', 'w3tc_cdn_error', 'w3tc_remove_add_in_dbcache', 'w3tc_cloudflare_stats', 'w3tc_imageservice_limited', 'w3tc_imageservice_usage', 'w3tc_activation_imageservice', 'w3tc_nr_widgetdata_basic', 'w3tc_remove_add_in_pgcache', 'w3tc_license_status', 'w3tc.verify_plugins', 'w3tc_ustats_minify_size', 'w3tc_remove_add_in_objectcache', 'w3tc_ustats_pagecache_size', 'w3tc_config_changes');
DELETE FROM wp_options WHERE option_name LIKE 'w3tc_minify_filter_%';
DELETE FROM wp_options WHERE option_name LIKE 'w3tc_minify_%';
DELETE FROM wp_options WHERE option_name LIKE 'w3tc_pagespeed_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'w3tc_activation_%';
DELETE FROM wp_options WHERE option_name LIKE 'w3tc_remove_add_in_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'w3tc_imageservice', 'w3tc_imageservice_file', 'w3tc_features_seen', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'w3tc_imageservice', 'w3tc_imageservice_file', 'w3tc_features_seen', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'w3tc_imageservice', 'w3tc_imageservice_file', 'w3tc_features_seen', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'w3tc_imageservice', 'w3tc_imageservice_file', 'w3tc_features_seen', '_wp_page_template');

