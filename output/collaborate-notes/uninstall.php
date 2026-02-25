<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('collaborate_notes_active');
delete_site_option('collaborate_notes_active');
delete_option('collaborate_notes_db_version');
delete_site_option('collaborate_notes_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('send_reminder_event');

