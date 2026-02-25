<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sslcare_notification');
delete_site_option('sslcare_notification');
delete_option('enable_plugin');
delete_site_option('enable_plugin');
delete_option('sslcare_api_version');
delete_site_option('sslcare_api_version');
delete_option('enable_unicode_sms');
delete_site_option('enable_unicode_sms');
delete_option('sslcare_pending_alert');
delete_site_option('sslcare_pending_alert');
delete_option('sslcare_processing_alert');
delete_site_option('sslcare_processing_alert');
delete_option('sslcare_onhold_alert');
delete_site_option('sslcare_onhold_alert');
delete_option('sslcare_failed_alert');
delete_site_option('sslcare_failed_alert');
delete_option('sslcare_canceled_alert');
delete_site_option('sslcare_canceled_alert');
delete_option('sslcare_completed_alert');
delete_site_option('sslcare_completed_alert');
delete_option('sslcare_refund_alert');
delete_site_option('sslcare_refund_alert');
delete_option('sslcare_partial_alert');
delete_site_option('sslcare_partial_alert');
delete_option('sslcare_shipped_alert');
delete_site_option('sslcare_shipped_alert');
delete_option('sslcare_admin_sms_alert');
delete_site_option('sslcare_admin_sms_alert');
delete_option('sslcare_plugin_version');
delete_site_option('sslcare_plugin_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sslcare_login_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sslcare_login_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sslcare_login_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sslcare_login_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_phone' ) );

