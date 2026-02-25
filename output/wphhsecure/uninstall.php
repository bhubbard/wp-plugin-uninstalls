<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphhsecure_excluded_folders');
delete_site_option('wphhsecure_excluded_folders');
delete_option('wphhsecure_processed_batches');
delete_site_option('wphhsecure_processed_batches');
delete_option('wphhsecure_total_batches');
delete_site_option('wphhsecure_total_batches');
delete_option('wphhsecure_site_lock_status');
delete_site_option('wphhsecure_site_lock_status');
delete_option('wphhsecure_site_failed_files');
delete_site_option('wphhsecure_site_failed_files');
delete_option('wphhsecure_custom_login_path');
delete_site_option('wphhsecure_custom_login_path');
delete_option('wphhsecure_progress');
delete_site_option('wphhsecure_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('wphhsecure_process_files');

