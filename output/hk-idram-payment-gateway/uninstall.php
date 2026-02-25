<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkd_idram_version_option');
delete_site_option('hkd_idram_version_option');
delete_option('woocommerce_hk-idram-payment-gateway_settings');
delete_site_option('woocommerce_hk-idram-payment-gateway_settings');
delete_option('language_payment_idram');
delete_site_option('language_payment_idram');
delete_option('hkd_idram_checkout_id');
delete_site_option('hkd_idram_checkout_id');
delete_option('hkd_check_activation_idram');
delete_site_option('hkd_check_activation_idram');

// Clear Cron Jobs
wp_clear_scheduled_hook('cronCheckOrder');

