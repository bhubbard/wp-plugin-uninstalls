<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('happy_ads_settings');
delete_site_option('happy_ads_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('happy_ads_version');
delete_site_option('happy_ads_version');
delete_option('happy_ads_install_date');
delete_site_option('happy_ads_install_date');

// Delete Transients
delete_transient('happy_ads_api_connected');
delete_site_transient('happy_ads_api_connected');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'happy_ads_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'happy_ads_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'happy_ads_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'happy_ads_dismissed_notices' ) );

