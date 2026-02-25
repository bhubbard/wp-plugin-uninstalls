<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_price_by_user_role_enabled');
delete_site_option('alg_wc_price_by_user_role_enabled');
delete_option('alg_wc_price_by_user_role_for_bots_disabled');
delete_site_option('alg_wc_price_by_user_role_for_bots_disabled');
delete_option('alg_wc_price_by_user_role_shipping_enabled');
delete_site_option('alg_wc_price_by_user_role_shipping_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_price_by_user_role_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_price_by_user_role_per_product_enabled');
delete_site_option('alg_wc_price_by_user_role_per_product_enabled');
delete_option('alg_wc_price_by_user_role_multipliers_enabled');
delete_site_option('alg_wc_price_by_user_role_multipliers_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_price_by_user_role_empty_price_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('alg_wc_price_by_user_role_per_product_show_roles');
delete_site_option('alg_wc_price_by_user_role_per_product_show_roles');
delete_option('alg_wc_price_by_user_role_guest');
delete_site_option('alg_wc_price_by_user_role_guest');
delete_option('alg_wc_price_by_user_role_empty_price_guest');
delete_site_option('alg_wc_price_by_user_role_empty_price_guest');
delete_option('alg_wc_price_by_user_role_administrator');
delete_site_option('alg_wc_price_by_user_role_administrator');
delete_option('alg_wc_price_by_user_role_empty_price_administrator');
delete_site_option('alg_wc_price_by_user_role_empty_price_administrator');
delete_option('alg_wc_price_by_user_role_editor');
delete_site_option('alg_wc_price_by_user_role_editor');
delete_option('alg_wc_price_by_user_role_empty_price_editor');
delete_site_option('alg_wc_price_by_user_role_empty_price_editor');
delete_option('alg_wc_price_by_user_role_author');
delete_site_option('alg_wc_price_by_user_role_author');
delete_option('alg_wc_price_by_user_role_empty_price_author');
delete_site_option('alg_wc_price_by_user_role_empty_price_author');
delete_option('alg_wc_price_by_user_role_contributor');
delete_site_option('alg_wc_price_by_user_role_contributor');
delete_option('alg_wc_price_by_user_role_empty_price_contributor');
delete_site_option('alg_wc_price_by_user_role_empty_price_contributor');
delete_option('alg_wc_price_by_user_role_subscriber');
delete_site_option('alg_wc_price_by_user_role_subscriber');
delete_option('alg_wc_price_by_user_role_empty_price_subscriber');
delete_site_option('alg_wc_price_by_user_role_empty_price_subscriber');
delete_option('alg_wc_price_by_user_role_shop_manager');
delete_site_option('alg_wc_price_by_user_role_shop_manager');
delete_option('alg_wc_price_by_user_role_seller');
delete_site_option('alg_wc_price_by_user_role_seller');
delete_option('alg_wc_price_by_user_role_vendor_staff');
delete_site_option('alg_wc_price_by_user_role_vendor_staff');
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
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_price_by_user_role_reset_usage_tracking');
delete_site_option('alg_wc_price_by_user_role_reset_usage_tracking');
delete_option('pbur_lite_allow_tracking');
delete_site_option('pbur_lite_allow_tracking');
delete_option('alg_wc_price_by_user_role_version');
delete_site_option('alg_wc_price_by_user_role_version');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_page_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_page_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_page_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'alg_wc_price_by_user_role_order_page_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_alg_wc_price_by_user_role_per_product_settings_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_alg_wc_price_by_user_role_per_product_settings_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_alg_wc_price_by_user_role_per_product_settings_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_alg_wc_price_by_user_role_per_product_settings_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_empty_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_empty_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_empty_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_empty_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_regular_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_alg_wc_price_by_user_role_sale_price_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );

