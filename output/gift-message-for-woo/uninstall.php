<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmwoo_enable_gift_message');
delete_site_option('gmwoo_enable_gift_message');
delete_option('gmwoo_character_limit');
delete_site_option('gmwoo_character_limit');
delete_option('gmwoo_field_label');
delete_site_option('gmwoo_field_label');
delete_option('gmwoo_field_placeholder');
delete_site_option('gmwoo_field_placeholder');
delete_option('gmwoo_gift_message_mode');
delete_site_option('gmwoo_gift_message_mode');
delete_option('gmwoo_specific_products');
delete_site_option('gmwoo_specific_products');
delete_option('gmwoo_specific_categories');
delete_site_option('gmwoo_specific_categories');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');

