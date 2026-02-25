<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gzdp_checkout_enable');
delete_site_option('woocommerce_gzdp_checkout_enable');
delete_option('woocommerce_enable_signup_from_checkout_for_subscriptions');
delete_site_option('woocommerce_enable_signup_from_checkout_for_subscriptions');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_checkout_phone_field');
delete_site_option('woocommerce_checkout_phone_field');
delete_option('novalnet_admin_full_refund');
delete_site_option('novalnet_admin_full_refund');
delete_option('novalnet_enable_subs');
delete_site_option('novalnet_enable_subs');
delete_option('novalnet_enable_shop_subs');
delete_site_option('novalnet_enable_shop_subs');
delete_option('novalnet_subs_tariff_id');
delete_site_option('novalnet_subs_tariff_id');
delete_option('novalnet_usr_subcl');
delete_site_option('novalnet_usr_subcl');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'novalnet_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('novalnet_key_password');
delete_site_option('novalnet_key_password');
delete_option('novalnet_db_version');
delete_site_option('novalnet_db_version');
delete_option('woocommerce_gateway_order');
delete_site_option('woocommerce_gateway_order');
delete_option('novalnet_public_key');
delete_site_option('novalnet_public_key');
delete_option('novalnet_client_key');
delete_site_option('novalnet_client_key');
delete_option('novalnet_enable_callback');
delete_site_option('novalnet_enable_callback');
delete_option('novalnet_callback_emailtoaddr');
delete_site_option('novalnet_callback_emailtoaddr');
delete_option('woocommerce_novalnet_guaranteed_sepa_settings');
delete_site_option('woocommerce_novalnet_guaranteed_sepa_settings');
delete_option('woocommerce_novalnet_guaranteed_invoice_settings');
delete_site_option('woocommerce_novalnet_guaranteed_invoice_settings');
delete_option('woocommerce_gzd_display_checkout_fallback');
delete_site_option('woocommerce_gzd_display_checkout_fallback');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_turn_off_automatic_payments' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nn_subscription_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nn_subscription_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nn_subscription_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nn_subscription_updated' ) );

