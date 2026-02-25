<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_woo_ai_rel_products_replace_single_rel_products');
delete_site_option('st_woo_ai_rel_products_replace_single_rel_products');
delete_option('st_woo_ai_rel_products_cart_page_rel_products');
delete_site_option('st_woo_ai_rel_products_cart_page_rel_products');
delete_option('st_woo_ai_rel_products_cart_ref_single_rel_products');
delete_site_option('st_woo_ai_rel_products_cart_ref_single_rel_products');
delete_option('st_woo_ai_rel_products_number_single_rel_products');
delete_site_option('st_woo_ai_rel_products_number_single_rel_products');
delete_option('st_woo_ai_rel_products_column_single_rel_products');
delete_site_option('st_woo_ai_rel_products_column_single_rel_products');
delete_option('st_woo_ai_rel_products_label_single_rel_products');
delete_site_option('st_woo_ai_rel_products_label_single_rel_products');
delete_option('st_woo_ai_rel_products_ordered_ref_single_rel_products');
delete_site_option('st_woo_ai_rel_products_ordered_ref_single_rel_products');
delete_option('st_woo_ai_rel_products_description_shortcode');
delete_site_option('st_woo_ai_rel_products_description_shortcode');

