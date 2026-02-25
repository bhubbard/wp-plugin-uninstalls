<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('gdmaq_queue_status');
delete_site_transient('gdmaq_queue_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('gdmaq_run_queue');
wp_clear_scheduled_hook('gdmaq_run_maintenance');

