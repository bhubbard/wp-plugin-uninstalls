<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urbanpush_password');
delete_site_option('urbanpush_password');
delete_option('urbanpush_appname');
delete_site_option('urbanpush_appname');
delete_option('urbanpush_appkey');
delete_site_option('urbanpush_appkey');
delete_option('urbanpush_appmaster');
delete_site_option('urbanpush_appmaster');
delete_option('urbanpush_appname2');
delete_site_option('urbanpush_appname2');
delete_option('urbanpush_appkey2');
delete_site_option('urbanpush_appkey2');
delete_option('urbanpush_appmaster2');
delete_site_option('urbanpush_appmaster2');
delete_option('urbanpush_appname3');
delete_site_option('urbanpush_appname3');
delete_option('urbanpush_appkey3');
delete_site_option('urbanpush_appkey3');
delete_option('urbanpush_appmaster3');
delete_site_option('urbanpush_appmaster3');
delete_option('urbanpush_appname4');
delete_site_option('urbanpush_appname4');
delete_option('urbanpush_appkey4');
delete_site_option('urbanpush_appkey4');
delete_option('urbanpush_appmaster4');
delete_site_option('urbanpush_appmaster4');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'push sent for %' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'push sent for %' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'push sent for %' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'push sent for %' ) );

