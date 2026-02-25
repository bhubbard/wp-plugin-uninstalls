<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_razorpay_subscriptions_settings');
delete_site_option('woocommerce_razorpay_subscriptions_settings');
delete_option('webhook_secret');
delete_site_option('webhook_secret');
delete_option('rzp_webhook_secret');
delete_site_option('rzp_webhook_secret');
delete_option('rzp_subscription_webhook_enable_flag');
delete_site_option('rzp_subscription_webhook_enable_flag');

