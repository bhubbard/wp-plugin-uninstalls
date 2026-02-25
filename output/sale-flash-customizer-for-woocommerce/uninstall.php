<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_sale_flash_customizer_global_enabled');
delete_site_option('alg_wc_sale_flash_customizer_global_enabled');
delete_option('alg_wc_sale_flash_customizer_per_product_enabled');
delete_site_option('alg_wc_sale_flash_customizer_per_product_enabled');
delete_option('alg_wc_sale_flash_customizer_per_product_cat_enabled');
delete_site_option('alg_wc_sale_flash_customizer_per_product_cat_enabled');
delete_option('alg_wc_sale_flash_customizer_per_product_tag_enabled');
delete_site_option('alg_wc_sale_flash_customizer_per_product_tag_enabled');
delete_option('alg_wc_sale_flash_customizer_hide_everywhere');
delete_site_option('alg_wc_sale_flash_customizer_hide_everywhere');
delete_option('alg_wc_sale_flash_customizer_hide_on_archives');
delete_site_option('alg_wc_sale_flash_customizer_hide_on_archives');
delete_option('alg_wc_sale_flash_customizer_hide_on_single');
delete_site_option('alg_wc_sale_flash_customizer_hide_on_single');
delete_option('alg_wc_sale_flash_customizer_global_html');
delete_site_option('alg_wc_sale_flash_customizer_global_html');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_html' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_sale_flash_customizer_version');
delete_site_option('alg_wc_sale_flash_customizer_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

