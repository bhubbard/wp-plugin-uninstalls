<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sl_trans_API_key');
delete_site_option('sl_trans_API_key');
delete_option('sl_trans_API_secret');
delete_site_option('sl_trans_API_secret');
delete_option('sl_trans_ID');
delete_site_option('sl_trans_ID');
delete_option('sl_trans_google_apikey');
delete_site_option('sl_trans_google_apikey');
delete_option('sl_trans_google_prid');
delete_site_option('sl_trans_google_prid');
delete_option('sl_trans_timing_check');
delete_site_option('sl_trans_timing_check');
delete_option('sl_trans_type_check');
delete_site_option('sl_trans_type_check');
delete_option('sl_trans_tax_check');
delete_site_option('sl_trans_tax_check');
delete_option('sl_trans_engine');
delete_site_option('sl_trans_engine');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sl_trans_newPost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sl_trans_newPost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sl_trans_newPost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sl_trans_newPost' ) );

