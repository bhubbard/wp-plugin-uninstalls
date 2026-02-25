<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_image_width');
delete_site_option('product_image_width');
delete_option('product_image_height');
delete_site_option('product_image_height');

