<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edubzl_delete_data_on_uninstall');
delete_site_option('edubzl_delete_data_on_uninstall');
delete_option('edubzl_notes');
delete_site_option('edubzl_notes');
delete_option('edubzl_logs');
delete_site_option('edubzl_logs');
delete_option('edubzl_batch_size');
delete_site_option('edubzl_batch_size');
delete_option('edubzl_batch_interval');
delete_site_option('edubzl_batch_interval');
delete_option('edubzl_max_attempts');
delete_site_option('edubzl_max_attempts');
delete_option('edubzl_queue_enabled');
delete_site_option('edubzl_queue_enabled');
delete_option('edubzl_cleanup_queue_days');
delete_site_option('edubzl_cleanup_queue_days');
delete_option('edubzl_test_mode');
delete_site_option('edubzl_test_mode');

// Delete Transients
delete_transient('edubzl_last_job_id');
delete_site_transient('edubzl_last_job_id');
delete_transient('edubzl_cron_processing');
delete_site_transient('edubzl_cron_processing');

// Clear Cron Jobs
wp_clear_scheduled_hook('edubzl_cleanup_job');

