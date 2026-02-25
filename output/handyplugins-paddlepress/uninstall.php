<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('handyplugins_paddlepress_installing');
delete_site_transient('handyplugins_paddlepress_installing');
delete_transient('paddlepress_paddle_products');
delete_site_transient('paddlepress_paddle_products');
delete_transient('paddlepress_paddle_products_sandbox');
delete_site_transient('paddlepress_paddle_products_sandbox');
delete_transient('paddlepress_paddle_subscriptions');
delete_site_transient('paddlepress_paddle_subscriptions');
delete_transient('paddlepress_paddle_subscriptions_sandbox');
delete_site_transient('paddlepress_paddle_subscriptions_sandbox');
delete_transient('paddlepress_billing_prices');
delete_site_transient('paddlepress_billing_prices');
delete_transient('paddlepress_billing_prices_sandbox');
delete_site_transient('paddlepress_billing_prices_sandbox');
delete_transient('paddlepress_billing_products');
delete_site_transient('paddlepress_billing_products');
delete_transient('paddlepress_billing_products_sandbox');
delete_site_transient('paddlepress_billing_products_sandbox');

