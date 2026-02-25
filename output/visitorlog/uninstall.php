<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('visitorlog_run_quick_setup');
delete_site_option('visitorlog_run_quick_setup');
delete_option('visitorlog_err_tables');
delete_site_option('visitorlog_err_tables');
delete_option('visitorlog_error_options');
delete_site_option('visitorlog_error_options');
delete_option('visitorlog_copy_images');
delete_site_option('visitorlog_copy_images');
delete_option('visitorlog_copy_lang');
delete_site_option('visitorlog_copy_lang');
delete_option('visitorlog_count_options');
delete_site_option('visitorlog_count_options');
delete_option('visitorlog_count_tables');
delete_site_option('visitorlog_count_tables');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_visitorlog_captcha_string_info_%', '_site_transient_visitorlog_captcha_string_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('visitorlog_cron_backups');
wp_clear_scheduled_hook('visitorlog_login_captcha');
wp_clear_scheduled_hook('visitorlog_check_system');
wp_clear_scheduled_hook('visitorlog_activity_test');
wp_clear_scheduled_hook('visitorlog_cron_backups_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_time' ) );

