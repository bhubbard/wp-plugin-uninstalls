<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_dojo_settings');
delete_site_option('woocommerce_dojo_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('dojo_process_webhook_event');

