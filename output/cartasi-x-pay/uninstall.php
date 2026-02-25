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
delete_option('nexi_xpay_data_version');
delete_site_option('nexi_xpay_data_version');
delete_option('nexi_applepay_merchant_identifier_certificate');
delete_site_option('nexi_applepay_merchant_identifier_certificate');
delete_option('nexi_applepay_merchant_identifier_certificate_key');
delete_site_option('nexi_applepay_merchant_identifier_certificate_key');
delete_option('nexi_applepay_ca_root_certificate');
delete_site_option('nexi_applepay_ca_root_certificate');
delete_option('xpay_npg_available_methods');
delete_site_option('xpay_npg_available_methods');
delete_option('xpay_available_methods');
delete_site_option('xpay_available_methods');
delete_option('xpay_logo_small');
delete_site_option('xpay_logo_small');
delete_option('xpay_logo_large');
delete_site_option('xpay_logo_large');
delete_option('nexi_unique');
delete_site_option('nexi_unique');
delete_option('nexi_xpay_xpay_db_version');
delete_site_option('nexi_xpay_xpay_db_version');
delete_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_site_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_option('nexi_xpay_redirect_flush_rewrite_rule');
delete_site_option('nexi_xpay_redirect_flush_rewrite_rule');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_nexi_polling');
wp_clear_scheduled_hook('wp_nexi_update_npg_payment_methods');

