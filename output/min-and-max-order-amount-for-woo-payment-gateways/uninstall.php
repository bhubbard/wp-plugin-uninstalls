<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmawpg_exc_shipping_crg');
delete_site_option('mmawpg_exc_shipping_crg');
delete_option('mmawpg_cod_min');
delete_site_option('mmawpg_cod_min');
delete_option('mmawpg_cheque_min');
delete_site_option('mmawpg_cheque_min');
delete_option('mmawpg_paypal_min');
delete_site_option('mmawpg_paypal_min');
delete_option('mmawpg_bank_min');
delete_site_option('mmawpg_bank_min');
delete_option('mmawpg_cod_max');
delete_site_option('mmawpg_cod_max');
delete_option('mmawpg_cheque_max');
delete_site_option('mmawpg_cheque_max');
delete_option('mmawpg_paypal_max');
delete_site_option('mmawpg_paypal_max');
delete_option('mmawpg_bank_max');
delete_site_option('mmawpg_bank_max');
delete_option('mmawpg_calc_cart');
delete_site_option('mmawpg_calc_cart');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('mmawpg_error_notice_min');
delete_site_option('mmawpg_error_notice_min');
delete_option('mmawpg_error_notice_max');
delete_site_option('mmawpg_error_notice_max');
delete_option('mmawpg_enable_setting');
delete_site_option('mmawpg_enable_setting');

