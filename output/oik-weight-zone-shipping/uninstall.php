<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_oik_weight_zone_shipping_settings');
delete_site_option('woocommerce_oik_weight_zone_shipping_settings');
delete_option('woocommerce_awd_shipping_settings');
delete_site_option('woocommerce_awd_shipping_settings');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

