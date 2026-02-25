<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sprn_notification_method');
delete_site_option('sprn_notification_method');
delete_option('sprn_reminder_time');
delete_site_option('sprn_reminder_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('sprn_send_reminder');

