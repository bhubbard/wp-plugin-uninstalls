<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpttst_custom_forms');
delete_site_option('wpttst_custom_forms');
delete_option('wpttst_options');
delete_site_option('wpttst_options');
delete_option('wp-testimonials-visited-get-reviews');
delete_site_option('wp-testimonials-visited-get-reviews');
delete_option('wpttst_fields');
delete_site_option('wpttst_fields');

