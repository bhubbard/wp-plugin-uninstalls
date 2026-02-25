<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_sku_for_woocommerce_enabled');
delete_site_option('alg_sku_for_woocommerce_enabled');
delete_option('alg_sku_new_products_generate_enabled');
delete_site_option('alg_sku_new_products_generate_enabled');
delete_option('alg_sku_for_woocommerce_allow_duplicates');
delete_site_option('alg_sku_for_woocommerce_allow_duplicates');
delete_option('alg_sku_for_woocommerce_search_enabled');
delete_site_option('alg_sku_for_woocommerce_search_enabled');
delete_option('alg_sku_for_woocommerce_search_algorithm');
delete_site_option('alg_sku_for_woocommerce_search_algorithm');
delete_option('alg_sku_add_to_customer_emails');
delete_site_option('alg_sku_add_to_customer_emails');
delete_option('alg_sku_categories_enabled');
delete_site_option('alg_sku_categories_enabled');
delete_option('alg_sku_tags_enabled');
delete_site_option('alg_sku_tags_enabled');
delete_option('alg_sku_for_woocommerce_number_generation_sequential');
delete_site_option('alg_sku_for_woocommerce_number_generation_sequential');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_sku_sequential_cat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_sku_for_woocommerce_variations_handling');
delete_site_option('alg_sku_for_woocommerce_variations_handling');
delete_option('alg_sku_new_products_generate_only_on_publish');
delete_site_option('alg_sku_new_products_generate_only_on_publish');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_sku_generate_only_for_empty_sku');
delete_site_option('alg_sku_generate_only_for_empty_sku');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_sku_suffix_cat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_sku_suffix_tag_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_sku_for_woocommerce_template');
delete_site_option('alg_sku_for_woocommerce_template');
delete_option('alg_sku_for_woocommerce_prefix');
delete_site_option('alg_sku_for_woocommerce_prefix');
delete_option('alg_sku_for_woocommerce_minimum_number_length');
delete_site_option('alg_sku_for_woocommerce_minimum_number_length');
delete_option('alg_sku_for_woocommerce_suffix');
delete_site_option('alg_sku_for_woocommerce_suffix');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_sku_generator_version');
delete_site_option('alg_sku_generator_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

