<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_esto_settings');
delete_site_option('woocommerce_esto_settings');
delete_option('esto_calculator_enabled');
delete_site_option('esto_calculator_enabled');
delete_option('esto_calculator_hook');
delete_site_option('esto_calculator_hook');
delete_option('esto_calculator_type');
delete_site_option('esto_calculator_type');
delete_option('esto_calculator_esto3_months');
delete_site_option('esto_calculator_esto3_months');
delete_option('esto_calculator_show_logo');
delete_site_option('esto_calculator_show_logo');
delete_option('esto_calculator_whitelabel');
delete_site_option('esto_calculator_whitelabel');
delete_option('esto_calculator_show_on_loop');
delete_site_option('esto_calculator_show_on_loop');
delete_option('esto_calculator_show_on_product');
delete_site_option('esto_calculator_show_on_product');
delete_option('esto_calculator_monthly_payment_url');
delete_site_option('esto_calculator_monthly_payment_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'esto_custom_logo_hire_purchase_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'esto_custom_logo_esto_x_%' ) );
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
delete_option('esto_enable_deals_tracking');
delete_site_option('esto_enable_deals_tracking');
delete_option('everflow_advertiser_id');
delete_site_option('everflow_advertiser_id');
delete_option('everflow_advertiser_id_lv');
delete_site_option('everflow_advertiser_id_lv');
delete_option('everflow_advertiser_id_lt');
delete_site_option('everflow_advertiser_id_lt');
delete_option('everflow_ef_region_token');
delete_site_option('everflow_ef_region_token');
delete_option('everflow_ef_region_token_lv');
delete_site_option('everflow_ef_region_token_lv');
delete_option('everflow_ef_region_token_lt');
delete_site_option('everflow_ef_region_token_lt');
delete_option('esto_default_country');
delete_site_option('esto_default_country');
delete_option('everflow_advertiser_id_ee');
delete_site_option('everflow_advertiser_id_ee');
delete_option('everflow_ef_region_token_ee');
delete_site_option('everflow_ef_region_token_ee');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%esto_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_esto_purchase_url_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_esto_purchase_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_esto_purchase_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_esto_purchase_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_esto_purchase_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_esto_purchase_url_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_esto_purchase_url_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_payment_method_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_esto_purchase_url_payment_method_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_payment_method_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_esto_purchase_url_payment_method_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'esto_order_nr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'esto_order_nr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'esto_order_nr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'esto_order_nr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'esto_prefixed_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'esto_prefixed_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'esto_prefixed_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'esto_prefixed_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'esto_preferred_bank' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'esto_preferred_bank' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'esto_preferred_bank' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'esto_preferred_bank' ) );

