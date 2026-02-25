<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fast_cart_option');
delete_site_option('fast_cart_option');
delete_option('fast_cart_option_styling');
delete_site_option('fast_cart_option_styling');
delete_option('fast_cart_license');
delete_site_option('fast_cart_license');
delete_option('fast_cart_upgrade_completed');
delete_site_option('fast_cart_upgrade_completed');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

