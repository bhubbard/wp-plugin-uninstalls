<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('alg_wc_cpp_version');
delete_site_option('alg_wc_cpp_version');
delete_option('alg_wc_cpp_sort_by_converted_price');
delete_site_option('alg_wc_cpp_sort_by_converted_price');
delete_option('alg_wc_cpp_filter_by_converted_price');
delete_site_option('alg_wc_cpp_filter_by_converted_price');
delete_option('alg_wc_cpp_enabled');
delete_site_option('alg_wc_cpp_enabled');
delete_option('alg_wc_cpp_shop_behaviour');
delete_site_option('alg_wc_cpp_shop_behaviour');
delete_option('alg_wc_cpp_cart_checkout');
delete_site_option('alg_wc_cpp_cart_checkout');
delete_option('alg_wc_cpp_custom_currency_symbol_enabled');
delete_site_option('alg_wc_cpp_custom_currency_symbol_enabled');
delete_option('alg_wc_cpp_custom_currency_symbol_template');
delete_site_option('alg_wc_cpp_custom_currency_symbol_template');
delete_option('alg_wc_cpp_fix_mini_cart');
delete_site_option('alg_wc_cpp_fix_mini_cart');
delete_option('alg_wc_cpp_currency_reports_enabled');
delete_site_option('alg_wc_cpp_currency_reports_enabled');
delete_option('alg_wc_cpp_original_price_in_shop_enabled');
delete_site_option('alg_wc_cpp_original_price_in_shop_enabled');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('alg_wc_cpp_original_price_in_shop_template');
delete_site_option('alg_wc_cpp_original_price_in_shop_template');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('alg_wc_cpp_by_users_enabled');
delete_site_option('alg_wc_cpp_by_users_enabled');
delete_option('alg_wc_cpp_by_user_roles_enabled');
delete_site_option('alg_wc_cpp_by_user_roles_enabled');
delete_option('alg_wc_cpp_by_product_cats_enabled');
delete_site_option('alg_wc_cpp_by_product_cats_enabled');
delete_option('alg_wc_cpp_by_product_tags_enabled');
delete_site_option('alg_wc_cpp_by_product_tags_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_users_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_currency_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_user_roles_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_product_cats_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_product_tags_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_cpp_cart_checkout_leave_one_product');
delete_site_option('alg_wc_cpp_cart_checkout_leave_one_product');
delete_option('alg_wc_cpp_cart_checkout_leave_same_currency');
delete_site_option('alg_wc_cpp_cart_checkout_leave_same_currency');
delete_option('alg_wc_cpp_save_products_prices');
delete_site_option('alg_wc_cpp_save_products_prices');
delete_option('alg_wc_cpp_exchange_rate_update_rate');
delete_site_option('alg_wc_cpp_exchange_rate_update_rate');
delete_option('alg_wc_cpp_currency_0');
delete_site_option('alg_wc_cpp_currency_0');
delete_option('alg_wc_cpp_exchange_rate_0');
delete_site_option('alg_wc_cpp_exchange_rate_0');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_cpp_exchange_rate_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_cpp_total_number');
delete_site_option('alg_wc_cpp_total_number');
delete_option('alg_wc_cpp_exchange_rate_update');
delete_site_option('alg_wc_cpp_exchange_rate_update');
delete_option('alg_wc_cpp_currency_exchange_rates_server');
delete_site_option('alg_wc_cpp_currency_exchange_rates_server');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ts_tracker_last_send');
delete_site_option('ts_tracker_last_send');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('alg_wc_cpp_currency_exchange_rates_calculate_by_invert');
delete_site_option('alg_wc_cpp_currency_exchange_rates_calculate_by_invert');
delete_option('alg_wc_cpp_calculate_all_products_prices_cron_time');
delete_site_option('alg_wc_cpp_calculate_all_products_prices_cron_time');
delete_option('alg_wc_cpp_exchange_rate_cron_time');
delete_site_option('alg_wc_cpp_exchange_rate_cron_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ts_reset_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_cpp_currency_reports_enabled ');
delete_site_option('alg_wc_cpp_currency_reports_enabled ');
delete_option('alg_wc_cpp__reset');
delete_site_option('alg_wc_cpp__reset');
delete_option('alg_wc_cpp_behaviour_reset');
delete_site_option('alg_wc_cpp_behaviour_reset');
delete_option('alg_wc_cpp_currencies_reset');
delete_site_option('alg_wc_cpp_currencies_reset');
delete_option('alg_wc_cpp_free_currency_converter_api_key');
delete_site_option('alg_wc_cpp_free_currency_converter_api_key');
delete_option('alg_wc_cpp_exchange_rates_reset');
delete_site_option('alg_wc_cpp_exchange_rates_reset');
delete_option('alg_wc_cpp_advanced_reset');
delete_site_option('alg_wc_cpp_advanced_reset');
delete_option('edd_license_key_cpp');
delete_site_option('edd_license_key_cpp');
delete_option('edd_license_cpp_hidden_button');
delete_site_option('edd_license_cpp_hidden_button');
delete_option('edd_license_key_cpp_status');
delete_site_option('edd_license_key_cpp_status');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_cpp_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_cpp_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_cpp_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_cpp_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_booking_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_booking_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_booking_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_booking_cost' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tx_woocommerce_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tx_woocommerce_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tx_woocommerce_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tx_woocommerce_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_cpp_converted_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_cpp_converted_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_cpp_converted_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_cpp_converted_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );

