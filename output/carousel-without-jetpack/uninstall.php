<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_options');
delete_site_option('jetpack_options');
delete_option('carousel_enable_it');
delete_site_option('carousel_enable_it');
delete_option('carousel_display_exif');
delete_site_option('carousel_display_exif');
delete_option('carousel_display_geo');
delete_site_option('carousel_display_geo');
delete_option('carousel_background_color');
delete_site_option('carousel_background_color');

