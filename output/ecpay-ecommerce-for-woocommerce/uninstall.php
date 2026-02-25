<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooecpay_enabled_payment');
delete_site_option('wooecpay_enabled_payment');
delete_option('wooecpay_enabled_logistic');
delete_site_option('wooecpay_enabled_logistic');
delete_option('wooecpay_enabled_logistic_outside');
delete_site_option('wooecpay_enabled_logistic_outside');
delete_option('wooecpay_enabled_invoice');
delete_site_option('wooecpay_enabled_invoice');
delete_option('wooecpay_enabled_cancel_invoice_auto');
delete_site_option('wooecpay_enabled_cancel_invoice_auto');
delete_option('wooecpay_enabled_invoice_auto');
delete_site_option('wooecpay_enabled_invoice_auto');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('wooecpay_keep_logistic_phone');
delete_site_option('wooecpay_keep_logistic_phone');
delete_option('woocommerce_Wooecpay_Gateway_Dca_settings');
delete_site_option('woocommerce_Wooecpay_Gateway_Dca_settings');
delete_option('ecpay_db_version');
delete_site_option('ecpay_db_version');
delete_option('wooecpay_enabled_invoice_stage');
delete_site_option('wooecpay_enabled_invoice_stage');
delete_option('wooecpay_invoice_mid');
delete_site_option('wooecpay_invoice_mid');
delete_option('wooecpay_invoice_hashkey');
delete_site_option('wooecpay_invoice_hashkey');
delete_option('wooecpay_invoice_hashiv');
delete_site_option('wooecpay_invoice_hashiv');
delete_option('wooecpay_invoice_prefix');
delete_site_option('wooecpay_invoice_prefix');
delete_option('wooecpay_invoice_dalay_date');
delete_site_option('wooecpay_invoice_dalay_date');
delete_option('wooecpay_enabled_debug_log');
delete_site_option('wooecpay_enabled_debug_log');
delete_option('wooecpay_logistic_order_prefix');
delete_site_option('wooecpay_logistic_order_prefix');
delete_option('wooecpay_logistic_sender_name');
delete_site_option('wooecpay_logistic_sender_name');
delete_option('wooecpay_logistic_sender_cellphone');
delete_site_option('wooecpay_logistic_sender_cellphone');
delete_option('wooecpay_logistic_sender_zipcode');
delete_site_option('wooecpay_logistic_sender_zipcode');
delete_option('wooecpay_logistic_sender_address');
delete_site_option('wooecpay_logistic_sender_address');
delete_option('wooecpay_enabled_logistic_disp_item_name');
delete_site_option('wooecpay_enabled_logistic_disp_item_name');
delete_option('wooecpay_logistic_cvs_type');
delete_site_option('wooecpay_logistic_cvs_type');
delete_option('wooecpay_enabled_logistic_stage');
delete_site_option('wooecpay_enabled_logistic_stage');
delete_option('wooecpay_logistic_mid');
delete_site_option('wooecpay_logistic_mid');
delete_option('wooecpay_logistic_hashkey');
delete_site_option('wooecpay_logistic_hashkey');
delete_option('wooecpay_logistic_hashiv');
delete_site_option('wooecpay_logistic_hashiv');
delete_option('wooecpay_payment_order_prefix');
delete_site_option('wooecpay_payment_order_prefix');
delete_option('wooecpay_enabled_payment_stage');
delete_site_option('wooecpay_enabled_payment_stage');
delete_option('wooecpay_payment_mid');
delete_site_option('wooecpay_payment_mid');
delete_option('wooecpay_payment_hashkey');
delete_site_option('wooecpay_payment_hashkey');
delete_option('wooecpay_payment_hashiv');
delete_site_option('wooecpay_payment_hashiv');
delete_option('woocommerce_Wooecpay_Gateway_Credit_Installment_settings');
delete_site_option('woocommerce_Wooecpay_Gateway_Credit_Installment_settings');
delete_option('woocommerce_Wooecpay_Gateway_Atm_settings');
delete_site_option('woocommerce_Wooecpay_Gateway_Atm_settings');
delete_option('woocommerce_Wooecpay_Gateway_Barcode_settings');
delete_site_option('woocommerce_Wooecpay_Gateway_Barcode_settings');
delete_option('woocommerce_Wooecpay_Gateway_Cvs_settings');
delete_site_option('woocommerce_Wooecpay_Gateway_Cvs_settings');
delete_option('wooecpay_invoice_donate');
delete_site_option('wooecpay_invoice_donate');
delete_option('wooecpay_invoice_carruer_papper');
delete_site_option('wooecpay_invoice_carruer_papper');
delete_option('wooecpay_enabled_payment_disp_item_name');
delete_site_option('wooecpay_enabled_payment_disp_item_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wooecpay_enabled_payment_disp_email');
delete_site_option('wooecpay_enabled_payment_disp_email');
delete_option('woocommerce_ecpay_dca');
delete_site_option('woocommerce_ecpay_dca');
delete_option('wooecpay_enable_logistic_auto');
delete_site_option('wooecpay_enable_logistic_auto');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wooecpay_payment_installment_%', '_site_transient_wooecpay_payment_installment_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wooecpay_receipt_page_executed_%', '_site_transient_wooecpay_receipt_page_executed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

