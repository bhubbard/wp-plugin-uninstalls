<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbbttm_fbbttm-shop_page_id');
delete_site_option('fbbttm_fbbttm-shop_page_id');
delete_option('fbbttm_fbbttm-cart_page_id');
delete_site_option('fbbttm_fbbttm-cart_page_id');
delete_option('fbbttm_fbbttm-checkout_page_id');
delete_site_option('fbbttm_fbbttm-checkout_page_id');
delete_option('fbbttm_fbbttm-myaccount_page_id');
delete_site_option('fbbttm_fbbttm-myaccount_page_id');
delete_option('fbbttm_fbbttm-order-received_page_id');
delete_site_option('fbbttm_fbbttm-order-received_page_id');
delete_option('fbbttm_db_version');
delete_site_option('fbbttm_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fbbttmprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fbbttmprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fbbttmprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fbbttmprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'themetechmount_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'themetechmount_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'themetechmount_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'themetechmount_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fbbttm_fbbttm_foodboxbooker_fooditems_list_data' ) );

