<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fortnox_disable_notices');
delete_site_option('fortnox_disable_notices');
delete_option('fortnox_send_error_email');
delete_site_option('fortnox_send_error_email');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_bank_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_hub_manually_refund_credit_invoice');
delete_site_option('fortnox_hub_manually_refund_credit_invoice');
delete_option('fortnox_cost_center');
delete_site_option('fortnox_cost_center');
delete_option('fortnox_project');
delete_site_option('fortnox_project');
delete_option('fortnox_izettle_customer_number');
delete_site_option('fortnox_izettle_customer_number');
delete_option('fortnox_valid_to');
delete_site_option('fortnox_valid_to');
delete_option('fortnox_authorization_code');
delete_site_option('fortnox_authorization_code');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('fortnox_woo_order_creates');
delete_site_option('fortnox_woo_order_creates');
delete_option('fortnox_queue_admin_requests');
delete_site_option('fortnox_queue_admin_requests');
delete_option('fortnox_woo_order_create_order_status_payment_method');
delete_site_option('fortnox_woo_order_create_order_status_payment_method');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_woo_order_create_automatic_from_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_woo_order_create_automatic_from');
delete_site_option('fortnox_woo_order_create_automatic_from');
delete_option('fortnox_wc_products_include');
delete_site_option('fortnox_wc_products_include');
delete_option('fortnox_wc_get_product_status');
delete_site_option('fortnox_wc_get_product_status');
delete_option('fortnox_wc_products_product_categories');
delete_site_option('fortnox_wc_products_product_categories');
delete_option('fortnox_wc_products_include_subcategories');
delete_site_option('fortnox_wc_products_include_subcategories');
delete_option('fortnox_wc_product_update_variable_parent');
delete_site_option('fortnox_wc_product_update_variable_parent');
delete_option('fortnox_wc_product_update_variable_parent_skip_stock_check');
delete_site_option('fortnox_wc_product_update_variable_parent_skip_stock_check');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_send_customer_email_invoice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_send_customer_email_invoice');
delete_site_option('fortnox_send_customer_email_invoice');
delete_option('fortnox_invoice_email_bcc');
delete_site_option('fortnox_invoice_email_bcc');
delete_option('fortnox_send_customer_email_invoice_payment_method_specific');
delete_site_option('fortnox_send_customer_email_invoice_payment_method_specific');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fornox_invoice_email_from_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fornox_invoice_email_subject_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fornox_invoice_email_body_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fornox_invoice_email_from');
delete_site_option('fornox_invoice_email_from');
delete_option('fornox_invoice_email_subject');
delete_site_option('fornox_invoice_email_subject');
delete_option('fornox_invoice_email_body');
delete_site_option('fornox_invoice_email_body');
delete_option('fortnox_wc_custom_order_number_used');
delete_site_option('fortnox_wc_custom_order_number_used');
delete_option('fortnox_get_inactive_cost_centers');
delete_site_option('fortnox_get_inactive_cost_centers');
delete_option('fortnox_get_completed_projects');
delete_site_option('fortnox_get_completed_projects');
delete_option('fortnox_hub_products_additional_variant_identifier');
delete_site_option('fortnox_hub_products_additional_variant_identifier');
delete_option('fortnox_wpml_default_currency');
delete_site_option('fortnox_wpml_default_currency');
delete_option('fortnox_remove_article_numbers_credit_invoice');
delete_site_option('fortnox_remove_article_numbers_credit_invoice');
delete_option('fortnox_account_selling_countries');
delete_site_option('fortnox_account_selling_countries');
delete_option('fortnox_refresh_token');
delete_site_option('fortnox_refresh_token');
delete_option('fortnox_hub_domain');
delete_site_option('fortnox_hub_domain');
delete_option('fortnox_hub_domain_lock');
delete_site_option('fortnox_hub_domain_lock');
delete_option('fortnox_enable_access_token_lock');
delete_site_option('fortnox_enable_access_token_lock');
delete_option('fortnox_use_normal_transients');
delete_site_option('fortnox_use_normal_transients');
delete_option('fortnox_extra_email_control');
delete_site_option('fortnox_extra_email_control');
delete_option('fortnox_do_not_use_external_refs');
delete_site_option('fortnox_do_not_use_external_refs');
delete_option('fortnox_ignore_inactive_customers');
delete_site_option('fortnox_ignore_inactive_customers');
delete_option('fortnox_amounts_excl_tax');
delete_site_option('fortnox_amounts_excl_tax');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_mode_of_payment_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_payment_account_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_invoice_payment_remark_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_create_invoice_from_order_payment_method');
delete_site_option('fortnox_create_invoice_from_order_payment_method');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_term_of_delivery_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_way_of_delivery_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_shipping_article_number_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_shipping_customer_number');
delete_site_option('fortnox_shipping_customer_number');
delete_option('fortnox_meta_mapping_fields');
delete_site_option('fortnox_meta_mapping_fields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_meta_mapping_location_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_identify_customers_by');
delete_site_option('fortnox_identify_customers_by');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_meta_mapping_destination_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_show_invoices_in_user_area');
delete_site_option('fortnox_show_invoices_in_user_area');
delete_option('fortnox_use_nox_invoice');
delete_site_option('fortnox_use_nox_invoice');
delete_option('fortnox_set_warehouseready');
delete_site_option('fortnox_set_warehouseready');
delete_option('fortnox_enable_admin_options');
delete_site_option('fortnox_enable_admin_options');
delete_option('fortnox_hub_use_v2_api');
delete_site_option('fortnox_hub_use_v2_api');
delete_option('fortnox_fixed_delivery_date');
delete_site_option('fortnox_fixed_delivery_date');
delete_option('fortnox_order_print_template');
delete_site_option('fortnox_order_print_template');
delete_option('fortnox_order_add_invoice_data');
delete_site_option('fortnox_order_add_invoice_data');
delete_option('fortnox_invoice_print_template');
delete_site_option('fortnox_invoice_print_template');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_eu_excl_vat%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_eu_incl_vat%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_world_vat');
delete_site_option('fortnox_world_vat');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_vat_fee' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_eu_excl_vat_fee');
delete_site_option('fortnox_eu_excl_vat_fee');
delete_option('fortnox_eu_incl_vat_fee');
delete_site_option('fortnox_eu_incl_vat_fee');
delete_option('fortnox_world_fee');
delete_site_option('fortnox_world_fee');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_shipping' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_eu_excl_vat_shipping');
delete_site_option('fortnox_eu_excl_vat_shipping');
delete_option('fortnox_eu_incl_shipping');
delete_site_option('fortnox_eu_incl_shipping');
delete_option('fortnox_world_shipping');
delete_site_option('fortnox_world_shipping');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_send_customer_email_invoice_with_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_vat_number_means_company');
delete_site_option('fortnox_vat_number_means_company');
delete_option('fortnox_set_company_if_organisation_number_present');
delete_site_option('fortnox_set_company_if_organisation_number_present');
delete_option('fortnox_customer_type');
delete_site_option('fortnox_customer_type');
delete_option('wfh_customer_default_delivery_types');
delete_site_option('wfh_customer_default_delivery_types');
delete_option('fortnox_always_show_price_vat_included');
delete_site_option('fortnox_always_show_price_vat_included');
delete_option('fortnox_never_show_price_vat_included');
delete_site_option('fortnox_never_show_price_vat_included');
delete_option('fortnox_do_not_update_customercard_invoice_email');
delete_site_option('fortnox_do_not_update_customercard_invoice_email');
delete_option('fortnox_do_not_update_customercard_order_email');
delete_site_option('fortnox_do_not_update_customercard_order_email');
delete_option('fortnox_delivery_details_on_document_only');
delete_site_option('fortnox_delivery_details_on_document_only');
delete_option('fortnox_billing_details_on_document_only');
delete_site_option('fortnox_billing_details_on_document_only');
delete_option('fortnox_organisation_number_meta');
delete_site_option('fortnox_organisation_number_meta');
delete_option('fortnox_organisation_number_only');
delete_site_option('fortnox_organisation_number_only');
delete_option('fortnox_skip_organisation_number_validation');
delete_site_option('fortnox_skip_organisation_number_validation');
delete_option('fortnox_skip_vat_number');
delete_site_option('fortnox_skip_vat_number');
delete_option('fortnox_clean_vat_number');
delete_site_option('fortnox_clean_vat_number');
delete_option('fortnox_do_not_update_customer_billing');
delete_site_option('fortnox_do_not_update_customer_billing');
delete_option('fortnox_do_not_update_customer_delivery');
delete_site_option('fortnox_do_not_update_customer_delivery');
delete_option('fortnox_do_not_create_customer');
delete_site_option('fortnox_do_not_create_customer');
delete_option('fortnox_hide_admin_order_meta');
delete_site_option('fortnox_hide_admin_order_meta');
delete_option('fortnox_enable_order_cleaning');
delete_site_option('fortnox_enable_order_cleaning');
delete_option('fortnox_include_vat_number_in_search');
delete_site_option('fortnox_include_vat_number_in_search');
delete_option('fortnox_use_woocommerce_order_number');
delete_site_option('fortnox_use_woocommerce_order_number');
delete_option('fortnox_check_invoices_automatically');
delete_site_option('fortnox_check_invoices_automatically');
delete_option('fortnox_woo_order_set_automatic_warehouseready');
delete_site_option('fortnox_woo_order_set_automatic_warehouseready');
delete_option('fortnox_delay_emails_until_processed');
delete_site_option('fortnox_delay_emails_until_processed');
delete_option('fortnox_create_invoice_from_order');
delete_site_option('fortnox_create_invoice_from_order');
delete_option('fortnox_delay_emails_delay_time');
delete_site_option('fortnox_delay_emails_delay_time');
delete_option('fortnox_delay_emails_max_retries');
delete_site_option('fortnox_delay_emails_max_retries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_do_not_sync_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_create_invoice_from_order_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_wc_product_bundles');
delete_site_option('fortnox_wc_product_bundles');
delete_option('fortnox_set_backorder_products_to_zero');
delete_site_option('fortnox_set_backorder_products_to_zero');
delete_option('fortnox_include_bundled_products_price');
delete_site_option('fortnox_include_bundled_products_price');
delete_option('fortnox_no_articlenumber_in_orderrow');
delete_site_option('fortnox_no_articlenumber_in_orderrow');
delete_option('fortnox_use_article_account_for_order_rows_first');
delete_site_option('fortnox_use_article_account_for_order_rows_first');
delete_option('fortnox_set_discount_to_zero');
delete_site_option('fortnox_set_discount_to_zero');
delete_option('fortnox_skip_shipping_in_description');
delete_site_option('fortnox_skip_shipping_in_description');
delete_option('fortnox_always_populate_shipping');
delete_site_option('fortnox_always_populate_shipping');
delete_option('fortnox_document_use_coupon_rows');
delete_site_option('fortnox_document_use_coupon_rows');
delete_option('fortnox_do_not_clear_freight');
delete_site_option('fortnox_do_not_clear_freight');
delete_option('fortnox_document_date');
delete_site_option('fortnox_document_date');
delete_option('fortnox_default_delivery_days');
delete_site_option('fortnox_default_delivery_days');
delete_option('fortnox_customer_note_place');
delete_site_option('fortnox_customer_note_place');
delete_option('fornox_our_reference');
delete_site_option('fornox_our_reference');
delete_option('fortnox_language');
delete_site_option('fortnox_language');
delete_option('fortnox_do_not_clear_cost_center');
delete_site_option('fortnox_do_not_clear_cost_center');
delete_option('fortnox_set_administration_fee');
delete_site_option('fortnox_set_administration_fee');
delete_option('fortnox_administration_fee');
delete_site_option('fortnox_administration_fee');
delete_option('fortnox_skip_delivery_date');
delete_site_option('fortnox_skip_delivery_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_term_of_payment_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_invoice_payment_custom_remark_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_order_copy_remarks');
delete_site_option('fortnox_order_copy_remarks');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_order_print_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_invoice_print_template_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_cancel_warehouseready_for_order');
delete_site_option('fortnox_cancel_warehouseready_for_order');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_meta_mapping_include_field_name_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_sync_from_fortnox_automatically');
delete_site_option('fortnox_sync_from_fortnox_automatically');
delete_option('fortnox_daily_sync_from_fortnox');
delete_site_option('fortnox_daily_sync_from_fortnox');
delete_option('fortnox_last_sync_products');
delete_site_option('fortnox_last_sync_products');
delete_option('fortnox_maybe_change_stock_place');
delete_site_option('fortnox_maybe_change_stock_place');
delete_option('fortnox_handle_inactive_articles');
delete_site_option('fortnox_handle_inactive_articles');
delete_option('fortnox_create_simple_product_from_article');
delete_site_option('fortnox_create_simple_product_from_article');
delete_option('fortnox_delete_wc_product');
delete_site_option('fortnox_delete_wc_product');
delete_option('fortnox_update_webshop_articles_only');
delete_site_option('fortnox_update_webshop_articles_only');
delete_option('fortnox_delete_inactive_variants');
delete_site_option('fortnox_delete_inactive_variants');
delete_option('fortnox_create_simple_product_from_article_category');
delete_site_option('fortnox_create_simple_product_from_article_category');
delete_option('fortnox_create_simple_product_from_article_status');
delete_site_option('fortnox_create_simple_product_from_article_status');
delete_option('fortnox_process_price');
delete_site_option('fortnox_process_price');
delete_option('fortnox_process_sale_price');
delete_site_option('fortnox_process_sale_price');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_process_price_b2bk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_process_sale_price_b2bk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_process_wholesale_price_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_process_wcpbc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_maybe_change_manage_stock');
delete_site_option('fortnox_maybe_change_manage_stock');
delete_option('fortnox_process_stocklevel');
delete_site_option('fortnox_process_stocklevel');
delete_option('fortnox_maybe_change_wc_product_name');
delete_site_option('fortnox_maybe_change_wc_product_name');
delete_option('fortnox_maybe_change_product_dimensions');
delete_site_option('fortnox_maybe_change_product_dimensions');
delete_option('fortnox_maybe_change_manufacturer');
delete_site_option('fortnox_maybe_change_manufacturer');
delete_option('fortnox_maybe_change_manufacturer_article_number');
delete_site_option('fortnox_maybe_change_manufacturer_article_number');
delete_option('fortnox_maybe_change_default_stock_location');
delete_site_option('fortnox_maybe_change_default_stock_location');
delete_option('fortnox_maybe_change_unit');
delete_site_option('fortnox_maybe_change_unit');
delete_option('fortnox_maybe_change_barcode');
delete_site_option('fortnox_maybe_change_barcode');
delete_option('fortnox_maybe_change_purchase_price');
delete_site_option('fortnox_maybe_change_purchase_price');
delete_option('fortnox_create_products_automatically');
delete_site_option('fortnox_create_products_automatically');
delete_option('fortnox_hub_save_post_on_article_update');
delete_site_option('fortnox_hub_save_post_on_article_update');
delete_option('fortnox_remove_vat_from_prices');
delete_site_option('fortnox_remove_vat_from_prices');
delete_option('fortnox_handle_zero_price');
delete_site_option('fortnox_handle_zero_price');
delete_option('fortnox_backorder_option_instock');
delete_site_option('fortnox_backorder_option_instock');
delete_option('fortnox_backorder_option_outofstock');
delete_site_option('fortnox_backorder_option_outofstock');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('fortnox_capture_klarna_orders');
delete_site_option('fortnox_capture_klarna_orders');
delete_option('fortnox_hub_accelerate_connection');
delete_site_option('fortnox_hub_accelerate_connection');
delete_option('fortnox_hub_sync_last_sync_invoices');
delete_site_option('fortnox_hub_sync_last_sync_invoices');
delete_option('fortnox_fortnox_set_order_status');
delete_site_option('fortnox_fortnox_set_order_status');
delete_option('fortnox_book_invoice');
delete_site_option('fortnox_book_invoice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_bookkeep_orders_with_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_set_invoice_as_external_printed');
delete_site_option('fortnox_set_invoice_as_external_printed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_set_invoice_as_external_printed_when_order_has_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_book_invoice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_skip_processing_zero_orders');
delete_site_option('fortnox_skip_processing_zero_orders');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_set_invoice_as_external_printed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_use_customer_default_send_method');
delete_site_option('fortnox_use_customer_default_send_method');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_fortnox_set_order_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_automatic_payment_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_delete_invoice_file_payments');
delete_site_option('fortnox_delete_invoice_file_payments');
delete_option('fortnox_capture_ledyer_orders');
delete_site_option('fortnox_capture_ledyer_orders');
delete_option('fortnox_strict_order_matching');
delete_site_option('fortnox_strict_order_matching');
delete_option('fortnox_document_use_fee_field');
delete_site_option('fortnox_document_use_fee_field');
delete_option('fortnox_document_use_shipping_field');
delete_site_option('fortnox_document_use_shipping_field');
delete_option('fortnox_hub_enable_invoice_rows_against_order_check');
delete_site_option('fortnox_hub_enable_invoice_rows_against_order_check');
delete_option('fortnox_force_create_order');
delete_site_option('fortnox_force_create_order');
delete_option('fortnox_wc_product_update_stock_level');
delete_site_option('fortnox_wc_product_update_stock_level');
delete_option('fortnox_hub_always_do_subsequent_credit_invoice');
delete_site_option('fortnox_hub_always_do_subsequent_credit_invoice');
delete_option('fortnox_hub_credit_override_template');
delete_site_option('fortnox_hub_credit_override_template');
delete_option('fortnox_sync_wc_products_daily');
delete_site_option('fortnox_sync_wc_products_daily');
delete_option('fortnox_create_products_from_wc');
delete_site_option('fortnox_create_products_from_wc');
delete_option('fortnox_warehouse_apply_primary_stockplace_to_all_products');
delete_site_option('fortnox_warehouse_apply_primary_stockplace_to_all_products');
delete_option('fortnox_warehouse_primary_stockplace');
delete_site_option('fortnox_warehouse_primary_stockplace');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_wc_product_pricelist_b2bk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_wc_product_sale_pricelist_b2bk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_wc_product_pricelist');
delete_site_option('fortnox_wc_product_pricelist');
delete_option('fortnox_wc_product_sale_pricelist');
delete_site_option('fortnox_wc_product_sale_pricelist');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wholesale_price' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_wc_product_name');
delete_site_option('fortnox_wc_product_name');
delete_option('fortnox_wc_product_webshop_article');
delete_site_option('fortnox_wc_product_webshop_article');
delete_option('fortnox_wc_product_description');
delete_site_option('fortnox_wc_product_description');
delete_option('fortnox_wc_product_update_stock_data');
delete_site_option('fortnox_wc_product_update_stock_data');
delete_option('fortnox_wc_product_update_product_dimensions');
delete_site_option('fortnox_wc_product_update_product_dimensions');
delete_option('fortnox_wc_product_update_type');
delete_site_option('fortnox_wc_product_update_type');
delete_option('fortnox_wc_product_update_manufacturer');
delete_site_option('fortnox_wc_product_update_manufacturer');
delete_option('fortnox_wc_product_update_manufacturer_article_number');
delete_site_option('fortnox_wc_product_update_manufacturer_article_number');
delete_option('fortnox_wc_product_update_stock_place');
delete_site_option('fortnox_wc_product_update_stock_place');
delete_option('fortnox_wc_product_update_ean');
delete_site_option('fortnox_wc_product_update_ean');
delete_option('fortnox_wc_product_update_unit');
delete_site_option('fortnox_wc_product_update_unit');
delete_option('fortnox_wc_product_update_sales_account');
delete_site_option('fortnox_wc_product_update_sales_account');
delete_option('fortnox_se_purchase_account');
delete_site_option('fortnox_se_purchase_account');
delete_option('fortnox_wc_product_update_purchase_price');
delete_site_option('fortnox_wc_product_update_purchase_price');
delete_option('fortnox_last_wc_product_sync_done');
delete_site_option('fortnox_last_wc_product_sync_done');
delete_option('fortnox_enable_housework');
delete_site_option('fortnox_enable_housework');
delete_option('fortnox_hub_disable_credit_invoice_download');
delete_site_option('fortnox_hub_disable_credit_invoice_download');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('fortnox_warehouse_show_stockplaces');
delete_site_option('fortnox_warehouse_show_stockplaces');
delete_option('fortnox_warehouse_show_wc_stock');
delete_site_option('fortnox_warehouse_show_wc_stock');
delete_option('fortnox_warehouse_woo_stock_place_name');
delete_site_option('fortnox_warehouse_woo_stock_place_name');
delete_option('fortnox_warehouse_show_total_stock');
delete_site_option('fortnox_warehouse_show_total_stock');
delete_option('fortnox_warehouse_show_stockplaces_filter');
delete_site_option('fortnox_warehouse_show_stockplaces_filter');
delete_option('woocommerce_stock_format');
delete_site_option('woocommerce_stock_format');
delete_option('fortnox_user_email');
delete_site_option('fortnox_user_email');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('fortnox_pwgc_giftcard_sales_account');
delete_site_option('fortnox_pwgc_giftcard_sales_account');
delete_option('fortnox_wcgc_giftcard_sales_account');
delete_site_option('fortnox_wcgc_giftcard_sales_account');
delete_option('fortnox_ywgc_giftcard_sales_account');
delete_site_option('fortnox_ywgc_giftcard_sales_account');
delete_option('fortnox_zettle_gc_giftcard_sales_account');
delete_site_option('fortnox_zettle_gc_giftcard_sales_account');
delete_option('fortnox_update_klarna_merchant_reference');
delete_site_option('fortnox_update_klarna_merchant_reference');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_customer_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_voucher_serie' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_balance_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_document_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_fee_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_payouts_automatically' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_include_reversed_vat' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_book_included_invoice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_set_included_invoice_to_paid' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fortnox_payout_voucher_history_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_advanced_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_set_included_invoice_to_paid_credit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_test_mode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_outgoing_reversed_vat' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_incoming_calculated_vat' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_kco_settings');
delete_site_option('woocommerce_kco_settings');
delete_option('woocommerce_klarna_payments_settings');
delete_site_option('woocommerce_klarna_payments_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_commission_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_remove_vat_from_fee' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_fee_vat_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('test_mode');
delete_site_option('test_mode');
delete_option('dibs_test_key');
delete_site_option('dibs_test_key');
delete_option('dibs_live_key');
delete_site_option('dibs_live_key');
delete_option('woocommerce_paypal_settings');
delete_site_option('woocommerce_paypal_settings');
delete_option('fortnox_create_paypal_invoices');
delete_site_option('fortnox_create_paypal_invoices');
delete_option('fortnox_payment_account_paypal');
delete_site_option('fortnox_payment_account_paypal');
delete_option('fortnox_mode_of_payment_paypal');
delete_site_option('fortnox_mode_of_payment_paypal');
delete_option('fortnox_automatic_payment_paypal');
delete_site_option('fortnox_automatic_payment_paypal');
delete_option('fortnox_paypal_customer_number');
delete_site_option('fortnox_paypal_customer_number');
delete_option('fortnox_paypal_balance_account');
delete_site_option('fortnox_paypal_balance_account');
delete_option('fortnox_paypal_fee_account');
delete_site_option('fortnox_paypal_fee_account');
delete_option('fkwcs_mode');
delete_site_option('fkwcs_mode');
delete_option('fkwcs_test_secret_key');
delete_site_option('fkwcs_test_secret_key');
delete_option('fkwcs_secret_key');
delete_site_option('fkwcs_secret_key');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('fortnox_stripe_payouts');
delete_site_option('fortnox_stripe_payouts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_secret_test' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_client_secret_prod' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_payout_include_fees' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fortnox_create_izettle_payout_invoices');
delete_site_option('fortnox_create_izettle_payout_invoices');
delete_option('fortnox_izettle_fee_account');
delete_site_option('fortnox_izettle_fee_account');
delete_option('fortnox_payment_account_izettle_card');
delete_site_option('fortnox_payment_account_izettle_card');
delete_option('fortnox_log_zettle_traffic');
delete_site_option('fortnox_log_zettle_traffic');
delete_option('fortnox_wc_product_update_variable_parent_enrich_only_variant');
delete_site_option('fortnox_wc_product_update_variable_parent_enrich_only_variant');
delete_option('fortnox_metadata_mapping_ean');
delete_site_option('fortnox_metadata_mapping_ean');
delete_option('fortnox_hub_access_token_lock');
delete_site_option('fortnox_hub_access_token_lock');
delete_option('fortnox_api_timeout');
delete_site_option('fortnox_api_timeout');
delete_option('fortnox_hub_bypass_proxy');
delete_site_option('fortnox_hub_bypass_proxy');
delete_option('fortnox_hub_use_v2_api_header_entity');
delete_site_option('fortnox_hub_use_v2_api_header_entity');
delete_option('fortnox_tenant_uuid');
delete_site_option('fortnox_tenant_uuid');
delete_option('fortnox_gmt_offset');
delete_site_option('fortnox_gmt_offset');
delete_option('fortnox_hub_log_requests');
delete_site_option('fortnox_hub_log_requests');
delete_option('fortnox_hub_dont_use_improved_curl');
delete_site_option('fortnox_hub_dont_use_improved_curl');
delete_option('fortnox_warehouse_use_new_api');
delete_site_option('fortnox_warehouse_use_new_api');
delete_option('fortnox_logging');
delete_site_option('fortnox_logging');
delete_option('fortnox_enable_svea_order_ref');
delete_site_option('fortnox_enable_svea_order_ref');
delete_option('fortnox_svea_payouts');
delete_site_option('fortnox_svea_payouts');
delete_option('fortnox_clearhaus_payouts');
delete_site_option('fortnox_clearhaus_payouts');
delete_option('fortnox_service_url');
delete_site_option('fortnox_service_url');
delete_option('fortnox_manual_cron');
delete_site_option('fortnox_manual_cron');
delete_option('fortnox_hub_version');
delete_site_option('fortnox_hub_version');
delete_option('bjorntech_alternate_webhook_url');
delete_site_option('bjorntech_alternate_webhook_url');
delete_option('fortnox_market_url');
delete_site_option('fortnox_market_url');

// Delete Transients
delete_transient('fortnox_failed_orders');
delete_site_transient('fortnox_failed_orders');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortnox_terms_of_payment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortnox_terms_of_payment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortnox_terms_of_payment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortnox_terms_of_payment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'b2bking_regular_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'b2bking_regular_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'b2bking_regular_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'b2bking_regular_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'b2bking_sale_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'b2bking_sale_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'b2bking_sale_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'b2bking_sale_product_price_group_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortnox_purchase_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fortnox_warehouse_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fortnox_warehouse_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fortnox_warehouse_summary' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fortnox_warehouse_summary' ) );

