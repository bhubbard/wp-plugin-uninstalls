<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('run_external_cron_settings');
delete_site_option('run_external_cron_settings');
delete_option('run_external_cron_last_run');
delete_site_option('run_external_cron_last_run');

// Clear Cron Jobs
wp_clear_scheduled_hook('rec_event');

