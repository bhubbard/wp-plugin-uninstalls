<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buzzhub_display_settings');
delete_site_option('buzzhub_display_settings');
delete_option('buzzhub_version');
delete_site_option('buzzhub_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('buzzhub_cleanup_temp_files');

