<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('idx_broker_apikey');
delete_site_option('idx_broker_apikey');
delete_option('wpps_settings');
delete_site_option('wpps_settings');
delete_option('anh_notices');
delete_site_option('anh_notices');

// Delete Transients
delete_transient('wpps_cron_example_timed_job');
delete_site_transient('wpps_cron_example_timed_job');

// Clear Cron Jobs
wp_clear_scheduled_hook('idxaddond_cron_mailchimp');

