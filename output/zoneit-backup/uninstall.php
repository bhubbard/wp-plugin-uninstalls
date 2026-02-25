<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zoneit_cron_backup');
delete_site_option('zoneit_cron_backup');

// Delete Transients
delete_transient('zoneit_cloud_id');
delete_site_transient('zoneit_cloud_id');
delete_transient('zoneit_restore_backup_running');
delete_site_transient('zoneit_restore_backup_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('zoneit_create_user_backup_event');
wp_clear_scheduled_hook('zoneit_create_backup_event');
wp_clear_scheduled_hook('zoneit_restore_backup_event');

