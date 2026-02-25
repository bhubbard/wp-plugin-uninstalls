<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('payphone_g_btn_version');
delete_site_option('payphone_g_btn_version');
delete_option('pp_woo_enabled');
delete_site_option('pp_woo_enabled');
delete_option('woocommerce_payphone_settings');
delete_site_option('woocommerce_payphone_settings');
delete_option('pp_woo_logoImageUrl');
delete_site_option('pp_woo_logoImageUrl');
delete_option('pp_woo_paymentAction');
delete_site_option('pp_woo_paymentAction');
delete_option('pp_woo_subtotalMismatchBehavior');
delete_site_option('pp_woo_subtotalMismatchBehavior');
delete_option('pp_woo_environment');
delete_site_option('pp_woo_environment');
delete_option('pp_woo_button_size');
delete_site_option('pp_woo_button_size');
delete_option('pp_woo_blockEChecks');
delete_site_option('pp_woo_blockEChecks');
delete_option('pp_woo_requireBillingAddress');
delete_site_option('pp_woo_requireBillingAddress');
delete_option('pp_woo_logging_enabled');
delete_site_option('pp_woo_logging_enabled');
delete_option('payphone_g_btn_bootstrap_warning_message');
delete_site_option('payphone_g_btn_bootstrap_warning_message');
delete_option('payphone_g_btn_bootstrap_warning_message_dismissed');
delete_site_option('payphone_g_btn_bootstrap_warning_message_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_cancel_unpaid_orders');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'client_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'client_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'client_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'client_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payphone_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payphone_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payphone_tx_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payphone_tx_id' ) );

