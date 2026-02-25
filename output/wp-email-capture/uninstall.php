<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_email_capture_theme_affiliate_link');
delete_site_option('wp_email_capture_theme_affiliate_link');
delete_option('wp_email_capture_name_required');
delete_site_option('wp_email_capture_name_required');
delete_option('wp_email_capture_recaptcha_client_api_key');
delete_site_option('wp_email_capture_recaptcha_client_api_key');
delete_option('wp_email_capture_recaptcha_server_api_key');
delete_site_option('wp_email_capture_recaptcha_server_api_key');
delete_option('wp_email_capture_link');
delete_site_option('wp_email_capture_link');
delete_option('wp_email_capture_default_styling');
delete_site_option('wp_email_capture_default_styling');
delete_option('wp_email_capture_name_delimeter');
delete_site_option('wp_email_capture_name_delimeter');
delete_option('wp_email_capture_signup');
delete_site_option('wp_email_capture_signup');
delete_option('wp_email_capture_redirection');
delete_site_option('wp_email_capture_redirection');
delete_option('wp_email_capture_send_email_html');
delete_site_option('wp_email_capture_send_email_html');
delete_option('dismissed-wp_email_capture_mysql_deprecated');
delete_site_option('dismissed-wp_email_capture_mysql_deprecated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_email_capture_enable_gdpr');
delete_site_option('wp_email_capture_enable_gdpr');
delete_option('wp_email_capture_unit_for_privacy');
delete_site_option('wp_email_capture_unit_for_privacy');
delete_option('wp_email_capture_number_for_privacy');
delete_site_option('wp_email_capture_number_for_privacy');
delete_option('wp_email_capture_db_version');
delete_site_option('wp_email_capture_db_version');
delete_option('wp_email_capture_from');
delete_site_option('wp_email_capture_from');
delete_option('wp_email_capture_from_name');
delete_site_option('wp_email_capture_from_name');
delete_option('wp_email_capture_subject');
delete_site_option('wp_email_capture_subject');
delete_option('wp_email_capture_body');
delete_site_option('wp_email_capture_body');
delete_option('wp_email_capture_disabled_headers');
delete_site_option('wp_email_capture_disabled_headers');
delete_option('wp_email_capture_recaptcha_api_type');
delete_site_option('wp_email_capture_recaptcha_api_type');
delete_option('WPEC_Tracking_Hash');
delete_site_option('WPEC_Tracking_Hash');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_email_capture_hourly');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_email_capture_setup_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_email_capture_setup_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_email_capture_setup_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_email_capture_setup_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_email_capture_upsell_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_email_capture_upsell_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_email_capture_upsell_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_email_capture_upsell_ignore' ) );

