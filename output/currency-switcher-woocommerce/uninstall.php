<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_currency_switcher_version');
delete_site_option('alg_currency_switcher_version');
delete_option('alg_currency_switcher_per_product_enabled');
delete_site_option('alg_currency_switcher_per_product_enabled');
delete_option('alg_currency_switcher_fixed_coupons_base_currency_enabled');
delete_site_option('alg_currency_switcher_fixed_coupons_base_currency_enabled');
delete_option('alg_wc_currency_switcher_enabled');
delete_site_option('alg_wc_currency_switcher_enabled');
delete_option('alg_currency_switcher_exchange_rate_update');
delete_site_option('alg_currency_switcher_exchange_rate_update');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_currency_switcher_currency_countries_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
delete_option('wpwham_currency_switcher_version');
delete_site_option('wpwham_currency_switcher_version');
delete_option('alg_wc_currency_switcher_currency_countries_as_text_enabled');
delete_site_option('alg_wc_currency_switcher_currency_countries_as_text_enabled');
delete_option('alg_currency_switcher_total_number');
delete_site_option('alg_currency_switcher_total_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_currency_switcher_currency_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_currency_switcher_currency_shop_default');
delete_site_option('alg_currency_switcher_currency_shop_default');
delete_option('alg_currency_switcher_exchange_rate_cron_time');
delete_site_option('alg_currency_switcher_exchange_rate_cron_time');
delete_option('alg_currency_switcher_exchange_rate_server');
delete_site_option('alg_currency_switcher_exchange_rate_server');
delete_option('alg_currency_switcher_exchange_rate_offset');
delete_site_option('alg_currency_switcher_exchange_rate_offset');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_currency_locales_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_currency_switcher_currency_locales_as_text_enabled');
delete_site_option('alg_wc_currency_switcher_currency_locales_as_text_enabled');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('wpw_currency_switcher_price_filter_widget_enabled');
delete_site_option('wpw_currency_switcher_price_filter_widget_enabled');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('alg_wc_currency_switcher_currency_locales_enabled');
delete_site_option('alg_wc_currency_switcher_currency_locales_enabled');
delete_option('alg_wc_currency_switcher_currency_locales_use_always_enabled');
delete_site_option('alg_wc_currency_switcher_currency_locales_use_always_enabled');
delete_option('alg_currency_switcher_fix_mini_cart');
delete_site_option('alg_currency_switcher_fix_mini_cart');
delete_option('alg_wc_currency_switcher_order_admin_currency');
delete_site_option('alg_wc_currency_switcher_order_admin_currency');
delete_option('alg_wc_currency_switcher_order_admin_format');
delete_site_option('alg_wc_currency_switcher_order_admin_format');
delete_option('alg_currency_switcher_disable_uri');
delete_site_option('alg_currency_switcher_disable_uri');
delete_option('alg_wc_currency_switcher_price_formats_enabled');
delete_site_option('alg_wc_currency_switcher_price_formats_enabled');
delete_option('alg_currency_switcher_fixed_amount_coupons_enabled');
delete_site_option('alg_currency_switcher_fixed_amount_coupons_enabled');
delete_option('wpw_currency_switcher_shipping_enabled');
delete_site_option('wpw_currency_switcher_shipping_enabled');
delete_option('alg_currency_switcher_free_shipping_min_amount_enabled');
delete_site_option('alg_currency_switcher_free_shipping_min_amount_enabled');
delete_option('alg_currency_switcher_cart_fees_enabled');
delete_site_option('alg_currency_switcher_cart_fees_enabled');
delete_option('alg_currency_switcher_placement');
delete_site_option('alg_currency_switcher_placement');
delete_option('alg_currency_switcher_js_reposition_enabled');
delete_site_option('alg_currency_switcher_js_reposition_enabled');
delete_option('alg_wc_currency_switcher_flags_enabled');
delete_site_option('alg_wc_currency_switcher_flags_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_currency_code_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_currency_code_pos_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_currency_position_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_decimal_separator_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_thousand_separator_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_price_formats_number_of_decimals_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_currency_switcher_rounding');
delete_site_option('alg_currency_switcher_rounding');
delete_option('alg_currency_switcher_rounding_precision');
delete_site_option('alg_currency_switcher_rounding_precision');
delete_option('alg_currency_switcher_make_pretty_price');
delete_site_option('alg_currency_switcher_make_pretty_price');
delete_option('alg_currency_switcher_default_currency_enabled');
delete_site_option('alg_currency_switcher_default_currency_enabled');
delete_option('alg_currency_switcher_revert');
delete_site_option('alg_currency_switcher_revert');
delete_option('alg_currency_switcher_apply_rounding_and_pretty_to_shipping');
delete_site_option('alg_currency_switcher_apply_rounding_and_pretty_to_shipping');
delete_option('wpwham_currency_switcher_dbversion');
delete_site_option('wpwham_currency_switcher_dbversion');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_currency_switcher_flags_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpw_cs_fcc_api_key');
delete_site_option('wpw_cs_fcc_api_key');
delete_option('wpw_currency_switcher_coinmarketcap_api_key');
delete_site_option('wpw_currency_switcher_coinmarketcap_api_key');
delete_option('wpw_currency_switcher_currencyapi_api_key');
delete_site_option('wpw_currency_switcher_currencyapi_api_key');
delete_option('alg_wc_currency_switcher_session_save_path');
delete_site_option('alg_wc_currency_switcher_session_save_path');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_currency_switcher_currency_enabled_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_currency_switcher_currency_countries_override');
delete_site_option('alg_wc_currency_switcher_currency_countries_override');
delete_option('alg_wc_currency_switcher_currency_countries_enabled');
delete_site_option('alg_wc_currency_switcher_currency_countries_enabled');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('alg_wc_currency_switcher_price_conversion_method');
delete_site_option('alg_wc_currency_switcher_price_conversion_method');
delete_option('alg_currency_switcher_additional_price_filters');
delete_site_option('alg_currency_switcher_additional_price_filters');
delete_option('alg_currency_switcher_price_filters_to_remove');
delete_site_option('alg_currency_switcher_price_filters_to_remove');
delete_option('alg_currency_switcher_format');
delete_site_option('alg_currency_switcher_format');
delete_option('alg_currency_switcher_wrapper');
delete_site_option('alg_currency_switcher_wrapper');
delete_option('alg_wc_currency_switcher_link_list_separator');
delete_site_option('alg_wc_currency_switcher_link_list_separator');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_currency_switcher_per_product_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_currency_switcher_per_product_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_currency_switcher_per_product_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_currency_switcher_per_product_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );

