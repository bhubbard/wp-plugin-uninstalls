<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fkwcs_apple_pay_domain_is_verified');
delete_site_option('fkwcs_apple_pay_domain_is_verified');
delete_option('fkwcs_apple_pay_verified_domain');
delete_site_option('fkwcs_apple_pay_verified_domain');
delete_option('fkwcs_live_created_webhook');
delete_site_option('fkwcs_live_created_webhook');
delete_option('fkwcs_wp_stripe');
delete_site_option('fkwcs_wp_stripe');
delete_option('woocommerce_fkwcs_stripe_settings');
delete_site_option('woocommerce_fkwcs_stripe_settings');
delete_option('fkwcs_mode');
delete_site_option('fkwcs_mode');
delete_option('fkwcs_test_pub_key');
delete_site_option('fkwcs_test_pub_key');
delete_option('fkwcs_pub_key');
delete_site_option('fkwcs_pub_key');
delete_option('fkwcs_stripe_account_settings');
delete_site_option('fkwcs_stripe_account_settings');
delete_option('fkwcs_wp_hash');
delete_site_option('fkwcs_wp_hash');
delete_option('fkwcs_live_webhook_secret');
delete_site_option('fkwcs_live_webhook_secret');
delete_option('fkwcs_live_webhook_url');
delete_site_option('fkwcs_live_webhook_url');
delete_option('fkwcs_test_webhook_secret');
delete_site_option('fkwcs_test_webhook_secret');
delete_option('fkwcs_test_created_webhook');
delete_site_option('fkwcs_test_created_webhook');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_webhook_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fkwcs_secret_key');
delete_site_option('fkwcs_secret_key');
delete_option('fkwcs_test_secret_key');
delete_site_option('fkwcs_test_secret_key');
delete_option('fkwcs_stripe_statement_descriptor_full');
delete_site_option('fkwcs_stripe_statement_descriptor_full');
delete_option('fkwcs_stripe_statement_descriptor_prefix');
delete_site_option('fkwcs_stripe_statement_descriptor_prefix');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('fkwcs_setup_status');
delete_site_option('fkwcs_setup_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_created_webhook' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fkwcs_currency_fee');
delete_site_option('fkwcs_currency_fee');
delete_option('fkwcs_account_id');
delete_site_option('fkwcs_account_id');
delete_option('fkwcs_debug_log');
delete_site_option('fkwcs_debug_log');
delete_option('fkwcs_stripe_statement_descriptor_should_customize');
delete_site_option('fkwcs_stripe_statement_descriptor_should_customize');
delete_option('fkwcs_stripe_statement_descriptor_suffix');
delete_site_option('fkwcs_stripe_statement_descriptor_suffix');

// Delete Transients
delete_transient('_wc_activation_redirect');
delete_site_transient('_wc_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fkwcs_user_tokens_%', '_site_transient_fkwcs_user_tokens_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fkwcs_stripe_processing_intent_%', '_site_transient_fkwcs_stripe_processing_intent_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__fkwcs_refund_id_cache_%', '_site_transient__fkwcs_refund_id_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fkwcs_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fkwcs_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fkwcs_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fkwcs_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_method' ) );

