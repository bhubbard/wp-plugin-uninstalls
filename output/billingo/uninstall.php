<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_billingo_show_settings_notification');
delete_site_option('wc_billingo_show_settings_notification');
delete_option('wc_billingo_api_key');
delete_site_option('wc_billingo_api_key');
delete_option('wc_billingo_disable_proforma_invoicing');
delete_site_option('wc_billingo_disable_proforma_invoicing');
delete_option('wc_billingo_storno_email');
delete_site_option('wc_billingo_storno_email');
delete_option('wc_billingo_invoice_block');
delete_site_option('wc_billingo_invoice_block');
delete_option('wc_billingo_bank_account_huf');
delete_site_option('wc_billingo_bank_account_huf');
delete_option('wc_billingo_bank_account_eur');
delete_site_option('wc_billingo_bank_account_eur');
delete_option('wc_billingo_fallback_payment');
delete_site_option('wc_billingo_fallback_payment');
delete_option('wc_billingo_invoice_lang');
delete_site_option('wc_billingo_invoice_lang');
delete_option('wc_billingo_note');
delete_site_option('wc_billingo_note');
delete_option('wc_billingo_invoice_round');
delete_site_option('wc_billingo_invoice_round');
delete_option('wc_billingo_unit');
delete_site_option('wc_billingo_unit');
delete_option('wc_billingo_manual_type');
delete_site_option('wc_billingo_manual_type');
delete_option('wc_billingo_is_generate_erase_code');
delete_site_option('wc_billingo_is_generate_erase_code');
delete_option('wc_billingo_auto_state');
delete_site_option('wc_billingo_auto_state');
delete_option('wc_billingo_company_name');
delete_site_option('wc_billingo_company_name');
delete_option('wc_billingo_vat_number_form_custom');
delete_site_option('wc_billingo_vat_number_form_custom');
delete_option('wc_billingo_vat_number_notice');
delete_site_option('wc_billingo_vat_number_notice');
delete_option('wc_billingo_electronic');
delete_site_option('wc_billingo_electronic');
delete_option('wc_billingo_product_sync');
delete_site_option('wc_billingo_product_sync');
delete_option('wc_billingo_note_barion');
delete_site_option('wc_billingo_note_barion');
delete_option('wc_billingo_sku');
delete_site_option('wc_billingo_sku');
delete_option('mark_paid_without_financial_fulfillment');
delete_site_option('mark_paid_without_financial_fulfillment');
delete_option('wc_billingo_flip_name');
delete_site_option('wc_billingo_flip_name');
delete_option('wc_billingo_invoice_lang_wpml');
delete_site_option('wc_billingo_invoice_lang_wpml');
delete_option('wc_billingo_note_orderid');
delete_site_option('wc_billingo_note_orderid');
delete_option('wc_billingo_block_child_orders');
delete_site_option('wc_billingo_block_child_orders');
delete_option('wc_billingo_vat_number_form');
delete_site_option('wc_billingo_vat_number_form');
delete_option('wc_billingo_vat_number_form_checkbox_custom');
delete_site_option('wc_billingo_vat_number_form_checkbox_custom');
delete_option('wc_billingo_discount_is_unique_item');
delete_site_option('wc_billingo_discount_is_unique_item');
delete_option('wc_billingo_decimalsoff');
delete_site_option('wc_billingo_decimalsoff');
delete_option('wc_billingo_shippingcomment');
delete_site_option('wc_billingo_shippingcomment');
delete_option('wc_billingo_test');
delete_site_option('wc_billingo_test');
delete_option('wc_billingo_auto_storno');
delete_site_option('wc_billingo_auto_storno');
delete_option('wc_billingo_payment_request_auto');
delete_site_option('wc_billingo_payment_request_auto');
delete_option('wc_billingo_auto');
delete_site_option('wc_billingo_auto');
delete_option('wc_billingo_tax_override_choice');
delete_site_option('wc_billingo_tax_override_choice');
delete_option('wc_billingo_tax_override');
delete_site_option('wc_billingo_tax_override');
delete_option('wc_billingo_tax_override_entitlements');
delete_site_option('wc_billingo_tax_override_entitlements');
delete_option('wc_billingo_tax_override_value');
delete_site_option('wc_billingo_tax_override_value');
delete_option('wc_billingo_tax_override_zero_entitlements');
delete_site_option('wc_billingo_tax_override_zero_entitlements');
delete_option('wc_billingo_tax_override_include_carrier');
delete_site_option('wc_billingo_tax_override_include_carrier');
delete_option('wc_billingo_tax_shipping_pirce_type_is_net');
delete_site_option('wc_billingo_tax_shipping_pirce_type_is_net');
delete_option('wc_billingo_always_add_carrier');
delete_site_option('wc_billingo_always_add_carrier');
delete_option('wc_billingo_email');
delete_site_option('wc_billingo_email');
delete_option('wc_billingo_proforma_email');
delete_site_option('wc_billingo_proforma_email');
delete_option('wc_billingo_proforma_email_woo_btn');
delete_site_option('wc_billingo_proforma_email_woo_btn');
delete_option('wc_billingo_email_woo_btn');
delete_site_option('wc_billingo_email_woo_btn');
delete_option('wc_billingo_storno_email_woo_btn');
delete_site_option('wc_billingo_storno_email_woo_btn');
delete_option('wc_billingo_proforma_email_woo_text');
delete_site_option('wc_billingo_proforma_email_woo_text');
delete_option('wc_billingo_email_woo_text');
delete_site_option('wc_billingo_email_woo_text');
delete_option('wc_billingo_storno_email_woo_text');
delete_site_option('wc_billingo_storno_email_woo_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_payment_method_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_paymentdue_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_mark_as_paid_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_mark_as_paid2_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_proforma_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_billingo_doff_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adoszam' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_tax_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billingo_original_prices_saved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billingo_original_prices_saved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billingo_original_prices_saved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billingo_original_prices_saved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yith_wcpb_bundled_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yith_wcpb_bundled_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yith_wcpb_bundled_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yith_wcpb_bundled_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yith_wcpb_bundle_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yith_wcpb_bundle_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yith_wcpb_bundle_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yith_wcpb_bundle_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yith_wcpb_bundle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yith_wcpb_bundle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yith_wcpb_bundle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yith_wcpb_bundle' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_manual' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wjecf_shipping_restrictions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wjecf_shipping_restrictions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wjecf_shipping_restrictions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wjecf_shipping_restrictions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billingo_notice_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billingo_notice_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billingo_notice_review_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billingo_notice_review_dismissed' ) );

