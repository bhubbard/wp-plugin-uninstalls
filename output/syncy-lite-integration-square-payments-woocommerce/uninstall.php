<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syncy_square_selected_location');
delete_site_option('syncy_square_selected_location');
delete_option('syncy_autosyncwootosquare');
delete_site_option('syncy_autosyncwootosquare');
delete_option('syncy_autosyncsquaretowoo');
delete_site_option('syncy_autosyncsquaretowoo');
delete_option('syncy_autosync_orders');
delete_site_option('syncy_autosync_orders');
delete_option('syncy_autosync_users');
delete_site_option('syncy_autosync_users');
delete_option('syncy_autosync_order_status');
delete_site_option('syncy_autosync_order_status');
delete_option('syncy_square_to_woo_product_attributes');
delete_site_option('syncy_square_to_woo_product_attributes');
delete_option('syncy_woo_to_square_product_attributes');
delete_site_option('syncy_woo_to_square_product_attributes');
delete_option('syncy_sandbox_mode');
delete_site_option('syncy_sandbox_mode');
delete_option('syncy_square_access_token');
delete_site_option('syncy_square_access_token');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

// Clear Cron Jobs
wp_clear_scheduled_hook('syncy_bulk_stock_update_cron_event');
wp_clear_scheduled_hook('syncy_cron_stock_sync_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'syncy_square_catalog_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'syncy_square_catalog_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'syncy_square_catalog_object_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'syncy_square_catalog_object_id' ) );

