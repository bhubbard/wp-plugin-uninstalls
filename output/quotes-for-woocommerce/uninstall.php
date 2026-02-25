<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quotes_for_wc');
delete_site_option('quotes_for_wc');
delete_option('qwc_menu_notice');
delete_site_option('qwc_menu_notice');
delete_option('qwc_add_to_cart_button_text');
delete_site_option('qwc_add_to_cart_button_text');
delete_option('qwc_enable_global_quote');
delete_site_option('qwc_enable_global_quote');
delete_option('qwc_enable_global_prices');
delete_site_option('qwc_enable_global_prices');
delete_option('qwc_proceed_checkout_btn_label');
delete_site_option('qwc_proceed_checkout_btn_label');
delete_option('qwc_cart_page_name');
delete_site_option('qwc_cart_page_name');
delete_option('qwc_checkout_page_name');
delete_site_option('qwc_checkout_page_name');
delete_option('qwc_hide_address_fields');
delete_site_option('qwc_hide_address_fields');
delete_option('woocommerce_quotes-gateway_settings');
delete_site_option('woocommerce_quotes-gateway_settings');
delete_option('qwc_place_order_text');
delete_site_option('qwc_place_order_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracker_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qwc_allow_tracking');
delete_site_option('qwc_allow_tracking');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('qwc_tracker_last_send');
delete_site_option('qwc_tracker_last_send');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qwc_display_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qwc_display_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qwc_display_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qwc_display_prices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qwc_enable_quotes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qwc_enable_quotes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qwc_enable_quotes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qwc_enable_quotes' ) );

