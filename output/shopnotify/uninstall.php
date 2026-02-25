<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shopnotify_cart_timeout');
delete_site_option('shopnotify_cart_timeout');
delete_option('shopnotify_first_notification_timeout');
delete_site_option('shopnotify_first_notification_timeout');
delete_option('shopnotify_second_notification_timeout');
delete_site_option('shopnotify_second_notification_timeout');
delete_option('shopnotify_third_notification_timeout');
delete_site_option('shopnotify_third_notification_timeout');
delete_option('shopnotify_delete_cart_after_timeout');
delete_site_option('shopnotify_delete_cart_after_timeout');
delete_option('shopnotify_cart_deletion_timeout');
delete_site_option('shopnotify_cart_deletion_timeout');
delete_option('shpn_whatsapp_license_key');
delete_site_option('shpn_whatsapp_license_key');
delete_option('shopnotify_first_shpn_template');
delete_site_option('shopnotify_first_shpn_template');
delete_option('shopnotify_second_shpn_template');
delete_site_option('shopnotify_second_shpn_template');
delete_option('shopnotify_third_shpn_template');
delete_site_option('shopnotify_third_shpn_template');
delete_option('shpn_whatsapp_license_status');
delete_site_option('shpn_whatsapp_license_status');
delete_option('Shopnotify_redirect');
delete_site_option('Shopnotify_redirect');
delete_option('Shopnotify_enable_whatsapp');
delete_site_option('Shopnotify_enable_whatsapp');
delete_option('shopnotify_first_email_template');
delete_site_option('shopnotify_first_email_template');
delete_option('shopnotify_first_email_subject');
delete_site_option('shopnotify_first_email_subject');
delete_option('shopnotify_second_email_template');
delete_site_option('shopnotify_second_email_template');
delete_option('shopnotify_second_email_subject');
delete_site_option('shopnotify_second_email_subject');
delete_option('shopnotify_third_email_template');
delete_site_option('shopnotify_third_email_template');
delete_option('shopnotify_third_email_subject');
delete_site_option('shopnotify_third_email_subject');
delete_option('shpn_store_name');
delete_site_option('shpn_store_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('shpn_clear_old_carts');
wp_clear_scheduled_hook('shpn_send_abandoned_cart_notification');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

