<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwcc_settings');
delete_site_option('cwcc_settings');
delete_option('cwcc_settings_cart');
delete_site_option('cwcc_settings_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

