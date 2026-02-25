<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_virt_pagseguro_settings');
delete_site_option('woocommerce_virt_pagseguro_settings');
delete_option('virtuaria_pagseguro_not_authorized');
delete_site_option('virtuaria_pagseguro_not_authorized');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('homolog_number');
delete_site_option('homolog_number');

// Delete Transients
delete_transient('virtuaria_pagseguro_main_setting_saved');
delete_site_transient('virtuaria_pagseguro_main_setting_saved');

// Clear Cron Jobs
wp_clear_scheduled_hook('virtuaria_pagseguro_pix_confirm_payment');
wp_clear_scheduled_hook('pagseguro_process_update_order_status');
wp_clear_scheduled_hook('pagseguro_pix_check_payment');
wp_clear_scheduled_hook('pagseguro_ticket_check_payment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_pagseguro_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_pagseguro_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_pagseguro_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_pagseguro_credit_info_store_%' ) );

