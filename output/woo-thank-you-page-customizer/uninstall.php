<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woo_thank_you_page_params');
delete_site_option('woo_thank_you_page_params');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dismiss_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wp_reviewed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_start_use' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('villatheme_hide_admin_toolbar');
delete_site_option('villatheme_hide_admin_toolbar');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'villatheme_hide_notices_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('woocommerce_thank_you_page_customizer_items_removed_notice');
delete_site_transient('woocommerce_thank_you_page_customizer_items_removed_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_woocommerce_thank_you_page_customizer_send_email_%', '_site_transient_woocommerce_thank_you_page_customizer_send_email_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('villatheme_call');
delete_site_transient('villatheme_call');
delete_transient('villatheme_ads');
delete_site_transient('villatheme_ads');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_hide_notices', '_site_transient_%_hide_notices' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_villatheme_hide_notices_%', '_site_transient_villatheme_hide_notices_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('villatheme_notices');
delete_site_transient('villatheme_notices');
delete_transient('villatheme_called');
delete_site_transient('villatheme_called');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wtypc_unique_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wtypc_unique_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wtypc_unique_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wtypc_unique_coupon' ) );

