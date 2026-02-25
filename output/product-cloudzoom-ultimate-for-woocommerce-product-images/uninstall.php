<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mgwcz_options');
delete_site_option('mgwcz_options');
delete_option('woocommerce_thumbnail_image_width');
delete_site_option('woocommerce_thumbnail_image_width');

