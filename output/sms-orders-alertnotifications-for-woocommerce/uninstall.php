<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('egoi_api_key');
delete_site_option('egoi_api_key');
delete_option('egoi_sms_order_sender');
delete_site_option('egoi_sms_order_sender');
delete_option('egoi_sms_order_recipients');
delete_site_option('egoi_sms_order_recipients');
delete_option('egoi_sms_order_texts');
delete_site_option('egoi_sms_order_texts');
delete_option('egoi_sms_order_payment_texts');
delete_site_option('egoi_sms_order_payment_texts');
delete_option('egoi_email_order_payment_texts');
delete_site_option('egoi_email_order_payment_texts');
delete_option('egoi_tracking_carriers_urls');
delete_site_option('egoi_tracking_carriers_urls');
delete_option('egoi_sms_follow_price');
delete_site_option('egoi_sms_follow_price');
delete_option('egoi_sms_abandoned_cart');
delete_site_option('egoi_sms_abandoned_cart');
delete_option('egoi_custom_carriers');
delete_site_option('egoi_custom_carriers');
delete_option('egoi_transactional_email');
delete_site_option('egoi_transactional_email');
delete_option('egoi_activation_data');
delete_site_option('egoi_activation_data');
delete_option('egoi_sms_counter');
delete_site_option('egoi_sms_counter');
delete_option('egoi_has_list');
delete_site_option('egoi_has_list');

// Delete Transients
delete_transient('teste_egoi_1');
delete_site_transient('teste_egoi_1');

// Clear Cron Jobs
wp_clear_scheduled_hook('egoi_sms_order_event');
wp_clear_scheduled_hook('egoi_woo_smsonw_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'egoi_notification_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'egoi_notification_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'egoi_notification_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'egoi_notification_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_country' ) );

