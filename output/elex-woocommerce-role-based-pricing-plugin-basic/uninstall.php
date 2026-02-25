<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('eh_pricing_discount_price_adjustment_options');
delete_site_option('eh_pricing_discount_price_adjustment_options');
delete_option('eh_pricing_discount_product_price_user_role');
delete_site_option('eh_pricing_discount_product_price_user_role');
delete_option('eh_pricing_discount_product_on_users');
delete_site_option('eh_pricing_discount_product_on_users');
delete_option('eh_pricing_discount_cart_user_role_remove_cart_checkout');
delete_site_option('eh_pricing_discount_cart_user_role_remove_cart_checkout');
delete_option('eh_pricing_discount_cart_unregistered_user_remove_cart_checkout');
delete_site_option('eh_pricing_discount_cart_unregistered_user_remove_cart_checkout');
delete_option('eh_pricing_discount_cart_user_role');
delete_site_option('eh_pricing_discount_cart_user_role');
delete_option('eh_pricing_discount_cart_unregistered_user');
delete_site_option('eh_pricing_discount_cart_unregistered_user');
delete_option('eh_pricing_discount_cart_user_role_text');
delete_site_option('eh_pricing_discount_cart_user_role_text');
delete_option('eh_pricing_discount_cart_unregistered_user_text');
delete_site_option('eh_pricing_discount_cart_unregistered_user_text');
delete_option('eh_pricing_discount_replace_cart_user_role');
delete_site_option('eh_pricing_discount_replace_cart_user_role');
delete_option('eh_pricing_discount_replace_cart_unregistered_user');
delete_site_option('eh_pricing_discount_replace_cart_unregistered_user');
delete_option('eh_pricing_discount_enable_tax_options');
delete_site_option('eh_pricing_discount_enable_tax_options');
delete_option('eh_pricing_discount_price_tax_options');
delete_site_option('eh_pricing_discount_price_tax_options');
delete_option('eh_pricing_discount_enable_price_suffix');
delete_site_option('eh_pricing_discount_enable_price_suffix');
delete_option('eh_pricing_discount_price_general_price_suffix');
delete_site_option('eh_pricing_discount_price_general_price_suffix');
delete_option('eh_pricing_discount_role_price_suffix');
delete_site_option('eh_pricing_discount_role_price_suffix');
delete_option('eh_pricing_discount_replace_cart_unregistered_user_text_product');
delete_site_option('eh_pricing_discount_replace_cart_unregistered_user_text_product');
delete_option('eh_pricing_discount_replace_cart_unregistered_user_text_shop');
delete_site_option('eh_pricing_discount_replace_cart_unregistered_user_text_shop');
delete_option('eh_pricing_discount_replace_cart_unregistered_user_url_shop');
delete_site_option('eh_pricing_discount_replace_cart_unregistered_user_url_shop');
delete_option('eh_pricing_discount_replace_cart_user_role_text_product');
delete_site_option('eh_pricing_discount_replace_cart_user_role_text_product');
delete_option('eh_pricing_discount_replace_cart_user_role_text_shop');
delete_site_option('eh_pricing_discount_replace_cart_user_role_text_shop');
delete_option('eh_pricing_discount_replace_cart_user_role_url_shop');
delete_site_option('eh_pricing_discount_replace_cart_user_role_url_shop');
delete_option('eh_pricing_discount_multiple_role_price');
delete_site_option('eh_pricing_discount_multiple_role_price');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('wc_price_based_country_regions');
delete_site_option('wc_price_based_country_regions');
delete_option('eh_pricing_discount_hide_regular_price_unregistered');
delete_site_option('eh_pricing_discount_hide_regular_price_unregistered');
delete_option('eh_pricing_discount_regular_price_user_role');
delete_site_option('eh_pricing_discount_regular_price_user_role');
delete_option('eh_pricing_discount_price_user_role');
delete_site_option('eh_pricing_discount_price_user_role');
delete_option('eh_pricing_discount_price_unregistered_user');
delete_site_option('eh_pricing_discount_price_unregistered_user');
delete_option('eh_pricing_discount_price_user_role_text');
delete_site_option('eh_pricing_discount_price_user_role_text');
delete_option('eh_pricing_discount_price_unregistered_user_text');
delete_site_option('eh_pricing_discount_price_unregistered_user_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_review_will_do_it_later' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_troubleshoot_never_ask_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

