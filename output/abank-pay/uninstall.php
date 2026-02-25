<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abankpay_admin_notice');
delete_site_option('abankpay_admin_notice');
delete_option('woocommerce_abank_pay_gateway_settings');
delete_site_option('woocommerce_abank_pay_gateway_settings');

