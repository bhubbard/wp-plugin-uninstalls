<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecommerce_frauds_check_trial_status');
delete_site_option('ecommerce_frauds_check_trial_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('ecommerce_frauds_check_schedule_event');

