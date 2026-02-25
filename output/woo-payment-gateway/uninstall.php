<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_braintree_merchant_record');
delete_site_option('wc_braintree_merchant_record');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc_braintree_authenticated_routes');
delete_site_option('wc_braintree_authenticated_routes');
delete_option('wc_braintree_kount_api_key');
delete_site_option('wc_braintree_kount_api_key');
delete_option('wc_braintree_sandbox_plans');
delete_site_option('wc_braintree_sandbox_plans');
delete_option('wc_braintree_production_plans');
delete_site_option('wc_braintree_production_plans');
delete_option('braintree_wc_version');
delete_site_option('braintree_wc_version');
delete_option('woocommerce_queue_flush_rewrite_rules');
delete_site_option('woocommerce_queue_flush_rewrite_rules');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('braintree_payment_settings');
delete_site_option('braintree_payment_settings');
delete_option('woocommerce_braintree_api_settings');
delete_site_option('woocommerce_braintree_api_settings');
delete_option('woocommerce_braintree_cc_settings');
delete_site_option('woocommerce_braintree_cc_settings');
delete_option('woocommerce_braintree_paypal_settings');
delete_site_option('woocommerce_braintree_paypal_settings');
delete_option('woocommerce_braintree_googlepay_settings');
delete_site_option('woocommerce_braintree_googlepay_settings');
delete_option('woocommerce_braintree_applepay_settings');
delete_site_option('woocommerce_braintree_applepay_settings');
delete_option('bfwc_kount_key');
delete_site_option('bfwc_kount_key');
delete_option('woocommerce_braintree_subscription_settings');
delete_site_option('woocommerce_braintree_subscription_settings');
delete_option('braintree_wc_production_plans');
delete_site_option('braintree_wc_production_plans');
delete_option('braintree_wc_sandbox_plans');
delete_site_option('braintree_wc_sandbox_plans');
delete_option('wc_braintree_show_3_0_notice');
delete_site_option('wc_braintree_show_3_0_notice');
delete_option('bfwc_show_deprecated_donations');
delete_site_option('bfwc_show_deprecated_donations');
delete_option('bfwc_error_messages');
delete_site_option('bfwc_error_messages');
delete_option('bfwc_default_settings');
delete_site_option('bfwc_default_settings');
delete_option('bfwc_admin_notices');
delete_site_option('bfwc_admin_notices');
delete_option('braintree_gateway_log_current_post');
delete_site_option('braintree_gateway_log_current_post');
delete_option('braintree_for_woocommerce_version');
delete_site_option('braintree_for_woocommerce_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_braintree_lock_order_%', '_site_transient_braintree_lock_order_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_trial_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_trial_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_trial_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_trial_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_one_time_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_one_time_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_one_time_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_one_time_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sandbox_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sandbox_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sandbox_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sandbox_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_production_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_production_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_production_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_production_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_length' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_sign_up_fee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_braintree_sandbox_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_braintree_sandbox_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_braintree_sandbox_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_braintree_sandbox_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_braintree_production_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_braintree_production_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_braintree_production_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_braintree_production_plans' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_method_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_method_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_method_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_method_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_braintree_token_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_braintree_token_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_braintree_token_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_braintree_token_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_contains_synced_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_contains_synced_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_contains_synced_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_contains_synced_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );

