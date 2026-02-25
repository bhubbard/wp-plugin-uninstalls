<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filesfence_wp_version');
delete_site_option('filesfence_wp_version');
delete_option('filesfence_search_main_files');
delete_site_option('filesfence_search_main_files');
delete_option('filesfence_create');
delete_site_option('filesfence_create');

// Clear Cron Jobs
wp_clear_scheduled_hook('filesfence_cron');

