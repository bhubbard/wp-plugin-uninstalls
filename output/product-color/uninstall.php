<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpc_select_product_name_color');
delete_site_option('wpc_select_product_name_color');
delete_option('wpc_select_product_description_color');
delete_site_option('wpc_select_product_description_color');
delete_option('wpc_select_product_short_description_color');
delete_site_option('wpc_select_product_short_description_color');
delete_option('wpc_select_product_category_color');
delete_site_option('wpc_select_product_category_color');
delete_option('wpc_select_product_category_bg_color');
delete_site_option('wpc_select_product_category_bg_color');
delete_option('wpc_select_product_tag_color');
delete_site_option('wpc_select_product_tag_color');
delete_option('wpc_select_product_tag_bg_color');
delete_site_option('wpc_select_product_tag_bg_color');
delete_option('wpc_select_product_review_color');
delete_site_option('wpc_select_product_review_color');
delete_option('wpc_select_product_price_color');
delete_site_option('wpc_select_product_price_color');
delete_option('wpc_select_product_add_to_cart_color');
delete_site_option('wpc_select_product_add_to_cart_color');
delete_option('wpc_select_product_add_to_cart_bg_color');
delete_site_option('wpc_select_product_add_to_cart_bg_color');
delete_option('wpc_select_product_sale_color');
delete_site_option('wpc_select_product_sale_color');
delete_option('wpc_select_product_sale_bg_color');
delete_site_option('wpc_select_product_sale_bg_color');

