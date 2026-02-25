<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocketcdn_api_key');
delete_site_option('rocketcdn_api_key');
delete_option('rocketcdn_cdn_url');
delete_site_option('rocketcdn_cdn_url');
delete_option('rocketcdn_previous_cdn_url');
delete_site_option('rocketcdn_previous_cdn_url');
delete_option('rocketcdn_current_version');
delete_site_option('rocketcdn_current_version');
delete_option('rocketcdn_previous_version');
delete_site_option('rocketcdn_previous_version');

// Delete Transients
delete_transient('rocketcdn_customer_data');
delete_site_transient('rocketcdn_customer_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rocketcdn_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rocketcdn_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rocketcdn_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rocketcdn_dismissed_notices' ) );

