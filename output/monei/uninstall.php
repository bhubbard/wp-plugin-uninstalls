<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide-new-version-monei-notice');
delete_site_option('hide-new-version-monei-notice');
delete_option('monei_log_level');
delete_site_option('monei_log_level');
delete_option('woocommerce_monei_apple_google_settings');
delete_site_option('woocommerce_monei_apple_google_settings');
delete_option('woocommerce_monei_bizum_settings');
delete_site_option('woocommerce_monei_bizum_settings');
delete_option('woocommerce_monei_settings');
delete_site_option('woocommerce_monei_settings');
delete_option('woocommerce_monei_mbway_settings');
delete_site_option('woocommerce_monei_mbway_settings');
delete_option('woocommerce_monei_multibanco_settings');
delete_site_option('woocommerce_monei_multibanco_settings');
delete_option('woocommerce_monei_paypal_settings');
delete_site_option('woocommerce_monei_paypal_settings');
delete_option('monei_debug');
delete_site_option('monei_debug');
delete_option('monei_orderdo');
delete_site_option('monei_orderdo');
delete_option('monei_pre_authorize');
delete_site_option('monei_pre_authorize');
delete_option('monei_test_apikey');
delete_site_option('monei_test_apikey');
delete_option('monei_live_apikey');
delete_site_option('monei_live_apikey');
delete_option('monei_apikey_mode');
delete_site_option('monei_apikey_mode');
delete_option('monei_test_accountid');
delete_site_option('monei_test_accountid');
delete_option('monei_live_accountid');
delete_site_option('monei_live_accountid');
delete_option('monei_apikey');
delete_site_option('monei_apikey');
delete_option('monei_accountid');
delete_site_option('monei_accountid');

