<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Clear Cron Jobs
wp_clear_scheduled_hook('lh_email_queue_single');
wp_clear_scheduled_hook('lh_email_queue_initial_run');
wp_clear_scheduled_hook('lh_email_queue_generate');

