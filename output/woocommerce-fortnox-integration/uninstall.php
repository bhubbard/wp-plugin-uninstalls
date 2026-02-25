<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fortnox_payment_terms');
delete_site_option('fortnox_payment_terms');
delete_option('fortnox_access_token');
delete_site_option('fortnox_access_token');
delete_option('fortnox_access_token_oauth2');
delete_site_option('fortnox_access_token_oauth2');
delete_option('fortnox_connected_organization_number');
delete_site_option('fortnox_connected_organization_number');
delete_option('fortnox_enable_purchase_price');
delete_site_option('fortnox_enable_purchase_price');
delete_option('fortnox_price_lists');
delete_site_option('fortnox_price_lists');
delete_option('fortnox_delivery_ways');
delete_site_option('fortnox_delivery_ways');
delete_option('fortnox_refresh_token');
delete_site_option('fortnox_refresh_token');
delete_option('fortnox_access_token_expiry_time');
delete_site_option('fortnox_access_token_expiry_time');
delete_option('fortnox_organization_number_auth_result');
delete_site_option('fortnox_organization_number_auth_result');
delete_option('fortnox_api_key');
delete_site_option('fortnox_api_key');
delete_option('fortnox_license_key');
delete_site_option('fortnox_license_key');
delete_option('fortnox_db_version');
delete_site_option('fortnox_db_version');
delete_option('fortnox_asset_accounts');
delete_site_option('fortnox_asset_accounts');
delete_option('fortnox_own_capital_and_debts_accounts');
delete_site_option('fortnox_own_capital_and_debts_accounts');
delete_option('fortnox_revenue_accounts');
delete_site_option('fortnox_revenue_accounts');
delete_option('fortnox_client_id');
delete_site_option('fortnox_client_id');
delete_option('fortnox_auth_code');
delete_site_option('fortnox_auth_code');
delete_option('wf_do_not_sync_customer_on_update');
delete_site_option('wf_do_not_sync_customer_on_update');
delete_option('fortnox_auto_post_refund_invoice');
delete_site_option('fortnox_auto_post_refund_invoice');
delete_option('fortnox_has_warehouse_module');
delete_site_option('fortnox_has_warehouse_module');
delete_option('fortnox_auto_set_refund_invoice_as_paid');
delete_site_option('fortnox_auto_set_refund_invoice_as_paid');
delete_option('fortnox_cost_center');
delete_site_option('fortnox_cost_center');
delete_option('fortnox_auto_create_order_invoice');
delete_site_option('fortnox_auto_create_order_invoice');
delete_option('fortnox_auto_set_invoice_as_paid');
delete_site_option('fortnox_auto_set_invoice_as_paid');
delete_option('fortnox_auto_post_order_invoice');
delete_site_option('fortnox_auto_post_order_invoice');
delete_option('fortnox_auto_send_order_invoice');
delete_site_option('fortnox_auto_send_order_invoice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_invoice_payment_account_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_write_payment_type_to_ordertext');
delete_site_option('fortnox_write_payment_type_to_ordertext');
delete_option('fortnox_add_customer_notes_to_order');
delete_site_option('fortnox_add_customer_notes_to_order');
delete_option('fortnox_copy_remarks_to_invoice');
delete_site_option('fortnox_copy_remarks_to_invoice');
delete_option('fortnox_warehouse_delivery_status');
delete_site_option('fortnox_warehouse_delivery_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wf_eu_sales_account_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_get_currency_rate');
delete_site_option('fortnox_get_currency_rate');
delete_option('fortnox_administration_fee_names');
delete_site_option('fortnox_administration_fee_names');
delete_option('fortnox_shipping_product_sku_non_eu');
delete_site_option('fortnox_shipping_product_sku_non_eu');
delete_option('fortnox_shipping_product_sku');
delete_site_option('fortnox_shipping_product_sku');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_invoice_payment_terms_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_auto_generate_sku');
delete_site_option('fortnox_auto_generate_sku');
delete_option('fortnox_sync_master_product');
delete_site_option('fortnox_sync_master_product');
delete_option('fortnox_predefined_accounts');
delete_site_option('fortnox_predefined_accounts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_default_price_list');
delete_site_option('fortnox_default_price_list');
delete_option('fortnox_skip_product_variations');
delete_site_option('fortnox_skip_product_variations');
delete_option('fortnox_do_not_update_product_on_order_sync');
delete_site_option('fortnox_do_not_update_product_on_order_sync');
delete_option('fortnox_do_not_sync_price');
delete_site_option('fortnox_do_not_sync_price');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('fortnox_organization_number');
delete_site_option('fortnox_organization_number');
delete_option('fortnox_order_number_prefix');
delete_site_option('fortnox_order_number_prefix');
delete_option('fortnox_auto_sync_products');
delete_site_option('fortnox_auto_sync_products');
delete_option('fortnox_auto_sync_orders');
delete_site_option('fortnox_auto_sync_orders');
delete_option('fortnox_email_synchronization_errors');
delete_site_option('fortnox_email_synchronization_errors');
delete_option('fortnox_upgrades_available');
delete_site_option('fortnox_upgrades_available');
delete_option('fortnox_debug_log');
delete_site_option('fortnox_debug_log');
delete_option('fortnox_sync_on_status');
delete_site_option('fortnox_sync_on_status');
delete_option('fortnox_create_invoice_on_status');
delete_site_option('fortnox_create_invoice_on_status');
delete_option('credit_note_on_refund');
delete_site_option('credit_note_on_refund');
delete_option('show_organization_number_field_in_billing_address_form');
delete_site_option('show_organization_number_field_in_billing_address_form');

// Delete Transients
delete_transient('fortnox_organisation_auth_secret');
delete_site_transient('fortnox_organisation_auth_secret');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortnox_sales_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortnox_sales_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortnox_sales_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortnox_sales_account' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_synced_to_fortnox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_synced_to_fortnox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_synced_to_fortnox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_synced_to_fortnox' ) );
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

