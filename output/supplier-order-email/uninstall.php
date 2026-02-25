<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcisoe_auth_premium');
delete_site_option('mcisoe_auth_premium');
delete_option('mcisoe_email_subject');
delete_site_option('mcisoe_email_subject');
delete_option('mcisoe_email_intro');
delete_site_option('mcisoe_email_intro');
delete_option('mcisoe_select_email_admin');
delete_site_option('mcisoe_select_email_admin');
delete_option('mcisoe_replace_address');
delete_site_option('mcisoe_replace_address');
delete_option('mcisoe_delete_all_data');
delete_site_option('mcisoe_delete_all_data');
delete_option('mcisoe_header_color');
delete_site_option('mcisoe_header_color');
delete_option('mcisoe_store_logo');
delete_site_option('mcisoe_store_logo');
delete_option('mcisoe_hide_customer');
delete_site_option('mcisoe_hide_customer');
delete_option('mcisoe_show_customer_email');
delete_site_option('mcisoe_show_customer_email');
delete_option('mcisoe_show_customer_phone');
delete_site_option('mcisoe_show_customer_phone');
delete_option('mcisoe_show_shortdesc');
delete_site_option('mcisoe_show_shortdesc');
delete_option('mcisoe_show_ean');
delete_site_option('mcisoe_show_ean');
delete_option('mcisoe_show_notes');
delete_site_option('mcisoe_show_notes');
delete_option('mcisoe_show_order_total');
delete_site_option('mcisoe_show_order_total');
delete_option('mcisoe_show_payment_method');
delete_site_option('mcisoe_show_payment_method');
delete_option('mcisoe_show_shipping_method');
delete_site_option('mcisoe_show_shipping_method');
delete_option('mcisoe_show_price_items');
delete_site_option('mcisoe_show_price_items');
delete_option('mcisoe_show_order_number');
delete_site_option('mcisoe_show_order_number');
delete_option('mcisoe_show_product_attributes');
delete_site_option('mcisoe_show_product_attributes');
delete_option('mcisoe_show_product_meta');
delete_site_option('mcisoe_show_product_meta');
delete_option('mcisoe_show_cost_prices');
delete_site_option('mcisoe_show_cost_prices');
delete_option('mcisoe_show_cost_total');
delete_site_option('mcisoe_show_cost_total');
delete_option('mcisoe_attach_pdf');
delete_site_option('mcisoe_attach_pdf');
delete_option('mcisoe_store_pdf');
delete_site_option('mcisoe_store_pdf');
delete_option('mcisoe_company_info');
delete_site_option('mcisoe_company_info');
delete_option('mcisoe_special_meta');
delete_site_option('mcisoe_special_meta');
delete_option('mcisoe_email_copy');
delete_site_option('mcisoe_email_copy');
delete_option('mcisoe_from_email');
delete_site_option('mcisoe_from_email');
delete_option('mcisoe_email_trigger');
delete_site_option('mcisoe_email_trigger');
delete_option('mcisoe_cancel_all_emails');
delete_site_option('mcisoe_cancel_all_emails');
delete_option('mcisoe_show_product_img');
delete_site_option('mcisoe_show_product_img');
delete_option('mcisoe_product_img_width');
delete_site_option('mcisoe_product_img_width');
delete_option('mcisoe_show_weight');
delete_site_option('mcisoe_show_weight');
delete_option('mcisoe_auth_lemon');
delete_site_option('mcisoe_auth_lemon');
delete_option('mcisoe_auth_mciapi');
delete_site_option('mcisoe_auth_mciapi');
delete_option('mcisoe_new_structure_2_0');
delete_site_option('mcisoe_new_structure_2_0');
delete_option('mci_pay_email');
delete_site_option('mci_pay_email');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('mci_pay_code_key');
delete_site_option('mci_pay_code_key');
delete_option('mci_user_pass');
delete_site_option('mci_user_pass');
delete_option('mci_auth_premium');
delete_site_option('mci_auth_premium');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_auth_premium' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lemon_license_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_lemon_instance_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mcisoe_manual_auth');
delete_site_option('mcisoe_manual_auth');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('orddd_lite_delivery_date_field_label');
delete_site_option('orddd_lite_delivery_date_field_label');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('mcisoe_version');
delete_site_option('mcisoe_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mcisoe_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mci_api_key');
delete_site_option('mci_api_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mcisoe_supplier_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mcisoe_supplier_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mcisoe_supplier_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mcisoe_supplier_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mcisoe_supplier_custom_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mcisoe_supplier_custom_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mcisoe_supplier_custom_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mcisoe_supplier_custom_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mcisoe_supplier_data_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mcisoe_supplier_data_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mcisoe_supplier_data_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mcisoe_supplier_data_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_date' ) );

