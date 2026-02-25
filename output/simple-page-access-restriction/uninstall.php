<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_simple_par_subscription_shown');
delete_site_option('ps_simple_par_subscription_shown');
delete_option('ps_simple_par_review_time');
delete_site_option('ps_simple_par_review_time');
delete_option('ps_simple_par_dismiss_review_notice');
delete_site_option('ps_simple_par_dismiss_review_notice');
delete_option('ps_simple_par_settings');
delete_site_option('ps_simple_par_settings');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'page_access_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'page_access_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'page_access_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'page_access_restricted' ) );

