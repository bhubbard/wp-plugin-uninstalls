<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_shipping_insurance_default_state');
delete_site_option('woocommerce_shipping_insurance_default_state');
delete_option('woocommerce_shipping_insurance_label_text');
delete_site_option('woocommerce_shipping_insurance_label_text');
delete_option('woocommerce_shipping_insurance_price');
delete_site_option('woocommerce_shipping_insurance_price');

