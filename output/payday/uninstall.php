<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'payday_payment_method_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('payday_invoice_date_option');
delete_site_option('payday_invoice_date_option');
delete_option('payday_send_email_on_invoice_create');
delete_site_option('payday_send_email_on_invoice_create');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_create_invoice_on_action' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('payday_client_id');
delete_site_option('payday_client_id');
delete_option('payday_client_secret');
delete_site_option('payday_client_secret');
delete_option('payday_api_endpoint');
delete_site_option('payday_api_endpoint');

// Delete Transients
delete_transient('payday_upsert_products_response');
delete_site_transient('payday_upsert_products_response');
delete_transient('payday_login_unsucessful_admin_notice');
delete_site_transient('payday_login_unsucessful_admin_notice');
delete_transient('payday_login_invalid_credentials_admin_notice');
delete_site_transient('payday_login_invalid_credentials_admin_notice');

