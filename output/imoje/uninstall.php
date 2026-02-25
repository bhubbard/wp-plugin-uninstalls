<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_imoje_blik_settings');
delete_site_option('woocommerce_imoje_blik_settings');
delete_option('woocommerce_imoje_settings');
delete_site_option('woocommerce_imoje_settings');
delete_option('woocommerce_imoje_paylater_settings');
delete_site_option('woocommerce_imoje_paylater_settings');
delete_option('woocommerce_imoje_cards_settings');
delete_site_option('woocommerce_imoje_cards_settings');
delete_option('woocommerce_imoje_pbl_settings');
delete_site_option('woocommerce_imoje_pbl_settings');
delete_option('woocommerce_imoje_visa_settings');
delete_site_option('woocommerce_imoje_visa_settings');
delete_option('woocommerce_imoje_installments_settings');
delete_site_option('woocommerce_imoje_installments_settings');
delete_option('woocommerce_imoje_wallet_settings');
delete_site_option('woocommerce_imoje_wallet_settings');
delete_option('woocommerce_imoje_leasenow_settings');
delete_site_option('woocommerce_imoje_leasenow_settings');
delete_option('woocommerce_imoje_wt_settings');
delete_site_option('woocommerce_imoje_wt_settings');

