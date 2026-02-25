<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_sbcfw_shipping_cities_section_enabled');
delete_site_option('wc_sbcfw_shipping_cities_section_enabled');

