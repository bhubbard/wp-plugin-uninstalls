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
delete_option('lknRedeForWoocommerceProEndpointStatus');
delete_site_option('lknRedeForWoocommerceProEndpointStatus');
delete_option('lknRedeForWoocommerceProLicense');
delete_site_option('lknRedeForWoocommerceProLicense');
delete_option('lkn_rede_oauth_token_test');
delete_site_option('lkn_rede_oauth_token_test');
delete_option('lkn_rede_oauth_token_production');
delete_site_option('lkn_rede_oauth_token_production');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('LknIntegrationRedeForWoocommerceMaxipagoDebitEndpointStatus');
delete_site_option('LknIntegrationRedeForWoocommerceMaxipagoDebitEndpointStatus');
delete_option('woocommerce_maxipago_debit_settings');
delete_site_option('woocommerce_maxipago_debit_settings');
delete_option('woocommerce_integration_rede_pix_settings');
delete_site_option('woocommerce_integration_rede_pix_settings');
delete_option('woocommerce_rede_pix_settings');
delete_site_option('woocommerce_rede_pix_settings');
delete_option('woocommerce_rede_debit_settings');
delete_site_option('woocommerce_rede_debit_settings');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_maxipago_credit_settings');
delete_site_option('woocommerce_maxipago_credit_settings');
delete_option('wc_rede_version');
delete_site_option('wc_rede_version');
delete_option('woocommerce_rede_settings');
delete_site_option('woocommerce_rede_settings');
delete_option('woocommerce_rede_credit_settings');
delete_site_option('woocommerce_rede_credit_settings');
delete_option('lknIntegrationRedeForWoocommerceSoftDescriptorErrorCredit');
delete_site_option('lknIntegrationRedeForWoocommerceSoftDescriptorErrorCredit');
delete_option('lknIntegrationRedeForWoocommerceSoftDescriptorErrorDebit');
delete_site_option('lknIntegrationRedeForWoocommerceSoftDescriptorErrorDebit');
delete_option('woocommerce_rede_credit');
delete_site_option('woocommerce_rede_credit');
delete_option('wcbcf_settings');
delete_site_option('wcbcf_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_rede_orders');
wp_clear_scheduled_hook('lkn_verify_pix_payment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lknMaxipagoProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lknMaxipagoProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lknMaxipagoProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lknMaxipagoProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lknRedeProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lknRedeProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lknRedeProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lknRedeProdutctInterest' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_maxipago_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_maxipago_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_maxipago_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_maxipago_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_rede_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_rede_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_rede_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_rede_transaction_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_rede_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_rede_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_rede_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_rede_transaction_cancel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_rede_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_rede_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_rede_transaction_canceled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_rede_transaction_canceled' ) );

