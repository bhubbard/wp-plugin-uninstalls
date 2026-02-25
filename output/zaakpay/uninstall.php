<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_zpay_settings');
delete_site_option('woocommerce_zpay_settings');

// Delete Transients
delete_transient('ced-zaakpay-activation-notice');
delete_site_transient('ced-zaakpay-activation-notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('ced_zaakpay_refund_updates');
wp_clear_scheduled_hook('ced_zaakpay_transaction_updates');

