<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtuaria_serveloja_not_authorized');
delete_site_option('virtuaria_serveloja_not_authorized');
delete_option('virtuaria_serveloja_webhook_id');
delete_site_option('virtuaria_serveloja_webhook_id');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_virtuaria_serveloja_credit_settings');
delete_site_option('woocommerce_virtuaria_serveloja_credit_settings');
delete_option('virtuaria_serveloja_settings');
delete_site_option('virtuaria_serveloja_settings');

// Delete Transients
delete_transient('virtuaria_serveloja_main_setting_saved');
delete_site_transient('virtuaria_serveloja_main_setting_saved');

// Clear Cron Jobs
wp_clear_scheduled_hook('serveloja_pix_check_payment');
wp_clear_scheduled_hook('virtuaria_serveloja_pix_confirm_payment');
wp_clear_scheduled_hook('serveloja_ticket_check_payment');
wp_clear_scheduled_hook('serveloja_process_update_order_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_serveloja_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_serveloja_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_serveloja_credit_info_store_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_serveloja_credit_info_store_%' ) );

