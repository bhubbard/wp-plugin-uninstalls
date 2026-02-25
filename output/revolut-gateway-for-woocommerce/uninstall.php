<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revolut_pay_synchronous_webhook_domain_live_signing_key');
delete_site_option('revolut_pay_synchronous_webhook_domain_live_signing_key');
delete_option('revolut_pay_synchronous_webhook_domain_sandbox_signing_key');
delete_site_option('revolut_pay_synchronous_webhook_domain_sandbox_signing_key');
delete_option('sandbox_revolut_webhook_domain_signing_secret');
delete_site_option('sandbox_revolut_webhook_domain_signing_secret');
delete_option('live_revolut_webhook_domain_signing_secret');
delete_site_option('live_revolut_webhook_domain_signing_secret');
delete_option('WC_GATEWAY_REVOLUT_VERSION');
delete_site_option('WC_GATEWAY_REVOLUT_VERSION');
delete_option('woocommerce_revolut_cc_settings');
delete_site_option('woocommerce_revolut_cc_settings');
delete_option('woocommerce_revolut_pay_settings');
delete_site_option('woocommerce_revolut_pay_settings');
delete_option('woocommerce_revolut_payment_request_settings');
delete_site_option('woocommerce_revolut_payment_request_settings');
delete_option('woocommerce_revolut_pay_by_bank_settings');
delete_site_option('woocommerce_revolut_pay_by_bank_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_revolut_webhook_domain' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_revolut_webhook_domain_signing_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_location_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_signing_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');

