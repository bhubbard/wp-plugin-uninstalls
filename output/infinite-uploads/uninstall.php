<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iup_do_sync_complete');
delete_site_option('iup_do_sync_complete');
delete_option('iup_do_download_complete');
delete_site_option('iup_do_download_complete');
delete_option('iup_enabled');
delete_site_option('iup_enabled');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');
delete_option('iup_files_scanned');
delete_site_option('iup_files_scanned');
delete_option('cmplz_geo_ip_file');
delete_site_option('cmplz_geo_ip_file');
delete_option('iup_scan_remaining_dirs');
delete_site_option('iup_scan_remaining_dirs');
delete_option('iup_excluded_files');
delete_site_option('iup_excluded_files');
delete_option('iup_files_to_downloads');
delete_site_option('iup_files_to_downloads');
delete_option('iup_dirs_to_downloads');
delete_site_option('iup_dirs_to_downloads');
delete_option('iup_s3_next_token_to_download');
delete_site_option('iup_s3_next_token_to_download');
delete_option('iup_apitoken');
delete_site_option('iup_apitoken');
delete_option('iup_site_id');
delete_site_option('iup_site_id');
delete_option('iup_api_data');
delete_site_option('iup_api_data');
delete_option('iu_file_exclusion_enabled');
delete_site_option('iu_file_exclusion_enabled');
delete_option('iup_installed');
delete_site_option('iup_installed');

// Delete Transients
delete_transient('iup_files_sync_progress');
delete_site_transient('iup_files_sync_progress');
delete_transient('iup_files_download_progress');
delete_site_transient('iup_files_download_progress');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('infinite_uploads_do_sync');
wp_clear_scheduled_hook('infinite-uploads-do-sync');
wp_clear_scheduled_hook('infinite_uploads_sync');

