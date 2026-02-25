<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payoneer-checkout_plugin_activated');
delete_site_option('payoneer-checkout_plugin_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('payoneer_process_system_report');

