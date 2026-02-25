<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('automatic-product-categories-for-woocommerce');
delete_site_option('automatic-product-categories-for-woocommerce');
delete_option('automatic-product-categories-for-woocommerce-backup');
delete_site_option('automatic-product-categories-for-woocommerce-backup');
delete_option('automatic-product-categories-for-woocommerce-backup-date');
delete_site_option('automatic-product-categories-for-woocommerce-backup-date');
delete_option('default_product_cat');
delete_site_option('default_product_cat');

// Clear Cron Jobs
wp_clear_scheduled_hook('penthouse_apc_daily_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'berrypress_page_automatic_product_categories_for_woocommerce_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'berrypress_page_automatic_product_categories_for_woocommerce_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'berrypress_page_automatic_product_categories_for_woocommerce_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'berrypress_page_automatic_product_categories_for_woocommerce_per_page' ) );

