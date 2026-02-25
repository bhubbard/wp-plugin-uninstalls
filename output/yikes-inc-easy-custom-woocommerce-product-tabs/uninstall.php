<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yikes_cpt_use_the_content');
delete_site_option('yikes_cpt_use_the_content');
delete_option('yikes_woo_reusable_products_tabs_applied');
delete_site_option('yikes_woo_reusable_products_tabs_applied');
delete_option('yikes_woo_reusable_products_tabs');
delete_site_option('yikes_woo_reusable_products_tabs');
delete_option('yikes_woocommerce_custom_product_tabs_db_version');
delete_site_option('yikes_woocommerce_custom_product_tabs_db_version');
delete_option('custom_product_tabs_onesixone_data_update');
delete_site_option('custom_product_tabs_onesixone_data_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yikes_woo_products_tabs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yikes_woo_products_tabs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yikes_woo_products_tabs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yikes_woo_products_tabs' ) );

