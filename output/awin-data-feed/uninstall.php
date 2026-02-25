<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sw_deliveryMethod');
delete_site_option('sw_deliveryMethod');
delete_option('sw_categories');
delete_site_option('sw_categories');
delete_option('sw_maxPriceRadio');
delete_site_option('sw_maxPriceRadio');
delete_option('sw_minPrice');
delete_site_option('sw_minPrice');
delete_option('sw_maxPrice');
delete_site_option('sw_maxPrice');

