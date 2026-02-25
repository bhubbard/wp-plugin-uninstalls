<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_jdt_paging_type');
delete_site_option('wp_jdt_paging_type');
delete_option('wp_jdt_page_length');
delete_site_option('wp_jdt_page_length');
delete_option('wp_jdt_order_row');
delete_site_option('wp_jdt_order_row');
delete_option('wp_jdt_order_row_sort');
delete_site_option('wp_jdt_order_row_sort');
delete_option('wp_jdt_info');
delete_site_option('wp_jdt_info');
delete_option('wp_jdt_paging');
delete_site_option('wp_jdt_paging');
delete_option('wp_jdt_b_length_change');
delete_site_option('wp_jdt_b_length_change');
delete_option('wp_jdt_ordering');
delete_site_option('wp_jdt_ordering');
delete_option('wp_jdt_searching');
delete_site_option('wp_jdt_searching');

