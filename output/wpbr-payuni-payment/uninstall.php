<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payuni_payment_language');
delete_site_option('payuni_payment_language');
delete_option('payuni_payment_testmode_enabled');
delete_site_option('payuni_payment_testmode_enabled');
delete_option('payuni_payment_merchant_id_test');
delete_site_option('payuni_payment_merchant_id_test');
delete_option('payuni_payment_merchant_id');
delete_site_option('payuni_payment_merchant_id');
delete_option('payuni_payment_hashkey_test');
delete_site_option('payuni_payment_hashkey_test');
delete_option('payuni_payment_hashkey');
delete_site_option('payuni_payment_hashkey');
delete_option('payuni_payment_hashiv_test');
delete_site_option('payuni_payment_hashiv_test');
delete_option('payuni_payment_hashiv');
delete_site_option('payuni_payment_hashiv');
delete_option('payuni_payment_debug_log_enabled');
delete_site_option('payuni_payment_debug_log_enabled');
delete_option('payuni_payment_einvoice_enabled');
delete_site_option('payuni_payment_einvoice_enabled');
delete_option('payuni_payment_installment_number_of_payments');
delete_site_option('payuni_payment_installment_number_of_payments');

