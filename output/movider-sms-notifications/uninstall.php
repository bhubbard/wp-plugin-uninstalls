<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_movider_sms_account_apikey');
delete_site_option('wc_movider_sms_account_apikey');
delete_option('wc_movider_sms_account_secretkey');
delete_site_option('wc_movider_sms_account_secretkey');
delete_option('wc_movider_sms_from_name');
delete_site_option('wc_movider_sms_from_name');
delete_option('wc_movider_sms_checkout_optin_checkbox_default');
delete_site_option('wc_movider_sms_checkout_optin_checkbox_default');
delete_option('wc_movider_sms_checkout_optin_checkbox_label');
delete_site_option('wc_movider_sms_checkout_optin_checkbox_label');
delete_option('wc_movider_sms_log_errors');
delete_site_option('wc_movider_sms_log_errors');
delete_option('wc_movider_sms_enable_admin_sms');
delete_site_option('wc_movider_sms_enable_admin_sms');
delete_option('wc_movider_sms_admin_sms_template');
delete_site_option('wc_movider_sms_admin_sms_template');
delete_option('wc_movider_sms_admin_sms_recipients');
delete_site_option('wc_movider_sms_admin_sms_recipients');
delete_option('wc_movider_sms_send_sms_order_statuses');
delete_site_option('wc_movider_sms_send_sms_order_statuses');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sms_template' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_movider_sms_default_sms_template');
delete_site_option('wc_movider_sms_default_sms_template');

// Delete Transients
delete_transient('wc_movider_sms_balance');
delete_site_transient('wc_movider_sms_balance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_movider_sms_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_movider_sms_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_movider_sms_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_movider_sms_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_last_name' ) );

