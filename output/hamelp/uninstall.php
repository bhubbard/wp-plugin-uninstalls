<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hamelp_rate_require_login');
delete_site_option('hamelp_rate_require_login');
delete_option('hamelp_rate_per_ip');
delete_site_option('hamelp_rate_per_ip');
delete_option('hamelp_rate_daily');
delete_site_option('hamelp_rate_daily');
delete_option('hamelp_rate_window');
delete_site_option('hamelp_rate_window');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_accessibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_accessibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_accessibility' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_accessibility' ) );

