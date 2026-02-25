<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('greenreceipt_notifications_option_name');
delete_site_option('greenreceipt_notifications_option_name');
delete_option('greenreceipt_store_category');
delete_site_option('greenreceipt_store_category');
delete_option('greenreceipt_plugin_do_activation_redirect');
delete_site_option('greenreceipt_plugin_do_activation_redirect');
delete_option('greenreceipt_notifications_db_version');
delete_site_option('greenreceipt_notifications_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('greenreceipt_check_abandoned_carts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'admin_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'admin_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'admin_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'admin_phone' ) );

