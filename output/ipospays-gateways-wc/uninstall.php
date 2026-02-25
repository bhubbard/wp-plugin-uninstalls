<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ipospays_settings');
delete_site_option('woocommerce_ipospays_settings');
delete_option('woocommerce_ipospays_gpay_settings');
delete_site_option('woocommerce_ipospays_gpay_settings');
delete_option('woocommerce_ipospays_apple_pay_settings');
delete_site_option('woocommerce_ipospays_apple_pay_settings');
delete_option('ipospays_settings');
delete_site_option('ipospays_settings');
delete_option('ipospays_plugin_version');
delete_site_option('ipospays_plugin_version');
delete_option('ipospay_token_split_done');
delete_site_option('ipospay_token_split_done');
delete_option('ipospays_payment_token_id');
delete_site_option('ipospays_payment_token_id');

// Delete Transients
delete_transient('ipospays_version_sent');
delete_site_transient('ipospays_version_sent');

