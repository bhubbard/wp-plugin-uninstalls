<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('local_pickup_options');
delete_site_option('local_pickup_options');
delete_option('do_not_use_shipping');
delete_site_option('do_not_use_shipping');
delete_option('base_country');
delete_site_option('base_country');

