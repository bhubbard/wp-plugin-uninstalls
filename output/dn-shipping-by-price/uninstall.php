<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_shipping_by_price-tables');
delete_site_option('dn_shipping_by_price-tables');
delete_option('dn_shipping_by_price-last_id');
delete_site_option('dn_shipping_by_price-last_id');

