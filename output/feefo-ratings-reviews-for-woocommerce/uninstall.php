<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feefo_wc_wp_just_installed');
delete_site_option('feefo_wc_wp_just_installed');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('feefo_wc_wp_stored_options');
delete_site_option('feefo_wc_wp_stored_options');
delete_option('feefo_wc_wp_widget_options');
delete_site_option('feefo_wc_wp_widget_options');
delete_option('feefo_service_reviews_widget');
delete_site_option('feefo_service_reviews_widget');
delete_option('feefo_product_reviews_widget');
delete_site_option('feefo_product_reviews_widget');
delete_option('feefo_product_widget_placement');
delete_site_option('feefo_product_widget_placement');
delete_option('feefo_disable_woocommerce_review_tab');
delete_site_option('feefo_disable_woocommerce_review_tab');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');
delete_option('woocommerce_review_rating_required');
delete_site_option('woocommerce_review_rating_required');

