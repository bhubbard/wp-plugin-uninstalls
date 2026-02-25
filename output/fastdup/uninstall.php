<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastdup_last_check_folders');
delete_site_option('fastdup_last_check_folders');

// Clear Cron Jobs
wp_clear_scheduled_hook('njt-fastdup-event');

