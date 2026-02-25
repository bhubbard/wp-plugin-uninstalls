<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_clearpay_settings');
delete_site_option('woocommerce_clearpay_settings');
delete_option('woocommerce_clearpay_api_error');
delete_site_option('woocommerce_clearpay_api_error');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Delete Transients
delete_transient('clearpay-admin-activation-notice');
delete_site_transient('clearpay-admin-activation-notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('clearpay_do_cron_jobs');

