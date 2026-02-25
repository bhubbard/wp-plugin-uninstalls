<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hitpay_settings');
delete_site_option('woocommerce_hitpay_settings');
delete_option('woocommerce_hitpay_payment_button');
delete_site_option('woocommerce_hitpay_payment_button');
delete_option('woocommerce_hitpay_place_order_text');
delete_site_option('woocommerce_hitpay_place_order_text');
delete_option('woocommerce_hitpay_customize');
delete_site_option('woocommerce_hitpay_customize');
delete_option('woocommerce_hitpay_style');
delete_site_option('woocommerce_hitpay_style');
delete_option('woocommerce_hitpay_enable_pos');
delete_site_option('woocommerce_hitpay_enable_pos');
delete_option('woocommerce_hitpay_terminal_ids');
delete_site_option('woocommerce_hitpay_terminal_ids');
delete_option('woocommerce_hitpay_cashier_emails');
delete_site_option('woocommerce_hitpay_cashier_emails');
delete_option('woocommerce_hitpay_logfile_prefix');
delete_site_option('woocommerce_hitpay_logfile_prefix');

