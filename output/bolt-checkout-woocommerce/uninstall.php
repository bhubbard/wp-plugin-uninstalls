<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('bolt_should_delete_historic_session');
delete_site_option('bolt_should_delete_historic_session');
delete_option('bolt_delete_historic_session_time_to_delete');
delete_site_option('bolt_delete_historic_session_time_to_delete');
delete_option('delete_bolt_quick_buy_product_resources');
delete_site_option('delete_bolt_quick_buy_product_resources');
delete_option('delete_bolt_resources_registered_time');
delete_site_option('delete_bolt_resources_registered_time');
delete_option('delete_bolt_resources_time');
delete_site_option('delete_bolt_resources_time');
delete_option('delete_bolt_session_data_resources');
delete_site_option('delete_bolt_session_data_resources');
delete_option('delete_bolt_session_posteddata_resources');
delete_site_option('delete_bolt_session_posteddata_resources');
delete_option('delete_bolt_shipping_and_tax_resources');
delete_site_option('delete_bolt_shipping_and_tax_resources');
delete_option('has_initiated_clearing_historic_bolt_resources');
delete_site_option('has_initiated_clearing_historic_bolt_resources');
delete_option('bolt_load_test');
delete_site_option('bolt_load_test');
delete_option('woocommerce_bolt_checkout_version');
delete_site_option('woocommerce_bolt_checkout_version');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
delete_option('routeapp_public_token');
delete_site_option('routeapp_public_token');
delete_option('routeapp_secret_token');
delete_site_option('routeapp_secret_token');
delete_option('woocommerce_shipping_tax_class');
delete_site_option('woocommerce_shipping_tax_class');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');
delete_option('advanced_woo_discount_rules_load_version');
delete_site_option('advanced_woo_discount_rules_load_version');
delete_option('enable_woocommerce_extra_shipping_options');
delete_site_option('enable_woocommerce_extra_shipping_options');
delete_option('woocommerce_smart_coupon_apply_before_tax');
delete_site_option('woocommerce_smart_coupon_apply_before_tax');

// Delete Transients
delete_transient('wc_bolt_checkout_installing');
delete_site_transient('wc_bolt_checkout_installing');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_option_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_option_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_option_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_option_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sa_cbl_locations_lookup_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sa_cbl_locations_lookup_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sa_cbl_locations_lookup_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sa_cbl_locations_lookup_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_locations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_locations' ) );

