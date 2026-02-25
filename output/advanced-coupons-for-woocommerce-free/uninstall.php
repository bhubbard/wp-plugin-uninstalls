<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('acfw_installed_by');
delete_site_option('acfw_installed_by');
delete_option('acfwf_bogo_migrate_coupon_type');
delete_site_option('acfwf_bogo_migrate_coupon_type');
delete_option('acfw_bogo_deals_default_values_set');
delete_site_option('acfw_bogo_deals_default_values_set');
delete_option('acfwf_activation_code_triggered');
delete_site_option('acfwf_activation_code_triggered');
delete_option('acfwf_feature_counts_initialized');
delete_site_option('acfwf_feature_counts_initialized');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('pushengage_installed_by');
delete_site_option('pushengage_installed_by');
delete_option('uncannyautomator_source');
delete_site_option('uncannyautomator_source');
delete_option('storeagent_installed_by');
delete_site_option('storeagent_installed_by');
delete_option('wwp_installed_by');
delete_site_option('wwp_installed_by');
delete_option('woocommerce_feature_custom_order_tables_enabled');
delete_site_option('woocommerce_feature_custom_order_tables_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('acfw_option_update_data');
delete_site_option('acfw_option_update_data');
delete_option('acfw_slmw_license_key');
delete_site_option('acfw_slmw_license_key');
delete_option('acfw_license_activated');
delete_site_option('acfw_license_activated');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_flush_rules', '_site_transient_%_flush_rules' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_acfwf_hide_free_guide_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_acfwf_hide_free_guide_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_acfwf_hide_free_guide_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_acfwf_hide_free_guide_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pushengage_subscriber_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pushengage_subscriber_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pushengage_subscriber_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pushengage_subscriber_ids' ) );

