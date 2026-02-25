<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_business_hours');
delete_site_option('wp_business_hours');
delete_option('wp_business_hours_css');
delete_site_option('wp_business_hours_css');

