<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('retailcrm_integration_payments');
delete_site_option('retailcrm_integration_payments');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('retailcrm_active_in_crm');
delete_site_option('retailcrm_active_in_crm');
delete_option('woocommerce_enable_coupons');
delete_site_option('woocommerce_enable_coupons');
delete_option('retailcrm_client_id');
delete_site_option('retailcrm_client_id');
delete_option('retailcrm_customers_history_since_id');
delete_site_option('retailcrm_customers_history_since_id');
delete_option('retailcrm_orders_history_since_id');
delete_site_option('retailcrm_orders_history_since_id');
delete_option('woocommerce_shipping_tax_class');
delete_site_option('woocommerce_shipping_tax_class');

// Clear Cron Jobs
wp_clear_scheduled_hook('retailcrm_inventories');
wp_clear_scheduled_hook('retailcrm_history');
wp_clear_scheduled_hook('retailcrm_icml');
wp_clear_scheduled_hook('retailcrm_loyalty_upload_price');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

