<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpkr_exclude_sites');
delete_site_option('wpkr_exclude_sites');
delete_option('wpkr_googlecalls');
delete_site_option('wpkr_googlecalls');
delete_option('wpkr_ratinglimit');
delete_site_option('wpkr_ratinglimit');
delete_option('wpkr_lastcheck');
delete_site_option('wpkr_lastcheck');
delete_option('wpkr_recheckdays');
delete_site_option('wpkr_recheckdays');
delete_option('wpkr_ignoreposts');
delete_site_option('wpkr_ignoreposts');
delete_option('wpkr_db_version');
delete_site_option('wpkr_db_version');
delete_option('wpkr_token');
delete_site_option('wpkr_token');
delete_option('wpkr_recheckperiod');
delete_site_option('wpkr_recheckperiod');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpkr_lastchecked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpkr_lastchecked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpkr_lastchecked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpkr_lastchecked' ) );

