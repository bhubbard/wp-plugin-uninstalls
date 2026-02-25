<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_woo_discount_rules_load_version');
delete_site_option('advanced_woo_discount_rules_load_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('_awdr_review');
delete_site_option('_awdr_review');
delete_option('advanced_woo_discount_rules_current_version');
delete_site_option('advanced_woo_discount_rules_current_version');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');
delete_option('woo-discount-config');
delete_site_option('woo-discount-config');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('awdr_priority_reset');
delete_site_option('awdr_priority_reset');
delete_option('awdr_activity_log_version');
delete_site_option('awdr_activity_log_version');

// Delete Transients
delete_transient('awdr_addons_list');
delete_site_transient('awdr_addons_list');
delete_transient('wdr_recommendations_list');
delete_site_transient('wdr_recommendations_list');
delete_transient('awdr_sale_count');
delete_site_transient('awdr_sale_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'awdr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'awdr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'awdr_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'awdr_filters' ) );

