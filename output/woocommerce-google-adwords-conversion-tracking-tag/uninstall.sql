-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wgact_plugin_options', 'GTranslate', 'nitropack-siteId', 'nitropack-siteSecret', 'wp_rocket_settings', 'wgact_plugin_options_1', 'wgact_plugin_options_2', 'rewrite_rules', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pmw_tracking_accuracy_analysis', 'pmw_tracking_accuracy_analysis_date', 'pmw_tracking_accuracy_analysis_time', 'pmw_tracking_accuracy_analysis_running', 'pmw_tracking_accuracy_analysis_max_orders', 'pmw_tracking_accuracy_analysis_weighted', 'pmw_tracked_payment_methods', 'pmw_google_tag_id', 'pmw_test_transient', '_pmw_pro_version_demo_active', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'geoip_%';
DELETE FROM wp_options WHERE option_name LIKE 'pmw_products_for_datalayer_%';

