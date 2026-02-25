<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hack-info_option');
delete_site_option('hack-info_option');
delete_option('hackinfo_db_version');
delete_site_option('hackinfo_db_version');
delete_option('hackinfo_digest_enable');
delete_site_option('hackinfo_digest_enable');
delete_option('hackinfo_digest_email');
delete_site_option('hackinfo_digest_email');
delete_option('hackinfo_digest_timer');
delete_site_option('hackinfo_digest_timer');
delete_option('hackinfo_whois_enable');
delete_site_option('hackinfo_whois_enable');
delete_option('hackinfo_digest_sent');
delete_site_option('hackinfo_digest_sent');
delete_option('hackinfo_digest_size');
delete_site_option('hackinfo_digest_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('hackinfo_send_digest');
wp_clear_scheduled_hook('hackinfo_scan_log');

