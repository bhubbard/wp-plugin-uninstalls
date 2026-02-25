<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable-google-map');
delete_site_option('enable-google-map');
delete_option('enable-slick-slider');
delete_site_option('enable-slick-slider');
delete_option('enable-fontawesome');
delete_site_option('enable-fontawesome');
delete_option('suppress_filters');
delete_site_option('suppress_filters');

// Delete Transients
delete_transient('foundation_categories');
delete_site_transient('foundation_categories');

