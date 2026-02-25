<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsletter_diagnostic_cron_calls');
delete_site_option('newsletter_diagnostic_cron_calls');
delete_option('newsletter_diagnostic_cron_data');
delete_site_option('newsletter_diagnostic_cron_data');
delete_option('newsletter_dismissed');
delete_site_option('newsletter_dismissed');
delete_option('newsletter_logger_secret');
delete_site_option('newsletter_logger_secret');
delete_option('newsletter_followup');
delete_site_option('newsletter_followup');
delete_option('newsletter_diagnostic_send_calls');
delete_site_option('newsletter_diagnostic_send_calls');
delete_option('newsletter_forms');
delete_site_option('newsletter_forms');
delete_option('newsletter_profile');
delete_site_option('newsletter_profile');
delete_option('newsletter_extension_versions');
delete_site_option('newsletter_extension_versions');
delete_option('newsletter_main');
delete_site_option('newsletter_main');
delete_option('newsletter_emails');
delete_site_option('newsletter_emails');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'newsletter_emails_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dmc_option');
delete_site_option('dmc_option');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_log_level' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_log_level');
delete_site_option('newsletter_log_level');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_first_install_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_available_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_backup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_run' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('newsletter_email');
delete_site_option('newsletter_email');
delete_option('newsletter_diagnostic');
delete_site_option('newsletter_diagnostic');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_cron_calls' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_transient_newsletter_main_engine');
delete_site_option('_transient_newsletter_main_engine');
delete_option('_transient_timeout_newsletter_main_engine');
delete_site_option('_transient_timeout_newsletter_main_engine');
delete_option('newsletter_feed_demo_disable');
delete_site_option('newsletter_feed_demo_disable');
delete_option('digital-media-combined');
delete_site_option('digital-media-combined');
delete_option('newsletter_subscription_template');
delete_site_option('newsletter_subscription_template');
delete_option('newsletter_feed');
delete_site_option('newsletter_feed');

// Delete Transients
delete_transient('newsletter_main_engine');
delete_site_transient('newsletter_main_engine');
delete_transient('template_extensions_json');
delete_site_transient('template_extensions_json');
delete_transient('newsletter_transient_test');
delete_site_transient('newsletter_transient_test');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('digital-media-combined');
wp_clear_scheduled_hook('newsletter_update');
wp_clear_scheduled_hook('newsletter_check_versions');
wp_clear_scheduled_hook('newsletter_statistics_version_check');
wp_clear_scheduled_hook('newsletter_reports_version_check');
wp_clear_scheduled_hook('newsletter_feed_version_check');
wp_clear_scheduled_hook('newsletter_popup_version_check');
wp_clear_scheduled_hook('newsletter_feed');

