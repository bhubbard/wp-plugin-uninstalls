<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_terms_page_id');
delete_site_option('woocommerce_terms_page_id');
delete_option('woocommerce-ppcp-data-payment');
delete_site_option('woocommerce-ppcp-data-payment');
delete_option('woocommerce-ppcp-data-settings');
delete_site_option('woocommerce-ppcp-data-settings');
delete_option('woocommerce_ppcp-axo-gateway_settings');
delete_site_option('woocommerce_ppcp-axo-gateway_settings');
delete_option('woocommerce_ppcp-recaptcha_settings');
delete_site_option('woocommerce_ppcp-recaptcha_settings');
delete_option('woocommerce-ppcp-is-new-merchant');
delete_site_option('woocommerce-ppcp-is-new-merchant');
delete_option('woocommerce-ppcp-settings');
delete_site_option('woocommerce-ppcp-settings');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_paypal_branded');
delete_site_option('woocommerce_paypal_branded');
delete_option('ppcp_payment_tokens_migration_initialized');
delete_site_option('ppcp_payment_tokens_migration_initialized');
delete_option('woocommerce_ppcp-oxxo-gateway_settings');
delete_site_option('woocommerce_ppcp-oxxo-gateway_settings');
delete_option('woocommerce_ppcp-pay-upon-invoice-gateway_settings');
delete_site_option('woocommerce_ppcp-pay-upon-invoice-gateway_settings');
delete_option('woocommerce_ppcp-card-button-gateway_settings');
delete_site_option('woocommerce_ppcp-card-button-gateway_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ppcp-request-ids');
delete_site_option('ppcp-request-ids');
delete_option('ppcp_bn_code');
delete_site_option('ppcp_bn_code');
delete_option('woocommerce-ppcp-version');
delete_site_option('woocommerce-ppcp-version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppcp_cart_by_order_%', '_site_transient_ppcp_cart_by_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ppcp_has_ppec_subscriptions');
delete_site_transient('ppcp_has_ppec_subscriptions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppcp_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppcp_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppcp_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppcp_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppcp_guest_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppcp_guest_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppcp_guest_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppcp_guest_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppcp_target_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppcp_target_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppcp_target_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppcp_target_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ppcp-vault-token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ppcp-vault-token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ppcp-vault-token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ppcp-vault-token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

