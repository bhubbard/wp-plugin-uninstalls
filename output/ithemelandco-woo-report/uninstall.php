<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_site_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_option('iwrasl_first_order_date');
delete_site_option('iwrasl_first_order_date');
delete_option('iwrasl_top_toolbar_dismiss');
delete_site_option('iwrasl_top_toolbar_dismiss');
delete_option('iwrasl_some_setting');
delete_site_option('iwrasl_some_setting');
delete_option('iwrasl_usage_track');
delete_site_option('iwrasl_usage_track');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_email_subscription_sent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ithemeland_activation_email');
delete_site_option('ithemeland_activation_email');
delete_option('iwrasl_onboarding');
delete_site_option('iwrasl_onboarding');
delete_option('iwrasl_opt_in');
delete_site_option('iwrasl_opt_in');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'iwrasl_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'iwrasl_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'iwrasl_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'iwrasl_permissions' ) );

