<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disgau_product_discount_type');
delete_site_option('disgau_product_discount_type');
delete_option('disgau_product_discount_custom_phrase');
delete_site_option('disgau_product_discount_custom_phrase');
delete_option('disgau_product_discount_text_color');
delete_site_option('disgau_product_discount_text_color');
delete_option('disgau_product_discount_bg_color');
delete_site_option('disgau_product_discount_bg_color');

