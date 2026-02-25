<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glorprsl_number_of_products');
delete_site_option('glorprsl_number_of_products');
delete_option('glorprsl_slider_speed');
delete_site_option('glorprsl_slider_speed');

