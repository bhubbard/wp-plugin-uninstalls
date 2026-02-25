<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkguard_scan_interval');
delete_site_option('linkguard_scan_interval');
delete_option('linkguard_email_notify');
delete_site_option('linkguard_email_notify');
delete_option('linkguard_scan_progress');
delete_site_option('linkguard_scan_progress');
delete_option('linkguard_nt_version');
delete_site_option('linkguard_nt_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('linkguard_nt_cron_scan');
wp_clear_scheduled_hook('linkguard_nt_daily_check');

