<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elex_first_installation_msg');
delete_site_option('elex_first_installation_msg');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('eh_product_choose_sale_regular');
delete_site_option('eh_product_choose_sale_regular');
delete_option('eh_pricing_discount_cart_catalog_mode_remove_cart_checkout');
delete_site_option('eh_pricing_discount_cart_catalog_mode_remove_cart_checkout');
delete_option('eh_pricing_discount_price_catalog_mode_exclude_admin');
delete_site_option('eh_pricing_discount_price_catalog_mode_exclude_admin');
delete_option('eh_pricing_discount_cart_catalog_mode');
delete_site_option('eh_pricing_discount_cart_catalog_mode');
delete_option('elex_catalog_remove_addtocart_shop');
delete_site_option('elex_catalog_remove_addtocart_shop');
delete_option('eh_pricing_discount_cart_catalog_mode_text');
delete_site_option('eh_pricing_discount_cart_catalog_mode_text');
delete_option('eh_pricing_discount_cart_user_role_text');
delete_site_option('eh_pricing_discount_cart_user_role_text');
delete_option('eh_pricing_discount_cart_unregistered_user_text');
delete_site_option('eh_pricing_discount_cart_unregistered_user_text');
delete_option('elex_catalog_remove_addtocart_product');
delete_site_option('elex_catalog_remove_addtocart_product');
delete_option('eh_pricing_discount_replace_cart_catalog_mode');
delete_site_option('eh_pricing_discount_replace_cart_catalog_mode');
delete_option('eh_pricing_discount_price_adjustment_options');
delete_site_option('eh_pricing_discount_price_adjustment_options');
delete_option('eh_pricing_discount_replace_cart_catalog_mode_text_product');
delete_site_option('eh_pricing_discount_replace_cart_catalog_mode_text_product');
delete_option('eh_pricing_discount_replace_cart_catalog_mode_text_shop');
delete_site_option('eh_pricing_discount_replace_cart_catalog_mode_text_shop');
delete_option('eh_pricing_discount_replace_cart_catalog_mode_url_shop');
delete_site_option('eh_pricing_discount_replace_cart_catalog_mode_url_shop');
delete_option('eh_catalog_pricing_discount_price_catalog_mode');
delete_site_option('eh_catalog_pricing_discount_price_catalog_mode');
delete_option('eh_catalog_pricing_discount_price_catalog_mode_text');
delete_site_option('eh_catalog_pricing_discount_price_catalog_mode_text');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_hide_price_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_exclude_admin_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_exclude_admin_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_exclude_admin_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_exclude_admin_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eh_pricing_adjustment_product_price_user_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eh_pricing_adjustment_product_price_user_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eh_pricing_adjustment_product_price_user_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eh_pricing_adjustment_product_price_user_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_hide_price_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_catalog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_unregistered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_adjustment_hide_price_placeholder_unregistered' ) );

