<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_goodfootdelivery_debug_mode');
delete_site_option('wc_goodfootdelivery_debug_mode');
delete_option('wc_goodfootdelivery_api_username');
delete_site_option('wc_goodfootdelivery_api_username');
delete_option('wc_goodfootdelivery_api_email');
delete_site_option('wc_goodfootdelivery_api_email');
delete_option('wc_goodfootdelivery_api_user_id');
delete_site_option('wc_goodfootdelivery_api_user_id');
delete_option('wc_goodfootdelivery_environment');
delete_site_option('wc_goodfootdelivery_environment');
delete_option('wc_goodfootdelivery_auto_complete_shipped_orders');
delete_site_option('wc_goodfootdelivery_auto_complete_shipped_orders');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_shipwire_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_shipwire_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_shipwire_manage_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_shipwire_manage_stock' ) );

