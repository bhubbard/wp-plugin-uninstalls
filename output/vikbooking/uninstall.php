<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('groupsysmessages');
delete_site_option('groupsysmessages');
delete_option('vikbooking_software_version');
delete_site_option('vikbooking_software_version');
delete_option('vikbooking_onactivate');
delete_site_option('vikbooking_onactivate');
delete_option('vikbooking_breaking_changes');
delete_site_option('vikbooking_breaking_changes');
delete_option('vikbooking_screen_failed_attempts');
delete_site_option('vikbooking_screen_failed_attempts');
delete_option('vikbooking_list_limit');
delete_site_option('vikbooking_list_limit');
delete_option('vikbooking_changelog');
delete_site_option('vikbooking_changelog');
delete_option('vikbooking_license_key');
delete_site_option('vikbooking_license_key');
delete_option('vikbooking_license_expdate');
delete_site_option('vikbooking_license_expdate');
delete_option('vikbooking_hide_vcmad');
delete_site_option('vikbooking_hide_vcmad');
delete_option('vikbooking_license_hash');
delete_site_option('vikbooking_license_hash');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vikbooking_tmp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vikbooking_screen_%', '_site_transient_vikbooking_screen_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('vikbooking_cron_payments_scheduled');
wp_clear_scheduled_hook('vikbooking_cron_performance_cleaner');
wp_clear_scheduled_hook('vikbooking_cron_door_access_control');
wp_clear_scheduled_hook('vikbooking_cron_db_optimization');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_rss_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_rss_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vikbooking_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vikbooking_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vikbooking_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vikbooking_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vikbooking_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vikbooking_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vikbooking_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vikbooking_rss_display_dashboard' ) );

