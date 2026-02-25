<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mjfreeway_options');
delete_site_option('mjfreeway_options');
delete_option('mjfreeway_display_registration_link');
delete_site_option('mjfreeway_display_registration_link');
delete_option('mjfreeway-products');
delete_site_option('mjfreeway-products');

