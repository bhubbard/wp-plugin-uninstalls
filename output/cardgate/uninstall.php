<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cardgate_version');
delete_site_option('cardgate_version');
delete_option('is_callback_status_change');
delete_site_option('is_callback_status_change');
delete_option('cgp_version');
delete_site_option('cgp_version');
delete_option('cgp_mode');
delete_site_option('cgp_mode');
delete_option('cgp_siteid');
delete_site_option('cgp_siteid');
delete_option('cgp_hashkey');
delete_site_option('cgp_hashkey');
delete_option('cgp_merchant_id');
delete_site_option('cgp_merchant_id');
delete_option('cgp_merchant_api_key');
delete_site_option('cgp_merchant_api_key');
delete_option('cgp_checkoutdisplay');
delete_site_option('cgp_checkoutdisplay');
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_extra_charges' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_extra_charges_label' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_extra_charges_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_cardgateafterpay_settings');
delete_site_option('woocommerce_cardgateafterpay_settings');
delete_option('woocommerce_cardgatebancontact_settings');
delete_site_option('woocommerce_cardgatebancontact_settings');
delete_option('woocommerce_cardgatebanktransfer_settings');
delete_site_option('woocommerce_cardgatebanktransfer_settings');
delete_option('woocommerce_cardgatebillink_settings');
delete_site_option('woocommerce_cardgatebillink_settings');
delete_option('woocommerce_cardgatebitcoin_settings');
delete_site_option('woocommerce_cardgatebitcoin_settings');
delete_option('woocommerce_cardgatecreditcard_settings');
delete_site_option('woocommerce_cardgatecreditcard_settings');
delete_option('woocommerce_cardgatecrypto_settings');
delete_site_option('woocommerce_cardgatecrypto_settings');
delete_option('woocommerce_cardgatedirectdebit_settings');
delete_site_option('woocommerce_cardgatedirectdebit_settings');
delete_option('woocommerce_cardgategiftcard_settings');
delete_site_option('woocommerce_cardgategiftcard_settings');
delete_option('woocommerce_cardgateideal_settings');
delete_site_option('woocommerce_cardgateideal_settings');
delete_option('woocommerce_cardgateidealqr_settings');
delete_site_option('woocommerce_cardgateidealqr_settings');
delete_option('woocommerce_cardgateklarna_settings');
delete_site_option('woocommerce_cardgateklarna_settings');
delete_option('woocommerce_cardgateonlineueberweisen_settings');
delete_site_option('woocommerce_cardgateonlineueberweisen_settings');
delete_option('woocommerce_cardgatepaypal_settings');
delete_site_option('woocommerce_cardgatepaypal_settings');
delete_option('woocommerce_cardgatepaysafecard_settings');
delete_site_option('woocommerce_cardgatepaysafecard_settings');
delete_option('woocommerce_cardgatepaysafecash_settings');
delete_site_option('woocommerce_cardgatepaysafecash_settings');
delete_option('woocommerce_cardgateprzelewy24_settings');
delete_site_option('woocommerce_cardgateprzelewy24_settings');
delete_option('woocommerce_cardgatesofortbanking_settings');
delete_site_option('woocommerce_cardgatesofortbanking_settings');
delete_option('woocommerce_cardgatespraypay_settings');
delete_site_option('woocommerce_cardgatespraypay_settings');

