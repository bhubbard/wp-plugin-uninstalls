<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('1984_woo_dk_api_key');
delete_site_option('1984_woo_dk_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '1984_woo_dk_payment_method_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('1984_woo_dk_shipping_sku');
delete_site_option('1984_woo_dk_shipping_sku');
delete_option('1984_woo_dk_cost_sku');
delete_site_option('1984_woo_dk_cost_sku');
delete_option('1984_woo_dk_default_kennitala');
delete_site_option('1984_woo_dk_default_kennitala');
delete_option('1984_woo_dk_kennitala_classic_field_enabled');
delete_site_option('1984_woo_dk_kennitala_classic_field_enabled');
delete_option('1984_woo_dk_kennitala_block_field_enabled');
delete_site_option('1984_woo_dk_kennitala_block_field_enabled');
delete_option('1984_woo_dk_default_sales_person_number');
delete_site_option('1984_woo_dk_default_sales_person_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '1984_woo_dk_ledger_code_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('1984_woo_dk_product_price_sync');
delete_site_option('1984_woo_dk_product_price_sync');
delete_option('1984_woo_dk_product_quantity_sync');
delete_site_option('1984_woo_dk_product_quantity_sync');
delete_option('1984_woo_dk_product_name_sync');
delete_site_option('1984_woo_dk_product_name_sync');
delete_option('1984_woo_dk_email_invoice');
delete_site_option('1984_woo_dk_email_invoice');
delete_option('1984_woo_dk_customer_requests_kennitala_invoice');
delete_site_option('1984_woo_dk_customer_requests_kennitala_invoice');
delete_option('1984_woo_dk_make_invoice_if_kennitala_is_set');
delete_site_option('1984_woo_dk_make_invoice_if_kennitala_is_set');
delete_option('1984_woo_dk_make_invoice_if_kennitala_is_missing');
delete_site_option('1984_woo_dk_make_invoice_if_kennitala_is_missing');
delete_option('1984_woo_dk_dk_currency');
delete_site_option('1984_woo_dk_dk_currency');
delete_option('1984_woo_dk_import_nonweb_products');
delete_site_option('1984_woo_dk_import_nonweb_products');
delete_option('1984_woo_dk_delete_inactive_products');
delete_site_option('1984_woo_dk_delete_inactive_products');
delete_option('1984_woo_dk_domestic_customer_ledger_code');
delete_site_option('1984_woo_dk_domestic_customer_ledger_code');
delete_option('1984_woo_dk_international_customer_ledger_code');
delete_site_option('1984_woo_dk_international_customer_ledger_code');
delete_option('1984_woo_dk_use_attribute_description');
delete_site_option('1984_woo_dk_use_attribute_description');
delete_option('1984_woo_dk_use_attribute_value_description');
delete_site_option('1984_woo_dk_use_attribute_value_description');
delete_option('1984_woo_dk_product_convertion_to_variation_enabled');
delete_site_option('1984_woo_dk_product_convertion_to_variation_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '1984_woo_dk_currency_rate_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');

// Delete Transients
delete_transient('1984_woo_dk_variations');
delete_site_transient('1984_woo_dk_variations');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_1984_woo_dk_attribute_%', '_site_transient_1984_woo_dk_attribute_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_1984_woo_dk_variation_attributes_%', '_site_transient_1984_woo_dk_variation_attributes_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('1984_woo_dk_attribute_values');
delete_site_transient('1984_woo_dk_attribute_values');
delete_transient('1984_woo_dk_payment_terms');
delete_site_transient('1984_woo_dk_payment_terms');
delete_transient('1984_woo_dk_payment_modes');
delete_site_transient('1984_woo_dk_payment_modes');
delete_transient('1984_woo_dk_payment_methods');
delete_site_transient('1984_woo_dk_payment_methods');
delete_transient('1984_woo_dk_warehouses');
delete_site_transient('1984_woo_dk_warehouses');

// Clear Cron Jobs
wp_clear_scheduled_hook('1984_dk_woo_hourly');
wp_clear_scheduled_hook('1984_dk_woo_every_minute');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_kennitala' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_kennitala' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_kennitala' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_kennitala' ) );

