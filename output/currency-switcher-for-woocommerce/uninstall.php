<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmcs_default_currency');
delete_site_option('pmcs_default_currency');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('pmcs_currencies');
delete_site_option('pmcs_currencies');
delete_option('pmsc_exchange_rate_update');
delete_site_option('pmsc_exchange_rate_update');
delete_option('pmsc_exchange_rate_server');
delete_site_option('pmsc_exchange_rate_server');
delete_option('pmcs_report_admin_currency');
delete_site_option('pmcs_report_admin_currency');
delete_option('pmcs_currency_by_ip');
delete_site_option('pmcs_currency_by_ip');
delete_option('pmcs_store_data_type');
delete_site_option('pmcs_store_data_type');
delete_option('pmcs_add_to_menu');
delete_site_option('pmcs_add_to_menu');
delete_option('pmcs_currency_auto_convert');
delete_site_option('pmcs_currency_auto_convert');
delete_option('pmcs_geoip');
delete_site_option('pmcs_geoip');
delete_option('pmcs_cart_default_currency');
delete_site_option('pmcs_cart_default_currency');
delete_option('pmcs_checkout_default_currency');
delete_site_option('pmcs_checkout_default_currency');
delete_option('pmcs_show_in_menu_location');
delete_site_option('pmcs_show_in_menu_location');
delete_option('pmcs_show_flag');
delete_site_option('pmcs_show_flag');
delete_option('pmcs_show_name');
delete_site_option('pmcs_show_name');
delete_option('pmcs_currencylayer_access_key');
delete_site_option('pmcs_currencylayer_access_key');
delete_option('pmcs_currencylayer_is_paid');
delete_site_option('pmcs_currencylayer_is_paid');
delete_option('pmcs_fixer_io_access_key');
delete_site_option('pmcs_fixer_io_access_key');
delete_option('pmcs_fixer_io_is_paid');
delete_site_option('pmcs_fixer_io_is_paid');
delete_option('pmcs_openexchangerates_app_id');
delete_site_option('pmcs_openexchangerates_app_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_amount_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_amount_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_amount_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_amount_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_currency_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_currency_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_currency_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_currency_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_base_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_base_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_base_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_base_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_currency_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_currency_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_currency_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_currency_checkout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_order_currency' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_sale_price_%' ) );

