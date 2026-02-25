<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_bulletproof_bpcheckout_lite_settings');
delete_site_option('woocommerce_bulletproof_bpcheckout_lite_settings');

// Delete Transients
delete_transient('bulletproof_custom_gateway_api_error');
delete_site_transient('bulletproof_custom_gateway_api_error');
delete_transient('bulletproof_lite_gateway_api_refund_error');
delete_site_transient('bulletproof_lite_gateway_api_refund_error');

