<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcbcf_settings');
delete_site_option('wcbcf_settings');
delete_option('woocommerce_subscriptions_enable_early_renewal');
delete_site_option('woocommerce_subscriptions_enable_early_renewal');
delete_option('asaas_status_data');
delete_site_option('asaas_status_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('remove_expired_pix_asaas');
wp_clear_scheduled_hook('remove_expired_ticket');

