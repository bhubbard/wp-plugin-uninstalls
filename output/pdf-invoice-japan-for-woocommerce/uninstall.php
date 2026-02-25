<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('invoicejapan');
delete_site_option('invoicejapan');
delete_option('invoicejapan_gateway_mail_timing');
delete_site_option('invoicejapan_gateway_mail_timing');
delete_option('invoicejapan_gateway_remarks');
delete_site_option('invoicejapan_gateway_remarks');
delete_option('invoicejapan_gateway_refunds');
delete_site_option('invoicejapan_gateway_refunds');
delete_option('woocommerce_bankjp_accounts');
delete_site_option('woocommerce_bankjp_accounts');
delete_option('woocommerce_postofficebankjp_accounts');
delete_site_option('woocommerce_postofficebankjp_accounts');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('invoicejapan_mail_timing');
delete_site_option('invoicejapan_mail_timing');

