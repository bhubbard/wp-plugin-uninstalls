<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wobel-version');
delete_site_option('wobel-version');
delete_option('wobe_update_table_log');
delete_site_option('wobe_update_table_log');
delete_option('wobe_meta_fields');
delete_site_option('wobe_meta_fields');
delete_option('wobe_column_fields');
delete_site_option('wobe_column_fields');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_site_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_option('wobe_get_orders_otb');
delete_site_option('wobe_get_orders_otb');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_error' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_process_lock' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_background_process_try_again' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('itbbc_scheduler_version');
delete_site_option('itbbc_scheduler_version');
delete_option('wobel_some_setting');
delete_site_option('wobel_some_setting');
delete_option('wobel_usage_track');
delete_site_option('wobel_usage_track');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_email_subscription_sent' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ithemeland_activation_email');
delete_site_option('ithemeland_activation_email');
delete_option('wobel_onboarding');
delete_site_option('wobel_onboarding');
delete_option('wobel_opt_in');
delete_site_option('wobel_opt_in');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

