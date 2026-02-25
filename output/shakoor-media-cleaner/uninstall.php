<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shmc_automation_enabled');
delete_site_option('shmc_automation_enabled');
delete_option('shmc_automation_interval');
delete_site_option('shmc_automation_interval');
delete_option('shmc_automation_start_time');
delete_site_option('shmc_automation_start_time');
delete_option('shmc_automation_delay_h');
delete_site_option('shmc_automation_delay_h');
delete_option('shmc_automation_delay_m');
delete_site_option('shmc_automation_delay_m');
delete_option('shmc_automation_delay_s');
delete_site_option('shmc_automation_delay_s');

// Clear Cron Jobs
wp_clear_scheduled_hook('shmc_automatic_clean_cron');

