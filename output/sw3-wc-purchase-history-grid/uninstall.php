<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('num_of_columns');
delete_site_option('num_of_columns');
delete_option('num_of_products');
delete_site_option('num_of_products');
delete_option('cat_operator');
delete_site_option('cat_operator');
delete_option('phg_cats');
delete_site_option('phg_cats');
delete_option('phg_order_by');
delete_site_option('phg_order_by');
delete_option('phg_order');
delete_site_option('phg_order');
delete_option('product_visibility');
delete_site_option('product_visibility');
delete_option('phg_tags');
delete_site_option('phg_tags');
delete_option('tag_operator');
delete_site_option('tag_operator');

