<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_recent_orders_order_statuses');
delete_site_option('alg_wc_recent_orders_order_statuses');
delete_option('alg_wc_recent_orders_template_order_item_row');
delete_site_option('alg_wc_recent_orders_template_order_item_row');
delete_option('alg_wc_recent_orders_limit');
delete_site_option('alg_wc_recent_orders_limit');
delete_option('alg_wc_recent_orders_template_before');
delete_site_option('alg_wc_recent_orders_template_before');
delete_option('alg_wc_recent_orders_template_row');
delete_site_option('alg_wc_recent_orders_template_row');
delete_option('alg_wc_recent_orders_template_after');
delete_site_option('alg_wc_recent_orders_template_after');
delete_option('alg_wc_recent_orders_template_guest');
delete_site_option('alg_wc_recent_orders_template_guest');
delete_option('alg_wc_recent_orders_order_date_format');
delete_site_option('alg_wc_recent_orders_order_date_format');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('alg_wc_recent_orders_use_transients');
delete_site_option('alg_wc_recent_orders_use_transients');
delete_option('alg_wc_recent_orders_transients_expiration');
delete_site_option('alg_wc_recent_orders_transients_expiration');
delete_option('alg_wc_recent_orders_version');
delete_site_option('alg_wc_recent_orders_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

