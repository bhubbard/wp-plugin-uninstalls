<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sr_vat_price_rounding');
delete_site_option('sr_vat_price_rounding');
delete_option('sr_discount_price_rounding');
delete_site_option('sr_discount_price_rounding');

