<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('open_accessibility_options');
delete_site_option('open_accessibility_options');
delete_option('open_accessibility_db_version');
delete_site_option('open_accessibility_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('open_accessibility_cleanup_data');

