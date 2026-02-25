<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_system_report_log');
delete_site_option('bp_system_report_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('bp_system_report_pseudo_cron_hook');

