<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_gallery');
delete_site_option('show_gallery');
delete_option('single_view_image_width');
delete_site_option('single_view_image_width');
delete_option('wpsc_gallery_image_height');
delete_site_option('wpsc_gallery_image_height');
delete_option('wpsc_gallery_image_width');
delete_site_option('wpsc_gallery_image_width');
delete_option('product_view');
delete_site_option('product_view');
delete_option('grid_number_per_row');
delete_site_option('grid_number_per_row');
delete_option('product_image_width');
delete_site_option('product_image_width');
delete_option('product_image_height');
delete_site_option('product_image_height');

