<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('f12_cf7_captcha_installed_at');
delete_site_option('f12_cf7_captcha_installed_at');
delete_option('f12_cf7_captcha_installation_uuid');
delete_site_option('f12_cf7_captcha_installation_uuid');
delete_option('f12_cf7_captcha_telemetry_counters');
delete_site_option('f12_cf7_captcha_telemetry_counters');
delete_option('f12-cf7-captcha-settings');
delete_site_option('f12-cf7-captcha-settings');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('f12_cf7_captcha_review_dismissed');
delete_site_option('f12_cf7_captcha_review_dismissed');
delete_option('f12_cf7_captcha_review_remind_later');
delete_site_option('f12_cf7_captcha_review_remind_later');
delete_option('f12_cf7_captcha_review_remind_count');
delete_site_option('f12_cf7_captcha_review_remind_count');
delete_option('f12_cf7_ip_ban_enabled');
delete_site_option('f12_cf7_ip_ban_enabled');
delete_option('f12-cf7-captcha_version');
delete_site_option('f12-cf7-captcha_version');
delete_option('f12_captcha_settings');
delete_site_option('f12_captcha_settings');
delete_option('f12-cf7-captcha-settings-backup');
delete_site_option('f12-cf7-captcha-settings-backup');
delete_option('f12-cf7-captcha-form-overrides');
delete_site_option('f12-cf7-captcha-form-overrides');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('f12_cf7_captcha_daily_telemetry');
wp_clear_scheduled_hook('weeklyIPClear');
wp_clear_scheduled_hook('dailyCaptchaClear');
wp_clear_scheduled_hook('dailyCaptchaTimerClear');
wp_clear_scheduled_hook('f12_captcha_pool_fill');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fusion_builder_status' ) );

