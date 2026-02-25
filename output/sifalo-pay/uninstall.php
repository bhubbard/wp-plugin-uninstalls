<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sifalo_pay_api_user');
delete_site_option('sifalo_pay_api_user');
delete_option('sifalo_pay_api_key');
delete_site_option('sifalo_pay_api_key');
delete_option('woocommerce_card_pay_settings');
delete_site_option('woocommerce_card_pay_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('sifalo_pay_verify_pending_orders');

