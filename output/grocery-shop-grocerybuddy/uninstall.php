<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgby_plugin_is_activated');
delete_site_option('wgby_plugin_is_activated');
delete_option('grocerybuddy_version');
delete_site_option('grocerybuddy_version');
delete_option('wgby_main_menu_name_wg');
delete_site_option('wgby_main_menu_name_wg');
delete_option('wgby_main_categories_list_name');
delete_site_option('wgby_main_categories_list_name');
delete_option('wgby_exclude_categories');
delete_site_option('wgby_exclude_categories');
delete_option('wgby_exclude_products');
delete_site_option('wgby_exclude_products');
delete_option('wgby_fees_order_less_than');
delete_site_option('wgby_fees_order_less_than');
delete_option('wgby_flat_shipping_rate');
delete_site_option('wgby_flat_shipping_rate');
delete_option('wgby_color_primer');
delete_site_option('wgby_color_primer');
delete_option('wgby_color_secondary');
delete_site_option('wgby_color_secondary');
delete_option('wgby_color_headings');
delete_site_option('wgby_color_headings');
delete_option('wgby_color_text');
delete_site_option('wgby_color_text');
delete_option('wgby_color_transparent_text');
delete_site_option('wgby_color_transparent_text');
delete_option('wgby_sort_categories');
delete_site_option('wgby_sort_categories');
delete_option('wgby_minimum_order');
delete_site_option('wgby_minimum_order');
delete_option('wgby_bag_empty_headings');
delete_site_option('wgby_bag_empty_headings');
delete_option('wgby_bag_empty_description');
delete_site_option('wgby_bag_empty_description');

