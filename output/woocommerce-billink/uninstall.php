<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_billink_settings');
delete_site_option('woocommerce_billink_settings');
delete_option('woocommerce_billink_gateway_description_version');
delete_site_option('woocommerce_billink_gateway_description_version');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');

