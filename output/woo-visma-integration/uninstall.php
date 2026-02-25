<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('visma_do_not_update_customer_on_order_sync');
delete_site_option('visma_do_not_update_customer_on_order_sync');
delete_option('visma_organization_number_meta_key');
delete_site_option('visma_organization_number_meta_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'visma_order_sync_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('visma_invoice_payment_bank_account');
delete_site_option('visma_invoice_payment_bank_account');
delete_option('visma_sync_existing_product');
delete_site_option('visma_sync_existing_product');
delete_option('visma_auto_generate_sku');
delete_site_option('visma_auto_generate_sku');
delete_option('visma_sync_master_product');
delete_site_option('visma_sync_master_product');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('visma_skip_product_variations');
delete_site_option('visma_skip_product_variations');
delete_option('visma_do_not_sync_price');
delete_site_option('visma_do_not_sync_price');
delete_option('visma_default_price_list');
delete_site_option('visma_default_price_list');
delete_option('visma_auto_set_refund_invoice_as_paid');
delete_site_option('visma_auto_set_refund_invoice_as_paid');
delete_option('visma_sync_order_method');
delete_site_option('visma_sync_order_method');
delete_option('visma_terms_of_payments');
delete_site_option('visma_terms_of_payments');
delete_option('visma_account_coding');
delete_site_option('visma_account_coding');
delete_option('visma_units');
delete_site_option('visma_units');
delete_option('visma_payment_accounts');
delete_site_option('visma_payment_accounts');
delete_option('visma_revenue_accounts');
delete_site_option('visma_revenue_accounts');
delete_option('visma_bank_accounts');
delete_site_option('visma_bank_accounts');
delete_option('visma_default_unit');
delete_site_option('visma_default_unit');
delete_option('visma_shipping_account_se');
delete_site_option('visma_shipping_account_se');
delete_option('visma_shipping_account_eu');
delete_site_option('visma_shipping_account_eu');
delete_option('visma_shipping_account_world');
delete_site_option('visma_shipping_account_world');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('visma_domestic_vat_25_account');
delete_site_option('visma_domestic_vat_25_account');
delete_option('visma_eu_vat_25_account');
delete_site_option('visma_eu_vat_25_account');
delete_option('visma_credit_note_on_refund');
delete_site_option('visma_credit_note_on_refund');
delete_option('wetail_visma_license_key');
delete_site_option('wetail_visma_license_key');
delete_option('wetail_license_key');
delete_site_option('wetail_license_key');
delete_option('visma_sync_orders');
delete_site_option('visma_sync_orders');
delete_option('visma_customer_unique_identifier');
delete_site_option('visma_customer_unique_identifier');
delete_option('visma_unique_customer_identifier');
delete_site_option('visma_unique_customer_identifier');
delete_option('visma_db_version');
delete_site_option('visma_db_version');
delete_option('visma_order_number_prefix');
delete_site_option('visma_order_number_prefix');
delete_option('visma_needs_login');
delete_site_option('visma_needs_login');
delete_option('make_organization_number_field_required');
delete_site_option('make_organization_number_field_required');
delete_option('visma_accounting_settings_are_valid');
delete_site_option('visma_accounting_settings_are_valid');
delete_option('visma_order_sync_settings_are_valid');
delete_site_option('visma_order_sync_settings_are_valid');
delete_option('visma_general_settings_are_valid');
delete_site_option('visma_general_settings_are_valid');
delete_option('visma_test');
delete_site_option('visma_test');
delete_option('visma_access_token');
delete_site_option('visma_access_token');
delete_option('visma_expiry_time');
delete_site_option('visma_expiry_time');
delete_option('visma_refresh_token');
delete_site_option('visma_refresh_token');
delete_option('latest_visma_pull_sync');
delete_site_option('latest_visma_pull_sync');
delete_option('visma_debug_log');
delete_site_option('visma_debug_log');
delete_option('visma_credit_voucher_on_refund');
delete_site_option('visma_credit_voucher_on_refund');
delete_option('show_organization_number_field_in_billing_address_form');
delete_site_option('show_organization_number_field_in_billing_address_form');

// Clear Cron Jobs
wp_clear_scheduled_hook('wetail_visma_sync_order');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_synced_to_visma' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_synced_to_visma' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_synced_to_visma' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_synced_to_visma' ) );
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_order_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

