<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('we_pos_version');
delete_site_option('we_pos_version');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('we_pos_installed');
delete_site_option('we_pos_installed');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');

// Delete Transients
delete_transient('wepos-flush-rewrites');
delete_site_transient('wepos-flush-rewrites');

// Clear Cron Jobs

