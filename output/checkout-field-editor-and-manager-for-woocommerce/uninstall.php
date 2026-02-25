<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aco_wc_checkout_fields');
delete_site_option('aco_wc_checkout_fields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aco_wc_checkout_default_fields');
delete_site_option('aco_wc_checkout_default_fields');
delete_option('awcfe_aco_pdf');
delete_site_option('awcfe_aco_pdf');
delete_option('ship_to_different_address');
delete_site_option('ship_to_different_address');
delete_option('remove_order_notes_title');
delete_site_option('remove_order_notes_title');
delete_option('order_Notes_Title');
delete_site_option('order_Notes_Title');
delete_option('force_create_Account');
delete_site_option('force_create_Account');
delete_option('privacy_text');
delete_site_option('privacy_text');
delete_option('checkout_coupon_form');
delete_site_option('checkout_coupon_form');
delete_option('remove_shipping_field');
delete_site_option('remove_shipping_field');
delete_option('remove_terms_condition');
delete_site_option('remove_terms_condition');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('awcfe_install_date');
delete_site_option('awcfe_install_date');
delete_option('awcfe_rate_us');
delete_site_option('awcfe_rate_us');
delete_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_site_option('woocommerce_custom_orders_table_data_sync_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wc_address_book_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wc_address_book_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wc_address_book_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wc_address_book_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_address_nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_address_nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_address_nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_address_nickname' ) );

