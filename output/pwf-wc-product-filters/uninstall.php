<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwf_style');
delete_site_option('pwf_style');
delete_option('pwf_shop_analytics');
delete_site_option('pwf_shop_analytics');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('pwf_woo_query_filters');
delete_site_option('pwf_woo_query_filters');
delete_option('pwf_woocommerce_analytic_meta_labels');
delete_site_option('pwf_woocommerce_analytic_meta_labels');
delete_option('pwf_woocommerce_analytic_range_slider_meta_labels');
delete_site_option('pwf_woocommerce_analytic_range_slider_meta_labels');
delete_option('pwf_woocommerce_version');
delete_site_option('pwf_woocommerce_version');
delete_option('pwf_woocommerce_free_version');
delete_site_option('pwf_woocommerce_free_version');
delete_option('pwf_woocommerce_free_version_update_message');
delete_site_option('pwf_woocommerce_free_version_update_message');
delete_option('pwf_woocommerce_db_version');
delete_site_option('pwf_woocommerce_db_version');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');

// Delete Transients
delete_transient('pwf_woo_filter_analytic_languages_list');
delete_site_transient('pwf_woo_filter_analytic_languages_list');
delete_transient('pwf_woo_filter_set_db_for_analytic');
delete_site_transient('pwf_woo_filter_set_db_for_analytic');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pwf_woo_post_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pwf_woo_post_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pwf_woo_post_filter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pwf_woo_post_filter' ) );

