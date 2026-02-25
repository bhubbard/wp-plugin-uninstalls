<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
delete_option('wc_price_based_country_caching_support');
delete_site_option('wc_price_based_country_caching_support');
delete_option('wc_price_based_country_dbip_prefix');
delete_site_option('wc_price_based_country_dbip_prefix');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_maxmind_geolocation_settings');
delete_site_option('woocommerce_maxmind_geolocation_settings');
delete_option('woocommerce_allowed_countries');
delete_site_option('woocommerce_allowed_countries');
delete_option('wc_price_based_currency_format');
delete_site_option('wc_price_based_currency_format');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc_price_based_country_based_on');
delete_site_option('wc_price_based_country_based_on');
delete_option('wc_price_based_country_shipping_exchange_rate');
delete_site_option('wc_price_based_country_shipping_exchange_rate');
delete_option('wc_price_based_country_test_mode');
delete_site_option('wc_price_based_country_test_mode');
delete_option('wc_price_based_country_test_country');
delete_site_option('wc_price_based_country_test_country');
delete_option('wc_price_based_country_exchange_rate_api');
delete_site_option('wc_price_based_country_exchange_rate_api');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('wc_price_based_country_version');
delete_site_option('wc_price_based_country_version');
delete_option('_oga_wppbc_countries_groups');
delete_site_option('_oga_wppbc_countries_groups');
delete_option('wc_price_based_country_regions');
delete_site_option('wc_price_based_country_regions');
delete_option('wc_price_based_country_gla_integration');
delete_site_option('wc_price_based_country_gla_integration');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_wcpay_feature_customer_multi_currency');
delete_site_option('_wcpay_feature_customer_multi_currency');
delete_option('wcpay_multi_currency_enabled_currencies');
delete_site_option('wcpay_multi_currency_enabled_currencies');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('wc_price_based_country_debug_mode');
delete_site_option('wc_price_based_country_debug_mode');
delete_option('wc_price_based_country_debug_ip');
delete_site_option('wc_price_based_country_debug_ip');
delete_option('wc_price_based_country_update_geoip');
delete_site_option('wc_price_based_country_update_geoip');
delete_option('_oga_wppbc_apiurl');
delete_site_option('_oga_wppbc_apiurl');
delete_option('_oga_wppbc_api_country_field');
delete_site_option('_oga_wppbc_api_country_field');
delete_option('wc_price_based_shipping_conversion');
delete_site_option('wc_price_based_shipping_conversion');
delete_option('wc_price_based_country_hide_ads');
delete_site_option('wc_price_based_country_hide_ads');

// Delete Transients
delete_transient('wcpbc_updated_geoip');
delete_site_transient('wcpbc_updated_geoip');
delete_transient('wcpbc_products_onsale');
delete_site_transient('wcpbc_products_onsale');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wcpbc_notify_admin_deprecated_pro');
delete_site_transient('wcpbc_notify_admin_deprecated_pro');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wc_var_prices_%', '_site_transient_wc_var_prices_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_geoip_updater');
wp_clear_scheduled_hook('wcpbc_update_geoip');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zone_pricing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zone_pricing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zone_pricing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zone_pricing_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc_price_based_country_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc_price_based_country_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc_price_based_country_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc_price_based_country_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcpbc_pricing_zone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcpbc_pricing_zone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcpbc_pricing_zone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcpbc_pricing_zone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcpbc_base_exchange_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcpbc_base_exchange_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcpbc_base_exchange_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcpbc_base_exchange_rate' ) );

