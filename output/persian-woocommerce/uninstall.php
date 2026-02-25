<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PW_Options');
delete_site_option('PW_Options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'persian_woo_notice_number_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pw_notices');
delete_site_option('pw_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pw_dismiss_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pw_dismiss_notice_all');
delete_site_option('pw_dismiss_notice_all');
delete_option('persian_woocommerce_feed');
delete_site_option('persian_woocommerce_feed');
delete_option('woocommerce_allow_tracking');
delete_site_option('woocommerce_allow_tracking');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woocommerce_analytics_enabled');
delete_site_option('woocommerce_analytics_enabled');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('woocommerce_excluded_report_order_statuses');
delete_site_option('woocommerce_excluded_report_order_statuses');
delete_option('woocommerce_date_type');
delete_site_option('woocommerce_date_type');

// Delete Transients
delete_transient('pw_update_notices');
delete_site_transient('pw_update_notices');

