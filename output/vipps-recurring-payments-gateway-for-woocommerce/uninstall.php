<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_kco_settings');
delete_site_option('woocommerce_kco_settings');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_vipps_recurring_checkout_page_id');
delete_site_option('woocommerce_vipps_recurring_checkout_page_id');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_vipps_recurring_settings');
delete_site_option('woocommerce_vipps_recurring_settings');
delete_option('woo-vipps-recurring-version');
delete_site_option('woo-vipps-recurring-version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cancel_subscription_lock%', '_site_transient_cancel_subscription_lock%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_maybe_cancel_due_charge_lock%', '_site_transient_maybe_cancel_due_charge_lock%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_vipps_recurring_token');
delete_site_transient('_vipps_recurring_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_vipps_recurring_delete_pending_order');
wp_clear_scheduled_hook('woocommerce_vipps_recurring_check_order_statuses');
wp_clear_scheduled_hook('woocommerce_vipps_recurring_check_gateway_change_request');
wp_clear_scheduled_hook('woocommerce_vipps_recurring_update_subscription_details_in_app');
wp_clear_scheduled_hook('woocommerce_vipps_recurring_check_orders_marked_for_deletion');

