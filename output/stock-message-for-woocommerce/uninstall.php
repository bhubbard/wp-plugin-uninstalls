<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stock_message_for_woocommerce_button_settings');
delete_site_option('stock_message_for_woocommerce_button_settings');
delete_option('stock_message_for_woocommerce_form_settings');
delete_site_option('stock_message_for_woocommerce_form_settings');
delete_option('stock_messages_table_created');
delete_site_option('stock_messages_table_created');
delete_option('stock_message_for_woocommerce_email_settings');
delete_site_option('stock_message_for_woocommerce_email_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_stock_message_verify_%', '_site_transient_stock_message_verify_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('stock_message_test_email_last_sent');
delete_site_transient('stock_message_test_email_last_sent');

