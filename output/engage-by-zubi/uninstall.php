<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ebz_tracker_key');
delete_site_option('ebz_tracker_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ebz_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ebz_user_token');
delete_site_option('ebz_user_token');
delete_option('etKey');
delete_site_option('etKey');
delete_option('euKey');
delete_site_option('euKey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hook' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_shortcode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ebz_use_square_img');
delete_site_option('ebz_use_square_img');
delete_option('ebz_store_name');
delete_site_option('ebz_store_name');
delete_option('ebz_is_disabled');
delete_site_option('ebz_is_disabled');
delete_option('ebz_is_debug');
delete_site_option('ebz_is_debug');
delete_option('ebz_img_size');
delete_site_option('ebz_img_size');
delete_option('ebz_prod_rec_position');
delete_site_option('ebz_prod_rec_position');
delete_option('ebz_cat_rec_position');
delete_site_option('ebz_cat_rec_position');
delete_option('ebz_start_rec_position');
delete_site_option('ebz_start_rec_position');
delete_option('ebz_checkout_rec_position');
delete_site_option('ebz_checkout_rec_position');
delete_option('ebz_search_rec_position');
delete_site_option('ebz_search_rec_position');
delete_option('ebz_cart_rec_position');
delete_site_option('ebz_cart_rec_position');
delete_option('ebz_minicart_rec_position');
delete_site_option('ebz_minicart_rec_position');
delete_option('ebz_css_prod_rec_display');
delete_site_option('ebz_css_prod_rec_display');
delete_option('ebz_css_cat_rec_display');
delete_site_option('ebz_css_cat_rec_display');
delete_option('ebz_css_start_rec_display');
delete_site_option('ebz_css_start_rec_display');
delete_option('ebz_css_checkout_rec_display');
delete_site_option('ebz_css_checkout_rec_display');
delete_option('ebz_css_search_rec_display');
delete_site_option('ebz_css_search_rec_display');
delete_option('ebz_css_cart_rec_display');
delete_site_option('ebz_css_cart_rec_display');
delete_option('ebz_css_minicart_rec_display');
delete_site_option('ebz_css_minicart_rec_display');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('ebz_woocommerce_before_single_product');
delete_site_option('ebz_woocommerce_before_single_product');
delete_option('ebz_woocommerce_before_single_product_summary');
delete_site_option('ebz_woocommerce_before_single_product_summary');
delete_option('ebz_woocommerce_product_thumbnails');
delete_site_option('ebz_woocommerce_product_thumbnails');
delete_option('ebz_woocommerce_single_product_summary');
delete_site_option('ebz_woocommerce_single_product_summary');
delete_option('ebz_woocommerce_before_add_to_cart_form');
delete_site_option('ebz_woocommerce_before_add_to_cart_form');
delete_option('ebz_woocommerce_before_variations_form');
delete_site_option('ebz_woocommerce_before_variations_form');
delete_option('ebz_woocommerce_before_add_to_cart_button');
delete_site_option('ebz_woocommerce_before_add_to_cart_button');
delete_option('ebz_woocommerce_single_variation');
delete_site_option('ebz_woocommerce_single_variation');
delete_option('ebz_woocommerce_after_single_variation');
delete_site_option('ebz_woocommerce_after_single_variation');
delete_option('ebz_woocommerce_after_add_to_cart_button');
delete_site_option('ebz_woocommerce_after_add_to_cart_button');
delete_option('ebz_woocommerce_after_variations_form');
delete_site_option('ebz_woocommerce_after_variations_form');
delete_option('ebz_woocommerce_after_add_to_cart_form');
delete_site_option('ebz_woocommerce_after_add_to_cart_form');
delete_option('ebz_woocommerce_product_meta_start');
delete_site_option('ebz_woocommerce_product_meta_start');
delete_option('ebz_woocommerce_product_meta_end');
delete_site_option('ebz_woocommerce_product_meta_end');
delete_option('ebz_woocommerce_share');
delete_site_option('ebz_woocommerce_share');
delete_option('ebz_woocommerce_after_single_product_summary');
delete_site_option('ebz_woocommerce_after_single_product_summary');
delete_option('ebz_woocommerce_after_single_product');
delete_site_option('ebz_woocommerce_after_single_product');

