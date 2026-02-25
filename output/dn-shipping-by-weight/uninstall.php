<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_shipping_by_weight-tables');
delete_site_option('dn_shipping_by_weight-tables');
delete_option('dn_shipping_by_weight-last_id');
delete_site_option('dn_shipping_by_weight-last_id');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

