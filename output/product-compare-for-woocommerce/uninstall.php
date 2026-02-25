<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proco_product_compare');
delete_site_option('proco_product_compare');
delete_option('current_products_id');
delete_site_option('current_products_id');
delete_option('current_compare_cat_id');
delete_site_option('current_compare_cat_id');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

