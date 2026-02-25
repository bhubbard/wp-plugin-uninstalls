<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpler_auto_render_product_button');
delete_site_option('simpler_auto_render_product_button');
delete_option('simplerwc_product_button_placement');
delete_site_option('simplerwc_product_button_placement');
delete_option('simpler_auto_render_cart_button');
delete_site_option('simpler_auto_render_cart_button');
delete_option('simplerwc_cart_page_button_placement');
delete_site_option('simplerwc_cart_page_button_placement');
delete_option('simplerwc_auto_render_checkout_page_button');
delete_site_option('simplerwc_auto_render_checkout_page_button');
delete_option('simplerwc_checkout_page_button_placement');
delete_site_option('simplerwc_checkout_page_button_placement');
delete_option('simplerwc_auto_render_minicart_button');
delete_site_option('simplerwc_auto_render_minicart_button');
delete_option('simplerwc_minicart_button_placement');
delete_site_option('simplerwc_minicart_button_placement');
delete_option('simplerwc_show_cards_notice');
delete_site_option('simplerwc_show_cards_notice');
delete_option('simplerwc_excluded_user_roles');
delete_site_option('simplerwc_excluded_user_roles');
delete_option('simpler_environment');
delete_site_option('simpler_environment');
delete_option('simpler_api_key');
delete_site_option('simpler_api_key');
delete_option('simpler_api_secret');
delete_site_option('simpler_api_secret');
delete_option('simpler_checkout_test_mode');
delete_site_option('simpler_checkout_test_mode');
delete_option('simplerwc_support_woo_order_attribution');
delete_site_option('simplerwc_support_woo_order_attribution');
delete_option('simplerwc_disable_force_login');
delete_site_option('simplerwc_disable_force_login');
delete_option('simplerwc_should_render_sale_ribbon');
delete_site_option('simplerwc_should_render_sale_ribbon');
delete_option('simplerwc_sale_ribbon_text');
delete_site_option('simplerwc_sale_ribbon_text');
delete_option('simplerwc_takeover_enable');
delete_site_option('simplerwc_takeover_enable');
delete_option('simplerwc_takeover_test_mode');
delete_site_option('simplerwc_takeover_test_mode');
delete_option('simplerwc_takeover_redirect_only');
delete_site_option('simplerwc_takeover_redirect_only');
delete_option('tgpc_gift_wrapper_enabled');
delete_site_option('tgpc_gift_wrapper_enabled');
delete_option('tgpc_gift_wrapper_cost');
delete_site_option('tgpc_gift_wrapper_cost');
delete_option('tgpc_gift_wrapper_cost_tax_status');
delete_site_option('tgpc_gift_wrapper_cost_tax_status');
delete_option('tgpc_gift_wrapper_tax_class');
delete_site_option('tgpc_gift_wrapper_tax_class');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('simpler_product_button_custom_style');
delete_site_option('simpler_product_button_custom_style');
delete_option('simpler_mini_cart_button_custom_style');
delete_site_option('simpler_mini_cart_button_custom_style');
delete_option('simpler_cart_page_button_custom_style');
delete_site_option('simpler_cart_page_button_custom_style');
delete_option('simpler_checkout_page_button_custom_style');
delete_site_option('simpler_checkout_page_button_custom_style');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woobt_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woobt_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woobt_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woobt_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bundle_sells' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bundle_sells' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bundle_sells' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bundle_sells' ) );

