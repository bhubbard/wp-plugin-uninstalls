<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_alternative_settings');
delete_site_option('woocommerce_alternative_settings');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_alternative_payment_options');
delete_site_option('woocommerce_alternative_payment_options');

