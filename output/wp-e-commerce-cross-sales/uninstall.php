<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsc_also_bought');
delete_site_option('wpsc_also_bought');
delete_option('wpsc_also_bought_limit');
delete_site_option('wpsc_also_bought_limit');
delete_option('wpsc_crosssale_image_width');
delete_site_option('wpsc_crosssale_image_width');
delete_option('wpsc_crosssale_image_height');
delete_site_option('wpsc_crosssale_image_height');
delete_option('wpsc_crosssales_db_version');
delete_site_option('wpsc_crosssales_db_version');
delete_option('product_image_width');
delete_site_option('product_image_width');
delete_option('product_image_height');
delete_site_option('product_image_height');
delete_option('show_thumbnails');
delete_site_option('show_thumbnails');

