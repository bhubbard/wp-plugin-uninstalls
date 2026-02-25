<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emaz_total_files');
delete_site_option('emaz_total_files');
delete_option('emaz_processed_files');
delete_site_option('emaz_processed_files');
delete_option('emaz_progress');
delete_site_option('emaz_progress');
delete_option('emaz_current_file');
delete_site_option('emaz_current_file');
delete_option('emaz_zip_time');
delete_site_option('emaz_zip_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('emaz_cleanup_expired_zips');

