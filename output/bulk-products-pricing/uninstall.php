<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicoso_bulk_prod_price_plugin_enable');
delete_site_option('aicoso_bulk_prod_price_plugin_enable');
delete_option('_aicoso_bulk_prod_price_bulk_prod_price_cats_ids');
delete_site_option('_aicoso_bulk_prod_price_bulk_prod_price_cats_ids');
delete_option('_aicoso_bulk_prod_price_bulk_prod_price_products_ids');
delete_site_option('_aicoso_bulk_prod_price_bulk_prod_price_products_ids');
delete_option('aicoso_bulk_prod_price_tax_enable');
delete_site_option('aicoso_bulk_prod_price_tax_enable');
delete_option('aicoso_bulk_prod_price_ftable_enable');
delete_site_option('aicoso_bulk_prod_price_ftable_enable');
delete_option('_aicoso_bulk_prod_price_cats_ids');
delete_site_option('_aicoso_bulk_prod_price_cats_ids');
delete_option('_aicoso_bulk_prod_price_selected_products_id');
delete_site_option('_aicoso_bulk_prod_price_selected_products_id');
delete_option('_aicoso_bulk_prod_price_qty_min_max');
delete_site_option('_aicoso_bulk_prod_price_qty_min_max');
delete_option('_aicoso_bulk_prod_price_products_ids');
delete_site_option('_aicoso_bulk_prod_price_products_ids');
delete_option('aicoso_bulk_prod_price_table_thead_border');
delete_site_option('aicoso_bulk_prod_price_table_thead_border');
delete_option('aicoso_bulk_prod_price_table_thead_bg');
delete_site_option('aicoso_bulk_prod_price_table_thead_bg');
delete_option('aicoso_bulk_prod_price_table_thead_text');
delete_site_option('aicoso_bulk_prod_price_table_thead_text');
delete_option('aicoso_bulk_prod_price_table_tbody_border');
delete_site_option('aicoso_bulk_prod_price_table_tbody_border');
delete_option('aicoso_bulk_prod_price_table_tbody_bg');
delete_site_option('aicoso_bulk_prod_price_table_tbody_bg');
delete_option('aicoso_bulk_prod_price_table_tbody_text');
delete_site_option('aicoso_bulk_prod_price_table_tbody_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_per_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_per_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_per_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_per_quantity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_quantity_pricing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_quantity_pricing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_quantity_pricing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aicoso_bulk_prod_price_quantity_pricing' ) );

