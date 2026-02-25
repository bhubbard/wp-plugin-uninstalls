<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_aitrillion_api_key');
delete_site_option('_aitrillion_api_key');
delete_option('_aitrillion_api_password');
delete_site_option('_aitrillion_api_password');
delete_option('_aitrillion_script_url');
delete_site_option('_aitrillion_script_url');
delete_option('_aitrillion_affiliate_module');
delete_site_option('_aitrillion_affiliate_module');
delete_option('_aitrillion_created_orders');
delete_site_option('_aitrillion_created_orders');
delete_option('_aitrillion_updated_orders');
delete_site_option('_aitrillion_updated_orders');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('aitrillion_data_sync_schedule_time');
delete_site_option('aitrillion_data_sync_schedule_time');
delete_option('_aitrillion_created_users');
delete_site_option('_aitrillion_created_users');
delete_option('_aitrillion_failed_sync_users');
delete_site_option('_aitrillion_failed_sync_users');
delete_option('_aitrillion_updated_users');
delete_site_option('_aitrillion_updated_users');
delete_option('_aitrillion_deleted_users');
delete_site_option('_aitrillion_deleted_users');
delete_option('_aitrillion_created_products');
delete_site_option('_aitrillion_created_products');
delete_option('_aitrillion_failed_sync_products');
delete_site_option('_aitrillion_failed_sync_products');
delete_option('_aitrillion_updated_products');
delete_site_option('_aitrillion_updated_products');
delete_option('_aitrillion_deleted_products');
delete_site_option('_aitrillion_deleted_products');
delete_option('_aitrillion_created_categories');
delete_site_option('_aitrillion_created_categories');
delete_option('_aitrillion_failed_sync_categories');
delete_site_option('_aitrillion_failed_sync_categories');
delete_option('_aitrillion_updated_categories');
delete_site_option('_aitrillion_updated_categories');
delete_option('_aitrillion_deleted_categories');
delete_site_option('_aitrillion_deleted_categories');
delete_option('_aitrillion_failed_sync_orders');
delete_site_option('_aitrillion_failed_sync_orders');
delete_option('_aitrillion_deleted_orders');
delete_site_option('_aitrillion_deleted_orders');
delete_option('_aitrillion_failed_sync_order');
delete_site_option('_aitrillion_failed_sync_order');
delete_option('_aitrillion_shop_updated');
delete_site_option('_aitrillion_shop_updated');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('_aitrillion_script_version');
delete_site_option('_aitrillion_script_version');
delete_option('_aitrillion_block_loyalty_members');
delete_site_option('_aitrillion_block_loyalty_members');

// Clear Cron Jobs
wp_clear_scheduled_hook('aitrillion_data_sync_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_user_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_product_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_product_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_product_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_product_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_category_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_category_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_category_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_category_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_order_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_order_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_order_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_order_sync' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aitrillion_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aitrillion_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aitrillion_sync_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aitrillion_sync_date' ) );

