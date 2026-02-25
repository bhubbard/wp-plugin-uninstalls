<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pofw_pizzatoppings_min_selection');
delete_site_option('pofw_pizzatoppings_min_selection');
delete_option('pofw_pizzatoppings_max_selection');
delete_site_option('pofw_pizzatoppings_max_selection');
delete_option('pofw_pizzatoppings_min_message');
delete_site_option('pofw_pizzatoppings_min_message');
delete_option('pofw_pizzatoppings_max_message');
delete_site_option('pofw_pizzatoppings_max_message');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

