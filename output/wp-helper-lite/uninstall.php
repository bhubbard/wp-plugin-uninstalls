<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbwp_helper');
delete_site_option('mbwp_helper');
delete_option('whp_setting');
delete_site_option('whp_setting');
delete_option('btnCartName');
delete_site_option('btnCartName');
delete_option('convertZeroToContact');
delete_site_option('convertZeroToContact');
delete_option('showBuyNow');
delete_site_option('showBuyNow');
delete_option('tiki');
delete_site_option('tiki');
delete_option('shopee');
delete_site_option('shopee');
delete_option('lazada');
delete_site_option('lazada');
delete_option('sendo');
delete_site_option('sendo');
delete_option('fullname');
delete_site_option('fullname');
delete_option('address');
delete_site_option('address');
delete_option('country');
delete_site_option('country');
delete_option('company');
delete_site_option('company');
delete_option('zipCode');
delete_site_option('zipCode');
delete_option('province');
delete_site_option('province');
delete_option('momo');
delete_site_option('momo');
delete_option('zaloPay');
delete_site_option('zaloPay');
delete_option('vnPay');
delete_site_option('vnPay');
delete_option('shopeePay');
delete_site_option('shopeePay');
delete_option('notify');
delete_site_option('notify');
delete_option('vat');
delete_site_option('vat');
delete_option('compact');
delete_site_option('compact');
delete_option('telegram');
delete_site_option('telegram');
delete_option('telegramToken');
delete_site_option('telegramToken');
delete_option('telegramChatid');
delete_site_option('telegramChatid');
delete_option('duplicate_page_options');
delete_site_option('duplicate_page_options');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'product-ecommerce-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'product-ecommerce-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'product-ecommerce-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'product-ecommerce-%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mb_hpwc_invoice_vat_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mb_hpwc_invoice_vat_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mb_hpwc_invoice_vat_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mb_hpwc_invoice_vat_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_vat_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_vat_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_vat_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_vat_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_vat_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_vat_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_vat_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_vat_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_vat_company_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_vat_company_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_vat_company_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_vat_company_address' ) );

