<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcdn_template_type');
delete_site_option('wcdn_template_type');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('wcdn_deliverynote_customization');
delete_site_option('wcdn_deliverynote_customization');
delete_option('wcdn_invoice_number_count');
delete_site_option('wcdn_invoice_number_count');
delete_option('wcdn_invoice_customization');
delete_site_option('wcdn_invoice_customization');
delete_option('wcdn_receipt_customization');
delete_site_option('wcdn_receipt_customization');
delete_option('wcdn_template_type_invoice');
delete_site_option('wcdn_template_type_invoice');
delete_option('wcdn_template_type_receipt');
delete_site_option('wcdn_template_type_receipt');
delete_option('wcdn_template_type_delivery-note');
delete_site_option('wcdn_template_type_delivery-note');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_customization' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wcdn_general_settings');
delete_site_option('wcdn_general_settings');
delete_option('wcdn_company_logo_image_id');
delete_site_option('wcdn_company_logo_image_id');
delete_option('wcdn_custom_company_name');
delete_site_option('wcdn_custom_company_name');
delete_option('wcdn_company_address');
delete_site_option('wcdn_company_address');
delete_option('wcdn_personal_notes');
delete_site_option('wcdn_personal_notes');
delete_option('wcdn_policies_conditions');
delete_site_option('wcdn_policies_conditions');
delete_option('wcdn_footer_imprint');
delete_site_option('wcdn_footer_imprint');
delete_option('wcdn_print_order_page_endpoint');
delete_site_option('wcdn_print_order_page_endpoint');
delete_option('wcdn_email_print_link');
delete_site_option('wcdn_email_print_link');
delete_option('wcdn_admin_email_print_link');
delete_site_option('wcdn_admin_email_print_link');
delete_option('wcdn_print_button_on_view_order_page');
delete_site_option('wcdn_print_button_on_view_order_page');
delete_option('wcdn_print_button_on_my_account_page');
delete_site_option('wcdn_print_button_on_my_account_page');
delete_option('wcdn_rtl_invoice');
delete_site_option('wcdn_rtl_invoice');
delete_option('wcdn_invoice_number_suffix');
delete_site_option('wcdn_invoice_number_suffix');
delete_option('wcdn_invoice_number_prefix');
delete_site_option('wcdn_invoice_number_prefix');
delete_option('wcdn_deliverynote_settings');
delete_site_option('wcdn_deliverynote_settings');
delete_option('wcdn_invoice_settings');
delete_site_option('wcdn_invoice_settings');
delete_option('wcdn_receipt_settings');
delete_site_option('wcdn_receipt_settings');
delete_option('wcdn_template_style');
delete_site_option('wcdn_template_style');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcdn_template_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wcdn_template_type_delivery_note');
delete_site_option('wcdn_template_type_delivery_note');
delete_option('wcdn_version');
delete_site_option('wcdn_version');
delete_option('wcdn_document_settings');
delete_site_option('wcdn_document_settings');
delete_option('wcdn_invoice_number_start');
delete_site_option('wcdn_invoice_number_start');
delete_option('wcdn_invoice_number_counter');
delete_site_option('wcdn_invoice_number_counter');
delete_option('wcdn_invoice_template_type');
delete_site_option('wcdn_invoice_template_type');
delete_option('wcdn_receipt_template_type');
delete_site_option('wcdn_receipt_template_type');
delete_option('wcdn_delivery_note_template_type');
delete_site_option('wcdn_delivery_note_template_type');
delete_option('wcdn_create_invoice_number');
delete_site_option('wcdn_create_invoice_number');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ts_tracker_last_send');
delete_site_option('ts_tracker_last_send');
delete_option('wcdn_allow_tracking');
delete_site_option('wcdn_allow_tracking');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('wcdn_company_address ');
delete_site_option('wcdn_company_address ');
delete_option('wcdn_ts_tracker_last_send');
delete_site_option('wcdn_ts_tracker_last_send');

// Delete Transients
delete_transient('wcdn_flush_rewrite_rules');
delete_site_transient('wcdn_flush_rewrite_rules');

// Clear Cron Jobs

