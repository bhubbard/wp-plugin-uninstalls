<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfingerprint_checkstamp');
delete_site_option('wpfingerprint_checkstamp');
delete_option('wpfingerprint_invalid');
delete_site_option('wpfingerprint_invalid');
delete_option('wpfingerprint_db_version');
delete_site_option('wpfingerprint_db_version');
delete_option('wpfingerprint_checksum');
delete_site_option('wpfingerprint_checksum');
delete_option('wpfingerprint_last_run');
delete_site_option('wpfingerprint_last_run');
delete_option('wp_fingerprint_option');
delete_site_option('wp_fingerprint_option');
delete_option('wpfingerprint_fails');
delete_site_option('wpfingerprint_fails');
delete_option('wpfingerprint_mode');
delete_site_option('wpfingerprint_mode');

// Delete Transients
delete_transient('wpfingerprint-first-run');
delete_site_transient('wpfingerprint-first-run');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpfingerprint_run_now');
wp_clear_scheduled_hook('wpfingerprint_cron');

