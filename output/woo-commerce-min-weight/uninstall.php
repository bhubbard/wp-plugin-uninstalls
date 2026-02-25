<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bd_woo_min_weight');
delete_site_option('bd_woo_min_weight');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

