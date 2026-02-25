<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fatt-24-API-key');
delete_site_option('fatt-24-API-key');
delete_option('fatt-24-woo-rating');
delete_site_option('fatt-24-woo-rating');
delete_option('fatt-24-log-enable');
delete_site_option('fatt-24-log-enable');
delete_option('fatt-24-toggle-billing-fields');
delete_site_option('fatt-24-toggle-billing-fields');
delete_option('fatt-24-inv-object');
delete_site_option('fatt-24-inv-object');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fatt_24_payment_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fatt-24-ord-status-select');
delete_site_option('fatt-24-ord-status-select');
delete_option('fatt-24-add-product-variation');
delete_site_option('fatt-24-add-product-variation');
delete_option('fatt-24-inv-pdc-shipping');
delete_site_option('fatt-24-inv-pdc-shipping');
delete_option('fatt-24-inv-pdc-fees');
delete_site_option('fatt-24-inv-pdc-fees');
delete_option('fatt-24-inv-create');
delete_site_option('fatt-24-inv-create');
delete_option('fatt-24-plugin-version');
delete_site_option('fatt-24-plugin-version');
delete_option('fatt_24_assets_version');
delete_site_option('fatt_24_assets_version');
delete_option('fatt-24-ord-enable-create');
delete_site_option('fatt-24-ord-enable-create');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('fatt-24-ord-zero-tot-enable');
delete_site_option('fatt-24-ord-zero-tot-enable');
delete_option('numerator_list_1');
delete_site_option('numerator_list_1');
delete_option('numerator_list_3');
delete_site_option('numerator_list_3');
delete_option('numerator_list_11');
delete_site_option('numerator_list_11');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'numerator_list_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pdc_list');
delete_site_option('pdc_list');
delete_option('template_list_order');
delete_site_option('template_list_order');
delete_option('template_list_invoice');
delete_site_option('template_list_invoice');
delete_option('fatt-24-add-vat-field');
delete_site_option('fatt-24-add-vat-field');
delete_option('fatt-24-abk-fiscode-req');
delete_site_option('fatt-24-abk-fiscode-req');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');
delete_option('fatt-24-inv-zero-tot-enable');
delete_site_option('fatt-24-inv-zero-tot-enable');
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('fatt-24-inv-pdc');
delete_site_option('fatt-24-inv-pdc');
delete_option('fatt-24-bollo-virtuale-fe');
delete_site_option('fatt-24-bollo-virtuale-fe');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('fatt-24-inv-create-when-paid');
delete_site_option('fatt-24-inv-create-when-paid');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fatt-24-ord-enable-pdf-download');
delete_site_option('fatt-24-ord-enable-pdf-download');
delete_option('fatt-24-inv-enable-pdf-download');
delete_site_option('fatt-24-inv-enable-pdf-download');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('woocommerce_ship_to_countries');
delete_site_option('woocommerce_ship_to_countries');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_fiscalcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_fiscalcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_fiscalcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_fiscalcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_vatcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_vatcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_vatcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_vatcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_recipientcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_recipientcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_recipientcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_recipientcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_pecaddress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_pecaddress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_pecaddress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_pecaddress' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pdc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pdc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pdc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pdc' ) );

