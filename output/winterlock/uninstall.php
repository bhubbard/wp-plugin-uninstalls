<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wal_checkbox_enable_winterlock_dash_styles');
delete_site_option('wal_checkbox_enable_winterlock_dash_styles');
delete_option('wal_allowed_admins');
delete_site_option('wal_allowed_admins');
delete_option('wal_allowed_roles');
delete_site_option('wal_allowed_roles');
delete_option('sw_wal_log_events_options');
delete_site_option('sw_wal_log_events_options');
delete_option('wal_log_hide_columns');
delete_site_option('wal_log_hide_columns');
delete_option('winter-activity-log-menuitems');
delete_site_option('winter-activity-log-menuitems');
delete_option('winter-activity-log-submenuitems');
delete_site_option('winter-activity-log-submenuitems');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%log_days' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_failed_login_block' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wal_checkbox_disable_hints');
delete_site_option('wal_checkbox_disable_hints');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_log_plugin_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_log_cron_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_log_level_1_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_log_level_2_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_log_level_3_disable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_disable_multilogin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_hide_ip' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%checkbox_enable_winterlock_dash_styles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wal_db_version');
delete_site_option('wal_db_version');
delete_option('wal_checkbox_disable_multilogin');
delete_site_option('wal_checkbox_disable_multilogin');
delete_option('wal_log_only_roles');
delete_site_option('wal_log_only_roles');
delete_option('wal_checkbox_failed_login_block');
delete_site_option('wal_checkbox_failed_login_block');
delete_option('wal_checkbox_log_level_1_disable');
delete_site_option('wal_checkbox_log_level_1_disable');
delete_option('wal_checkbox_log_level_2_disable');
delete_site_option('wal_checkbox_log_level_2_disable');
delete_option('wal_checkbox_log_level_3_disable');
delete_site_option('wal_checkbox_log_level_3_disable');
delete_option('wal_checkbox_log_plugin_disable');
delete_site_option('wal_checkbox_log_plugin_disable');
delete_option('wal_checkbox_log_cron_disable');
delete_site_option('wal_checkbox_log_cron_disable');
delete_option('wal_log_days');
delete_site_option('wal_log_days');
delete_option('wal_checkbox_hide_ip');
delete_site_option('wal_checkbox_hide_ip');
delete_option('winterlock_reviews_installed_on');
delete_site_option('winterlock_reviews_installed_on');
delete_option('winterlock_total_open_count');
delete_site_option('winterlock_total_open_count');
delete_option('wal_checkbox_disable_dashwidgets');
delete_site_option('wal_checkbox_disable_dashwidgets');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('wal_clickatell_one_api_key');
delete_site_option('wal_clickatell_one_api_key');
delete_option('wal_clickatell_http_api_key');
delete_site_option('wal_clickatell_http_api_key');
delete_option('wal_smsapicom_http_api_key');
delete_site_option('wal_smsapicom_http_api_key');
delete_option('wal_smsto_api_key');
delete_site_option('wal_smsto_api_key');
delete_option('winter_mvc_active_plugins');
delete_site_option('winter_mvc_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('wal_my_hourly_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_winterlock_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_winterlock_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_winterlock_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_winterlock_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_winterlock_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_winterlock_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_winterlock_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_winterlock_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_winterlock_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_winterlock_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_winterlock_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_winterlock_reviews_already_did' ) );

