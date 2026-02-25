<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drip_payments_actual_key');
delete_site_option('drip_payments_actual_key');
delete_option('drip_payments_do_activation_redirect');
delete_site_option('drip_payments_do_activation_redirect');
delete_option('drip_payments_server_status');
delete_site_option('drip_payments_server_status');
delete_option('drip_payments_actual_cashback');
delete_site_option('drip_payments_actual_cashback');
delete_option('drip_payments_merchant_cnpj_from_api_key');
delete_site_option('drip_payments_merchant_cnpj_from_api_key');
delete_option('drip_payments_is_sandbox');
delete_site_option('drip_payments_is_sandbox');
delete_option('drip_payments_single_product_banner_is_active');
delete_site_option('drip_payments_single_product_banner_is_active');
delete_option('drip_payments_show_configuration_error');
delete_site_option('drip_payments_show_configuration_error');
delete_option('drip_payments_minutes_before_cancel_order');
delete_site_option('drip_payments_minutes_before_cancel_order');

// Clear Cron Jobs
wp_clear_scheduled_hook('drip_check_to_remove_pending_orders_every_minute');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'drip_paid_checkout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'drip_paid_checkout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'drip_paid_checkout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'drip_paid_checkout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'drip_checkout_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'drip_checkout_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'drip_checkout_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'drip_checkout_url' ) );

