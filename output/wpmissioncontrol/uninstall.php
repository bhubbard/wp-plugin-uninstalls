<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmc_options');
delete_site_option('wpmc_options');

// Delete Transients
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');
delete_transient('wpmc_scanned_files');
delete_site_transient('wpmc_scanned_files');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_site_health_scheduled_check');

