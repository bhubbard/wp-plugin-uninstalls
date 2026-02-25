<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'e_conomic_customer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('e_conomic_default_payment_terms');
delete_site_option('e_conomic_default_payment_terms');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('e_conomic_default_customer_group_dk');
delete_site_option('e_conomic_default_customer_group_dk');
delete_option('e_conomic_default_customer_group_eu');
delete_site_option('e_conomic_default_customer_group_eu');
delete_option('e_conomic_default_customer_group_world');
delete_site_option('e_conomic_default_customer_group_world');
delete_option('e_conomic_payment_terms');
delete_site_option('e_conomic_payment_terms');
delete_option('e_conomic_product_groups');
delete_site_option('e_conomic_product_groups');
delete_option('e_conomic_customer_groups');
delete_site_option('e_conomic_customer_groups');
delete_option('e_conomic_layouts');
delete_site_option('e_conomic_layouts');
delete_option('e_conomic_units');
delete_site_option('e_conomic_units');
delete_option('e_conomic_order_layout');
delete_site_option('e_conomic_order_layout');
delete_option('e_conomic_order_sync_settings');
delete_site_option('e_conomic_order_sync_settings');
delete_option('e_conomic_auto_generate_sku');
delete_site_option('e_conomic_auto_generate_sku');
delete_option('e_conomic_sync_master_product');
delete_site_option('e_conomic_sync_master_product');
delete_option('e_conomic_sync_existing_product');
delete_site_option('e_conomic_sync_existing_product');
delete_option('e_conomic_default_unit');
delete_site_option('e_conomic_default_unit');
delete_option('e_conomic_fee_product_number');
delete_site_option('e_conomic_fee_product_number');
delete_option('e_conomic_shipping_sku');
delete_site_option('e_conomic_shipping_sku');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'e_conomic_shipping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('e_conomic_individual_product_group');
delete_site_option('e_conomic_individual_product_group');
delete_option('e_conomic_default_product_group');
delete_site_option('e_conomic_default_product_group');
delete_option('e_conomic_skip_product_variations');
delete_site_option('e_conomic_skip_product_variations');
delete_option('e_conomic_do_not_sync_price');
delete_site_option('e_conomic_do_not_sync_price');
delete_option('e_conomic_api_key');
delete_site_option('e_conomic_api_key');
delete_option('e_conomic_customer_settings_are_valid');
delete_site_option('e_conomic_customer_settings_are_valid');
delete_option('e_conomic_product_settings_are_valid');
delete_site_option('e_conomic_product_settings_are_valid');
delete_option('e_conomic_order_general_settings_are_valid');
delete_site_option('e_conomic_order_general_settings_are_valid');
delete_option('e_conomic_order_sync_settings_are_valid');
delete_site_option('e_conomic_order_sync_settings_are_valid');
delete_option('e_conomic_invoice_layout');
delete_site_option('e_conomic_invoice_layout');
delete_option('e_conomic_sync_orders');
delete_site_option('e_conomic_sync_orders');
delete_option('e_conomic_order_number_prefix');
delete_site_option('e_conomic_order_number_prefix');
delete_option('e_conomic_needs_login');
delete_site_option('e_conomic_needs_login');
delete_option('e_conomic_auto_sync_products');
delete_site_option('e_conomic_auto_sync_products');
delete_option('e_conomic_auto_sync_orders');
delete_site_option('e_conomic_auto_sync_orders');
delete_option('e_conomic_agreement_grant_token');
delete_site_option('e_conomic_agreement_grant_token');
delete_option('e_conomic_debug_log');
delete_site_option('e_conomic_debug_log');
delete_option('e_conomic_credit_voucher_on_refund');
delete_site_option('e_conomic_credit_voucher_on_refund');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wetail_woocommerce_economic_wwo-updated-%', '_site_transient_wetail_woocommerce_economic_wwo-updated-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_order_status_set_sync_cb_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ean_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ean_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ean_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ean_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cvr_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cvr_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cvr_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cvr_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_synced_to_e_conomic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_synced_to_e_conomic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_synced_to_e_conomic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_synced_to_e_conomic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'integration-e-conomic-for-woocommerce_product_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'integration-e-conomic-for-woocommerce_product_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'integration-e-conomic-for-woocommerce_product_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'integration-e-conomic-for-woocommerce_product_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

