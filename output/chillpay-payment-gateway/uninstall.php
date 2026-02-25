<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chillpay_stored_site_url');
delete_site_option('chillpay_stored_site_url');
delete_option('chillpay_domain_changed');
delete_site_option('chillpay_domain_changed');
delete_option('chillpay_gateways_fixed');
delete_site_option('chillpay_gateways_fixed');
delete_option('woocommerce_chillpay_installment_settings');
delete_site_option('woocommerce_chillpay_installment_settings');
delete_option('woocommerce_chillpay_settings');
delete_site_option('woocommerce_chillpay_settings');

// Delete Transients
delete_transient('wc_payment_gateways');
delete_site_transient('wc_payment_gateways');
delete_transient('woocommerce_payment_gateways');
delete_site_transient('woocommerce_payment_gateways');
delete_transient('wc_site_url');
delete_site_transient('wc_site_url');
delete_transient('chillpay_merchant_info');
delete_site_transient('chillpay_merchant_info');
delete_transient('chillpay_fee_info');
delete_site_transient('chillpay_fee_info');

