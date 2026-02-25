-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpnts_log_update_done', 'wpnts_global_api_settings', 'wps_security_scan_exclusions', 'wpnts_pro_upgrade_required', 'wpnts_pro_old_version', 'wpnts_pro_upgrade_notice_dismissed', 'maintenance_mode_queries', 'wpnts_analytics_settings', 'active_users_data', 'NotifierReviewNotice', 'NotifierUpgradeNotice', 'DefaultNTReviewNoticeInterval', 'DefaultNTUpgradeInterval', 'wpnts_captcha_settings', 'wpnts_schedules_interval_woocommerce_settings', 'wpnts_schedules_interval_comment_settings', 'wpnts_total_plugin_updates', 'wpnts_activated_plugins', 'wpnts_deactivated_plugins', 'wpnts_user_login_info', 'wpnts_user_daily_login_info', 'wpnts_user_track_failed_login', 'wpnts_webhook_site_settings', 'wpnts_schedules_maintenannotice_settings', 'active_sitewide_plugins', 'woocommerce_custom_orders_table_enabled', 'wpnts_default_interval', 'wpnts_schedules_interval_site_settings', 'wpnts_plugin_list', 'wpnts_review_last_sent_time', 'wpnts_last_sent_time', 'wpnts_last_plugin_updates', 'wpnts_first_saturday_reset_done', 'wpnts_db_version', 'wpnts_schedules_interval_debuglog_settings', 'wpnts_last_logged_timestamp', 'wpnts_new_last_debug_log_sent_time', 'notifier_ran_setup_wizard', 'wpntswebhook_integration_settings', 'wpntswebhook_media_settings', 'wpntswebhook_menu_settings', 'wpnts_review_hicked_last_sent_time', 'wpnts_installation_change_last_sent_time', 'wpnts_plugin_info_last_sent_time', 'wpnts_last_reset_activity_log_date', 'wpnts_last_sitestatus_updates', 'wpntswebhook_pagenpost_settings', 'wpntswebhook_theme_settings', 'wpntswebhook_widget_settings', 'setup_wizard_data');
DELETE FROM wp_options WHERE option_name IN ('wpntswebhook_emengency_shutdown', 'wpntswebhook_website_downtime_alerts', 'maintenance_mode', 'notifier_turnstile_validated', 'security_api_url', 'security_api_key', 'previously_installed_themes', 'wpnts_last_wordpress_core_updates', 'NotifierActivationTime', 'nts_activation_redirect', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'health-check-site-status-result', 'update_plugins', 'security_patterns_from_api', 'security_patterns_fetching_lock', 'update_core', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wpnts_review_prev_rating_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpnts_downloads_prev_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpnts_cron_last_execution_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wpnts_last_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wpnts_last_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wpnts_last_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wpnts_last_template');

