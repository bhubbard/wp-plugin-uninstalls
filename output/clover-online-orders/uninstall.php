<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moo_settings');
delete_site_option('moo_settings');
delete_option('moo_apple_pay_enabled');
delete_site_option('moo_apple_pay_enabled');
delete_option('moo_old_checkout_enabled');
delete_site_option('moo_old_checkout_enabled');
delete_option('moo_merchant_pubkey');
delete_site_option('moo_merchant_pubkey');
delete_option('moo_pakms_key');
delete_site_option('moo_pakms_key');
delete_option('moo_slug');
delete_site_option('moo_slug');
delete_option('moo_merchant_uuid');
delete_site_option('moo_merchant_uuid');
delete_option('moo_onlineOrders_version');
delete_site_option('moo_onlineOrders_version');
delete_option('soo_ssl_verify');
delete_site_option('soo_ssl_verify');
delete_option('sooDisableGoogleReCAPTCHA');
delete_site_option('sooDisableGoogleReCAPTCHA');
delete_option('moo_next_order_number');
delete_site_option('moo_next_order_number');
delete_option('moo-show-allItems');
delete_site_option('moo-show-allItems');
delete_option('moo_new_checkout_enabled');
delete_site_option('moo_new_checkout_enabled');

// Delete Transients
delete_transient('moo_blackout');
delete_site_transient('moo_blackout');
delete_transient('soo_error_saving_settings');
delete_site_transient('soo_error_saving_settings');

