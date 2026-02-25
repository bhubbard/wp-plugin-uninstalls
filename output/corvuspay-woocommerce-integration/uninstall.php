<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('corvuspay_settings_version');
delete_site_option('corvuspay_settings_version');
delete_option('cpsi_gateway');
delete_site_option('cpsi_gateway');
delete_option('woocommerce_cpsi_settings');
delete_site_option('woocommerce_cpsi_settings');
delete_option('woocommerce_corvuspay_settings');
delete_site_option('woocommerce_corvuspay_settings');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

