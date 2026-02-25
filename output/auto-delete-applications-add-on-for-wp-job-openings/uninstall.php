<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awsm_jobs_adl_general_settings');
delete_site_option('awsm_jobs_adl_general_settings');
delete_option('awsm_jobs_adl_register_default_settings');
delete_site_option('awsm_jobs_adl_register_default_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('awsm_jobs_adl_applications');

