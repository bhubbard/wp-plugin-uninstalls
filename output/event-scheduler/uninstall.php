<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('event-scheduler');
delete_site_option('event-scheduler');

// Clear Cron Jobs
wp_clear_scheduled_hook('event_scheduler_mail_notification');

