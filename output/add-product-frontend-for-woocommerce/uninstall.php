<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontend_product_additional_fields');
delete_site_option('frontend_product_additional_fields');
delete_option('frontend_product_status');
delete_site_option('frontend_product_status');
delete_option('frontend_product_category');
delete_site_option('frontend_product_category');
delete_option('frontend_product_user_role');
delete_site_option('frontend_product_user_role');
delete_option('frontend_product_save_update_email');
delete_site_option('frontend_product_save_update_email');
delete_option('frontend_product_save_update_email_admin');
delete_site_option('frontend_product_save_update_email_admin');
delete_option('bytes_permalink_update');
delete_site_option('bytes_permalink_update');
delete_option('woocommerce_install_and_activate_admin_notices');
delete_site_option('woocommerce_install_and_activate_admin_notices');
delete_option('deferred_admin_notices');
delete_site_option('deferred_admin_notices');
delete_option('bytes_plugin_template');
delete_site_option('bytes_plugin_template');
delete_option('bytes_plugin_page_id');
delete_site_option('bytes_plugin_page_id');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

