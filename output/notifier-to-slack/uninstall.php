<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpnts_log_update_done');
delete_site_option('wpnts_log_update_done');
delete_option('wpnts_global_api_settings');
delete_site_option('wpnts_global_api_settings');
delete_option('wps_security_scan_exclusions');
delete_site_option('wps_security_scan_exclusions');
delete_option('wpnts_pro_upgrade_required');
delete_site_option('wpnts_pro_upgrade_required');
delete_option('wpnts_pro_old_version');
delete_site_option('wpnts_pro_old_version');
delete_option('wpnts_pro_upgrade_notice_dismissed');
delete_site_option('wpnts_pro_upgrade_notice_dismissed');
delete_option('maintenance_mode_queries');
delete_site_option('maintenance_mode_queries');
delete_option('wpnts_analytics_settings');
delete_site_option('wpnts_analytics_settings');
delete_option('active_users_data');
delete_site_option('active_users_data');
delete_option('NotifierReviewNotice');
delete_site_option('NotifierReviewNotice');
delete_option('NotifierUpgradeNotice');
delete_site_option('NotifierUpgradeNotice');
delete_option('DefaultNTReviewNoticeInterval');
delete_site_option('DefaultNTReviewNoticeInterval');
delete_option('DefaultNTUpgradeInterval');
delete_site_option('DefaultNTUpgradeInterval');
delete_option('wpnts_captcha_settings');
delete_site_option('wpnts_captcha_settings');
delete_option('wpnts_schedules_interval_woocommerce_settings');
delete_site_option('wpnts_schedules_interval_woocommerce_settings');
delete_option('wpnts_schedules_interval_comment_settings');
delete_site_option('wpnts_schedules_interval_comment_settings');
delete_option('wpnts_total_plugin_updates');
delete_site_option('wpnts_total_plugin_updates');
delete_option('wpnts_activated_plugins');
delete_site_option('wpnts_activated_plugins');
delete_option('wpnts_deactivated_plugins');
delete_site_option('wpnts_deactivated_plugins');
delete_option('wpnts_user_login_info');
delete_site_option('wpnts_user_login_info');
delete_option('wpnts_user_daily_login_info');
delete_site_option('wpnts_user_daily_login_info');
delete_option('wpnts_user_track_failed_login');
delete_site_option('wpnts_user_track_failed_login');
delete_option('wpnts_webhook_site_settings');
delete_site_option('wpnts_webhook_site_settings');
delete_option('wpnts_schedules_maintenannotice_settings');
delete_site_option('wpnts_schedules_maintenannotice_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('wpnts_default_interval');
delete_site_option('wpnts_default_interval');
delete_option('wpnts_schedules_interval_site_settings');
delete_site_option('wpnts_schedules_interval_site_settings');
delete_option('wpnts_plugin_list');
delete_site_option('wpnts_plugin_list');
delete_option('wpnts_review_last_sent_time');
delete_site_option('wpnts_review_last_sent_time');
delete_option('wpnts_last_sent_time');
delete_site_option('wpnts_last_sent_time');
delete_option('wpnts_last_plugin_updates');
delete_site_option('wpnts_last_plugin_updates');
delete_option('wpnts_first_saturday_reset_done');
delete_site_option('wpnts_first_saturday_reset_done');
delete_option('wpnts_db_version');
delete_site_option('wpnts_db_version');
delete_option('wpnts_schedules_interval_debuglog_settings');
delete_site_option('wpnts_schedules_interval_debuglog_settings');
delete_option('wpnts_last_logged_timestamp');
delete_site_option('wpnts_last_logged_timestamp');
delete_option('wpnts_new_last_debug_log_sent_time');
delete_site_option('wpnts_new_last_debug_log_sent_time');
delete_option('notifier_ran_setup_wizard');
delete_site_option('notifier_ran_setup_wizard');
delete_option('wpntswebhook_integration_settings');
delete_site_option('wpntswebhook_integration_settings');
delete_option('wpntswebhook_media_settings');
delete_site_option('wpntswebhook_media_settings');
delete_option('wpntswebhook_menu_settings');
delete_site_option('wpntswebhook_menu_settings');
delete_option('wpnts_review_hicked_last_sent_time');
delete_site_option('wpnts_review_hicked_last_sent_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpnts_review_prev_rating_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpnts_installation_change_last_sent_time');
delete_site_option('wpnts_installation_change_last_sent_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpnts_downloads_prev_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpnts_plugin_info_last_sent_time');
delete_site_option('wpnts_plugin_info_last_sent_time');
delete_option('wpnts_last_reset_activity_log_date');
delete_site_option('wpnts_last_reset_activity_log_date');
delete_option('wpnts_last_sitestatus_updates');
delete_site_option('wpnts_last_sitestatus_updates');
delete_option('wpntswebhook_pagenpost_settings');
delete_site_option('wpntswebhook_pagenpost_settings');
delete_option('wpntswebhook_theme_settings');
delete_site_option('wpntswebhook_theme_settings');
delete_option('wpntswebhook_widget_settings');
delete_site_option('wpntswebhook_widget_settings');
delete_option('setup_wizard_data');
delete_site_option('setup_wizard_data');
delete_option('wpntswebhook_emengency_shutdown');
delete_site_option('wpntswebhook_emengency_shutdown');
delete_option('wpntswebhook_website_downtime_alerts');
delete_site_option('wpntswebhook_website_downtime_alerts');
delete_option('maintenance_mode');
delete_site_option('maintenance_mode');
delete_option('notifier_turnstile_validated');
delete_site_option('notifier_turnstile_validated');
delete_option('security_api_url');
delete_site_option('security_api_url');
delete_option('security_api_key');
delete_site_option('security_api_key');
delete_option('previously_installed_themes');
delete_site_option('previously_installed_themes');
delete_option('wpnts_last_wordpress_core_updates');
delete_site_option('wpnts_last_wordpress_core_updates');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpnts_cron_last_execution_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('NotifierActivationTime');
delete_site_option('NotifierActivationTime');
delete_option('nts_activation_redirect');
delete_site_option('nts_activation_redirect');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('security_patterns_from_api');
delete_site_transient('security_patterns_from_api');
delete_transient('security_patterns_fetching_lock');
delete_site_transient('security_patterns_fetching_lock');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpnts_corn_hook');
wp_clear_scheduled_hook('wpnts_check_cart_abandonment');
wp_clear_scheduled_hook('wpnts_cleanup_old_cart_sessions');
wp_clear_scheduled_hook('wpnts_send_incomplete_order_notification');
wp_clear_scheduled_hook('wpnts_fetch_security_patterns');
wp_clear_scheduled_hook('wpnts_seven_day_analytics_cleanup');
wp_clear_scheduled_hook('wpnts_incomplete_orders_cleanup');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpnts_last_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpnts_last_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpnts_last_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpnts_last_template' ) );

