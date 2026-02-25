<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zazzle_gallery_name');
delete_site_option('zazzle_gallery_name');
delete_option('zazzle_theme');
delete_site_option('zazzle_theme');
delete_option('zazzle_background_color');
delete_site_option('zazzle_background_color');
delete_option('zazzle_product_image_size');
delete_site_option('zazzle_product_image_size');
delete_option('zazzle_product_line');
delete_site_option('zazzle_product_line');

