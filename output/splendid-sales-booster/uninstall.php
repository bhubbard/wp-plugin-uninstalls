<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcssb_section_location');
delete_site_option('wcssb_section_location');
delete_option('wcssb_db_version');
delete_site_option('wcssb_db_version');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('wcssb_section_default_title');
delete_site_option('wcssb_section_default_title');
delete_option('wcssb_show_images');
delete_site_option('wcssb_show_images');

