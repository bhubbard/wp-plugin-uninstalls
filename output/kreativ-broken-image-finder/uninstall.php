<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kbif_last_scan_results');
delete_site_option('kbif_last_scan_results');
delete_option('kbif_last_scan_stats');
delete_site_option('kbif_last_scan_stats');
delete_option('kbif_scan_queue');
delete_site_option('kbif_scan_queue');
delete_option('kbif_scan_progress');
delete_site_option('kbif_scan_progress');

