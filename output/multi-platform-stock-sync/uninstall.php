<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpss_cron_last_call');
delete_site_option('mpss_cron_last_call');
delete_option('mpss_cronjob_settings');
delete_site_option('mpss_cronjob_settings');
delete_option('mpss_platforms');
delete_site_option('mpss_platforms');
delete_option('mpss_log_settings');
delete_site_option('mpss_log_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpss_cron_hook');

