<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nepali_calendar_admin_notices');
delete_site_option('nepali_calendar_admin_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nepali_calendar_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nepali_calendar_db_version');
delete_site_option('nepali_calendar_db_version');
delete_option('nepali_calendar_file_download_method');
delete_site_option('nepali_calendar_file_download_method');
delete_option('nepali_calendar_version');
delete_site_option('nepali_calendar_version');
delete_option('nepali_calendar_myaccount_page_id');
delete_site_option('nepali_calendar_myaccount_page_id');
delete_option('nepali_calendar_checkout_page_id');
delete_site_option('nepali_calendar_checkout_page_id');

// Delete Transients
delete_transient('nepali_calendar_cache_excluded_uris');
delete_site_transient('nepali_calendar_cache_excluded_uris');
delete_transient('_ur_activation_redirect');
delete_site_transient('_ur_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('nepali_calendar_flush_rewrite_rules');

