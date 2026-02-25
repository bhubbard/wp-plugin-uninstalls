<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_mp_rated');
delete_site_option('woo_mp_rated');
delete_option('woo_mp_authorize_net_title');
delete_site_option('woo_mp_authorize_net_title');
delete_option('woo_mp_authorize_net_test_mode');
delete_site_option('woo_mp_authorize_net_test_mode');
delete_option('woo_mp_authorize_net_login_id');
delete_site_option('woo_mp_authorize_net_login_id');
delete_option('woo_mp_authorize_net_client_key');
delete_site_option('woo_mp_authorize_net_client_key');
delete_option('woo_mp_authorize_net_include_billing_details');
delete_site_option('woo_mp_authorize_net_include_billing_details');
delete_option('woo_mp_authorize_net_include_shipping_details');
delete_site_option('woo_mp_authorize_net_include_shipping_details');
delete_option('woo_mp_authorize_net_transaction_key');
delete_site_option('woo_mp_authorize_net_transaction_key');
delete_option('woo_mp_eway_title');
delete_site_option('woo_mp_eway_title');
delete_option('woo_mp_eway_include_billing_details');
delete_site_option('woo_mp_eway_include_billing_details');
delete_option('woo_mp_eway_include_shipping_details');
delete_site_option('woo_mp_eway_include_shipping_details');
delete_option('woo_mp_eway_api_key');
delete_site_option('woo_mp_eway_api_key');
delete_option('woo_mp_eway_api_password');
delete_site_option('woo_mp_eway_api_password');
delete_option('woo_mp_eway_sandbox_mode');
delete_site_option('woo_mp_eway_sandbox_mode');
delete_option('woo_mp_stripe_title');
delete_site_option('woo_mp_stripe_title');
delete_option('woo_mp_stripe_publishable_key');
delete_site_option('woo_mp_stripe_publishable_key');
delete_option('woo_mp_stripe_moto_enabled');
delete_site_option('woo_mp_stripe_moto_enabled');
delete_option('woo_mp_stripe_secret_key');
delete_site_option('woo_mp_stripe_secret_key');
delete_option('woo_mp_payment_processor');
delete_site_option('woo_mp_payment_processor');
delete_option('woo_mp_capture_payments');
delete_site_option('woo_mp_capture_payments');
delete_option('woo_mp_transaction_description');
delete_site_option('woo_mp_transaction_description');
delete_option('woo_mp_save_wc_payment_when');
delete_site_option('woo_mp_save_wc_payment_when');
delete_option('woo_mp_update_order_status_when');
delete_site_option('woo_mp_update_order_status_when');
delete_option('woo_mp_update_order_status_to');
delete_site_option('woo_mp_update_order_status_to');
delete_option('woo_mp_reduce_stock_levels_when');
delete_site_option('woo_mp_reduce_stock_levels_when');
delete_option('woo_mp_data_version');
delete_site_option('woo_mp_data_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

