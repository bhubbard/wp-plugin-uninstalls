<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdemch_pro_settings');
delete_site_option('mdemch_pro_settings');

// Delete Transients
delete_transient('mdemch_scan_progress');
delete_site_transient('mdemch_scan_progress');
delete_transient('mdemch_scan_in_progress');
delete_site_transient('mdemch_scan_in_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('mdemch_run_scan');
wp_clear_scheduled_hook('mdemch_process_chunk_v2');

