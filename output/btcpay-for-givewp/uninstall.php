<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('btcpay_api_validation_error');
delete_site_transient('btcpay_api_validation_error');
delete_transient('btcpay_api_validation_success');
delete_site_transient('btcpay_api_validation_success');
delete_transient('btcpay_webhook_exists');
delete_site_transient('btcpay_webhook_exists');
delete_transient('btcpay_webhook_created');
delete_site_transient('btcpay_webhook_created');
delete_transient('btcpay_webhook_error');
delete_site_transient('btcpay_webhook_error');

