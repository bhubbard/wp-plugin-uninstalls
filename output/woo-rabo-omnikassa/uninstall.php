<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_icwoorok2_bancontact_settings');
delete_site_option('woocommerce_icwoorok2_bancontact_settings');
delete_option('woocommerce_icwoorok2_cards_settings');
delete_site_option('woocommerce_icwoorok2_cards_settings');
delete_option('woocommerce_icwoorok2_ideal_settings');
delete_site_option('woocommerce_icwoorok2_ideal_settings');
delete_option('woocommerce_icwoorok2_paypal_settings');
delete_site_option('woocommerce_icwoorok2_paypal_settings');
delete_option('icwoorok2_signing_key');
delete_site_option('icwoorok2_signing_key');
delete_option('icwoorok2_debugwebhook');
delete_site_option('icwoorok2_debugwebhook');
delete_option('icwoorok2_sandbox');
delete_site_option('icwoorok2_sandbox');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('icwoorok2_refresh_token');
delete_site_option('icwoorok2_refresh_token');
delete_option('icwoorok2_merchant_order_id');
delete_site_option('icwoorok2_merchant_order_id');
delete_option('icwoorok2_use_old_domain');
delete_site_option('icwoorok2_use_old_domain');

