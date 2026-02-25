<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('suremails_do_redirect');
delete_site_option('suremails_do_redirect');
delete_option('suremails_content_guard_activated');
delete_site_option('suremails_content_guard_activated');
delete_option('suremails_notice_dismissal_time');
delete_site_option('suremails_notice_dismissal_time');
delete_option('suremails_menu_notice_dismissed');
delete_site_option('suremails_menu_notice_dismissed');
delete_option('suremails-version');
delete_site_option('suremails-version');
delete_option('suremails_content_guard_hashes');
delete_site_option('suremails_content_guard_hashes');
delete_option('allowed_astra_notices');
delete_site_option('allowed_astra_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bsf_analytics_last_displayed_time');
delete_site_option('bsf_analytics_last_displayed_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('suremails_content_guard_user_details');
delete_site_option('suremails_content_guard_user_details');
delete_option('suremails_settings');
delete_site_option('suremails_settings');
delete_option('suremails_protection_files_generated');
delete_site_option('suremails_protection_files_generated');

// Delete Transients
delete_transient('bsf_analytics_track');
delete_site_transient('bsf_analytics_track');

// Clear Cron Jobs
wp_clear_scheduled_hook('suremails_cleanup_cron');
wp_clear_scheduled_hook('suremails_weekly_summary');
wp_clear_scheduled_hook('suremails_retry_failed_email');

