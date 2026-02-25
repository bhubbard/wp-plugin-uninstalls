<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paynl_order_description_prefix');
delete_site_option('paynl_order_description_prefix');
delete_option('paynl_payment_expire_time');
delete_site_option('paynl_payment_expire_time');
delete_option('paynl_high_risk');
delete_site_option('paynl_high_risk');
delete_option('paynl_exchange_url');
delete_site_option('paynl_exchange_url');
delete_option('paynl_show_vat_number');
delete_site_option('paynl_show_vat_number');
delete_option('paynl_show_coc_number');
delete_site_option('paynl_show_coc_number');
delete_option('paynl_terminals');
delete_site_option('paynl_terminals');
delete_option('paynl_cores');
delete_site_option('paynl_cores');
delete_option('paynl_payment_options');
delete_site_option('paynl_payment_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('paynl_tokencode');
delete_site_option('paynl_tokencode');
delete_option('paynl_apitoken');
delete_site_option('paynl_apitoken');
delete_option('paynl_serviceid');
delete_site_option('paynl_serviceid');
delete_option('paynl_failover_gateway');
delete_site_option('paynl_failover_gateway');
delete_option('paynl_custom_failover_gateway');
delete_site_option('paynl_custom_failover_gateway');
delete_option('paynl_test_ipadress');
delete_site_option('paynl_test_ipadress');
delete_option('paynl_paylogger');
delete_site_option('paynl_paylogger');
delete_option('paynl_test_mode');
delete_site_option('paynl_test_mode');
delete_option('paynl_status_paid');
delete_site_option('paynl_status_paid');
delete_option('paynl_status_cancel');
delete_site_option('paynl_status_cancel');
delete_option('paynl_status_failed');
delete_site_option('paynl_status_failed');
delete_option('paynl_status_authorized');
delete_site_option('paynl_status_authorized');
delete_option('paynl_status_verify');
delete_site_option('paynl_status_verify');
delete_option('paynl_status_chargeback');
delete_site_option('paynl_status_chargeback');
delete_option('paynl_verify_amount');
delete_site_option('paynl_verify_amount');
delete_option('paynl_payment_method_display');
delete_site_option('paynl_payment_method_display');
delete_option('paynl_externalrefund');
delete_site_option('paynl_externalrefund');
delete_option('paynl_exclude_restock');
delete_site_option('paynl_exclude_restock');
delete_option('pay_db_version');
delete_site_option('pay_db_version');
delete_option('paynl_standard_style');
delete_site_option('paynl_standard_style');
delete_option('paynl_auto_capture');
delete_site_option('paynl_auto_capture');
delete_option('paynl_auto_void');
delete_site_option('paynl_auto_void');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CustomerName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CustomerName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CustomerName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CustomerName' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CustomerKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CustomerKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CustomerKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CustomerKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coc_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coc_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coc_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coc_number' ) );

