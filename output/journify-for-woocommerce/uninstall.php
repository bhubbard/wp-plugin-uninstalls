<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('journify_wc_track_purchase');
delete_site_option('journify_wc_track_purchase');
delete_option('journify_wc_track_begin_checkout');
delete_site_option('journify_wc_track_begin_checkout');
delete_option('journify_wc_track_add_to_cart');
delete_site_option('journify_wc_track_add_to_cart');
delete_option('journify_wc_track_view_item');
delete_site_option('journify_wc_track_view_item');
delete_option('journify_wc_track_view_item_list');
delete_site_option('journify_wc_track_view_item_list');
delete_option('journify_wc_track_search');
delete_site_option('journify_wc_track_search');
delete_option('journify_wc_track_add_payment_info');
delete_site_option('journify_wc_track_add_payment_info');
delete_option('journify_wc_track_login');
delete_site_option('journify_wc_track_login');
delete_option('journify_wc_track_sign_up');
delete_site_option('journify_wc_track_sign_up');
delete_option('journify_wc_write_key');
delete_site_option('journify_wc_write_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'journify_track_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'journify_track_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'journify_track_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'journify_track_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'journify_track_sign_up' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'journify_track_sign_up' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'journify_track_sign_up' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'journify_track_sign_up' ) );

