<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_flexible_shipping_ups_settings');
delete_site_option('woocommerce_flexible_shipping_ups_settings');
delete_option('debug_mode');
delete_site_option('debug_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpdesk_helper_options');
delete_site_option('wpdesk_helper_options');
delete_option('wpdesk_tracker_notice');
delete_site_option('wpdesk_tracker_notice');
delete_option('wpdesk_tracker_agree');
delete_site_option('wpdesk_tracker_agree');
delete_option('wpdesk_tracker_last_send');
delete_site_option('wpdesk_tracker_last_send');
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_file_download_method');
delete_site_option('woocommerce_file_download_method');
delete_option('woocommerce_downloads_require_login');
delete_site_option('woocommerce_downloads_require_login');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_enable_coupons');
delete_site_option('woocommerce_enable_coupons');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_enable_myaccount_registration');
delete_site_option('woocommerce_enable_myaccount_registration');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woocommerce_feature_product_block_editor_enabled');
delete_site_option('woocommerce_feature_product_block_editor_enabled');
delete_option('woocommerce_tracker_ua');
delete_site_option('woocommerce_tracker_ua');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plugin_activation_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpdesk_tracker_send_event');
wp_clear_scheduled_hook('wc_connect_fetch_service_schemas');

