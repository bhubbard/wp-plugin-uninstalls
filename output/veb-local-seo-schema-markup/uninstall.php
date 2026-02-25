<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('business_name');
delete_site_option('business_name');
delete_option('street_address');
delete_site_option('street_address');
delete_option('locality');
delete_site_option('locality');
delete_option('region');
delete_site_option('region');
delete_option('postal_code');
delete_site_option('postal_code');
delete_option('country');
delete_site_option('country');
delete_option('phone');
delete_site_option('phone');
delete_option('opening_hours');
delete_site_option('opening_hours');
delete_option('price_range');
delete_site_option('price_range');

