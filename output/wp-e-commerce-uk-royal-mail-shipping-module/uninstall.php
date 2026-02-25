<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uk_shipping_options_lite');
delete_site_option('uk_shipping_options_lite');
delete_option('do_not_use_shipping');
delete_site_option('do_not_use_shipping');
delete_option('base_country');
delete_site_option('base_country');

