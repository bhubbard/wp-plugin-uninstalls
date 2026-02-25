<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcdf_checkout_first_name');
delete_site_option('rcdf_checkout_first_name');
delete_option('rcdf_checkout_last_name');
delete_site_option('rcdf_checkout_last_name');
delete_option('rcdf_checkout_phone');
delete_site_option('rcdf_checkout_phone');
delete_option('rcdf_checkout_email');
delete_site_option('rcdf_checkout_email');
delete_option('rcdf_checkout_product_name');
delete_site_option('rcdf_checkout_product_name');
delete_option('rcdf_checkout_price');
delete_site_option('rcdf_checkout_price');
delete_option('rcdf_checkout_trigger_element');
delete_site_option('rcdf_checkout_trigger_element');
delete_option('rcdf_checkout_event_el');
delete_site_option('rcdf_checkout_event_el');

