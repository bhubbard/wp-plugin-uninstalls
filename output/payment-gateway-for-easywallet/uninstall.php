<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hkdigital_easywallet_version_option');
delete_site_option('hkdigital_easywallet_version_option');
delete_option('woocommerce_payment-gateway-for-easy-wallet_settings');
delete_site_option('woocommerce_payment-gateway-for-easy-wallet_settings');
delete_option('hkdigital_payment-gateway-for-easy-wallet_verification_id');
delete_site_option('hkdigital_payment-gateway-for-easy-wallet_verification_id');
delete_option('hkdigital_check_activation_easy_wallet');
delete_site_option('hkdigital_check_activation_easy_wallet');
delete_option('hkdigital_dump');
delete_site_option('hkdigital_dump');

// Clear Cron Jobs
wp_clear_scheduled_hook('hkdigital_cronCheckOrderEasyWallet');
wp_clear_scheduled_hook('hkdigital_cron_cleanup_easywallet_logs');

