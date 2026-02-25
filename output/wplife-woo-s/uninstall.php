<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('add_sort_a');
delete_site_option('add_sort_a');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('add_sort_z');
delete_site_option('add_sort_z');
delete_option('add_sort_sku');
delete_site_option('add_sort_sku');
delete_option('woocommerce_default_catalog_orderby_sku');
delete_site_option('woocommerce_default_catalog_orderby_sku');
delete_option('add_show_empty_cat');
delete_site_option('add_show_empty_cat');
delete_option('add_sort_date');
delete_site_option('add_sort_date');

