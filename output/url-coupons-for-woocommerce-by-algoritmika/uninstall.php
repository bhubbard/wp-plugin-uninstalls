<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_url_coupons_cookie_sec');
delete_site_option('alg_wc_url_coupons_cookie_sec');
delete_option('alg_wc_url_coupons_enabled');
delete_site_option('alg_wc_url_coupons_enabled');
delete_option('alg_wc_url_coupons_priority');
delete_site_option('alg_wc_url_coupons_priority');
delete_option('alg_wc_url_coupons_delay_coupon');
delete_site_option('alg_wc_url_coupons_delay_coupon');
delete_option('alg_wc_url_coupons_delay_notice');
delete_site_option('alg_wc_url_coupons_delay_notice');
delete_option('alg_wc_url_coupons_cart_hide_coupon');
delete_site_option('alg_wc_url_coupons_cart_hide_coupon');
delete_option('alg_wc_url_coupons_checkout_hide_coupon');
delete_site_option('alg_wc_url_coupons_checkout_hide_coupon');
delete_option('alg_wc_url_coupons_add_to_cart_action_force_coupon_redirect');
delete_site_option('alg_wc_url_coupons_add_to_cart_action_force_coupon_redirect');
delete_option('alg_wc_url_coupons_wp_rocket_disable_cache_wc_empty_cart');
delete_site_option('alg_wc_url_coupons_wp_rocket_disable_cache_wc_empty_cart');
delete_option('alg_wc_url_coupons_save_empty_cart');
delete_site_option('alg_wc_url_coupons_save_empty_cart');
delete_option('alg_wc_url_coupons_payment_request_product_data');
delete_site_option('alg_wc_url_coupons_payment_request_product_data');
delete_option('alg_wc_url_coupons_data_storage_type');
delete_site_option('alg_wc_url_coupons_data_storage_type');
delete_option('alg_wc_url_coupons_key');
delete_site_option('alg_wc_url_coupons_key');
delete_option('alg_wc_url_coupons_delay_coupon_check_product');
delete_site_option('alg_wc_url_coupons_delay_coupon_check_product');
delete_option('alg_wc_url_coupons_hide_coupon_condition');
delete_site_option('alg_wc_url_coupons_hide_coupon_condition');
delete_option('alg_wc_url_coupons_force_start_session');
delete_site_option('alg_wc_url_coupons_force_start_session');
delete_option('alg_wc_url_coupons_force_start_session_earlier');
delete_site_option('alg_wc_url_coupons_force_start_session_earlier');
delete_option('alg_wc_url_coupons_cookie_enabled');
delete_site_option('alg_wc_url_coupons_cookie_enabled');
delete_option('alg_wc_url_coupons_remove_add_to_cart_key');
delete_site_option('alg_wc_url_coupons_remove_add_to_cart_key');
delete_option('alg_wc_url_coupons_delay_coupon_non_empty_cart');
delete_site_option('alg_wc_url_coupons_delay_coupon_non_empty_cart');
delete_option('alg_wc_url_coupons_delay_coupon_notice');
delete_site_option('alg_wc_url_coupons_delay_coupon_notice');
delete_option('alg_wc_url_coupons_main_hook');
delete_site_option('alg_wc_url_coupons_main_hook');
delete_option('alg_wc_url_coupons_javascript_reload');
delete_site_option('alg_wc_url_coupons_javascript_reload');
delete_option('alg_wc_url_coupons_version');
delete_site_option('alg_wc_url_coupons_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

