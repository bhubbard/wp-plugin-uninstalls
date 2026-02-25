<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_global_shop_discount_plugin_enabled');
delete_site_option('alg_wc_global_shop_discount_plugin_enabled');
delete_option('alg_wc_global_shop_discount_load_in_admin');
delete_site_option('alg_wc_global_shop_discount_load_in_admin');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_global_shop_discount_taxonomies');
delete_site_option('alg_wc_global_shop_discount_taxonomies');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_global_shop_discount_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_global_shop_discount_stop_on_first_discount_group');
delete_site_option('alg_wc_global_shop_discount_stop_on_first_discount_group');
delete_option('alg_wc_global_shop_discount_cache_product_prices');
delete_site_option('alg_wc_global_shop_discount_cache_product_prices');
delete_option('alg_wc_global_shop_discount_tool_save_all_products');
delete_site_option('alg_wc_global_shop_discount_tool_save_all_products');
delete_option('alg_wc_global_shop_discount_tool_delete_transients');
delete_site_option('alg_wc_global_shop_discount_tool_delete_transients');
delete_option('alg_wc_global_shop_discount_version');
delete_site_option('alg_wc_global_shop_discount_version');
delete_option('alg_wc_global_shop_discount_admin_title');
delete_site_option('alg_wc_global_shop_discount_admin_title');
delete_option('alg_wc_global_shop_discount_taxonomies_orderby');
delete_site_option('alg_wc_global_shop_discount_taxonomies_orderby');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_alg_wc_gsd_products_%', '_site_transient_alg_wc_gsd_products_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('alg_wc_gsd_products_onsale');
delete_site_transient('alg_wc_gsd_products_onsale');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

