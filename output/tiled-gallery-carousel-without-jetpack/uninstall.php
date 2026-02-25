<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carousel_enable_it');
delete_site_option('carousel_enable_it');
delete_option('carousel_display_exif');
delete_site_option('carousel_display_exif');
delete_option('carousel_display_geo');
delete_site_option('carousel_display_geo');
delete_option('comments_display');
delete_site_option('comments_display');
delete_option('fullsize_display');
delete_site_option('fullsize_display');
delete_option('carousel_background_color');
delete_site_option('carousel_background_color');
delete_option('tiled_galleries');
delete_site_option('tiled_galleries');

