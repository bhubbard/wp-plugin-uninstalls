<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');
delete_option('vikrestaurants_software_version');
delete_site_option('vikrestaurants_software_version');
delete_option('vikrestaurants_onactivate');
delete_site_option('vikrestaurants_onactivate');
delete_option('vikrestaurants_breaking_changes');
delete_site_option('vikrestaurants_breaking_changes');
delete_option('vikrestaurants_screen_failed_attempts');
delete_site_option('vikrestaurants_screen_failed_attempts');
delete_option('vikrestaurants_list_limit');
delete_site_option('vikrestaurants_list_limit');
delete_option('vikrestaurants_changelog');
delete_site_option('vikrestaurants_changelog');
delete_option('vikrestaurants_license_key');
delete_site_option('vikrestaurants_license_key');
delete_option('vikrestaurants_license_expdate');
delete_site_option('vikrestaurants_license_expdate');
delete_option('vikrestaurants_license_hash');
delete_site_option('vikrestaurants_license_hash');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vikrestaurants_screen_%', '_site_transient_vikrestaurants_screen_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vikrestaurants_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vikrestaurants_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vikrestaurants_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vikrestaurants_rss_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vikrestaurants_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vikrestaurants_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vikrestaurants_rss_display_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vikrestaurants_rss_display_dashboard' ) );

