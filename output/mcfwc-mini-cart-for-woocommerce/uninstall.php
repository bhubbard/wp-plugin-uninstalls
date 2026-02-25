<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcfwc_minicart_options');
delete_site_option('mcfwc_minicart_options');
delete_option('mcfwc_minicart_color_options');
delete_site_option('mcfwc_minicart_color_options');
delete_option('mcfwc_custom_image_cart_icon');
delete_site_option('mcfwc_custom_image_cart_icon');

