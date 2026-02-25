<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wimbblock_always');
delete_site_option('wimbblock_always');
delete_option('wimbblock_deleting');
delete_site_option('wimbblock_deleting');
delete_option('wimbblock_emergency');
delete_site_option('wimbblock_emergency');
delete_option('wimbblock_exclude');
delete_site_option('wimbblock_exclude');
delete_option('wimbblock_anon');
delete_site_option('wimbblock_anon');
delete_option('wimbblock_anon_');
delete_site_option('wimbblock_anon_');
delete_option('wimbblock_logfile');
delete_site_option('wimbblock_logfile');
delete_option('wimbblock_log');
delete_site_option('wimbblock_log');
delete_option('wimbblock_settings');
delete_site_option('wimbblock_settings');
delete_option('wimbblock_systems');
delete_site_option('wimbblock_systems');
delete_option('wimbblock_browsers');
delete_site_option('wimbblock_browsers');
delete_option('wimbblock_db_version');
delete_site_option('wimbblock_db_version');

// Delete Transients
delete_transient('wimbblock_logfile');
delete_site_transient('wimbblock_logfile');

// Clear Cron Jobs
wp_clear_scheduled_hook('wimbblock_rotate_hook');

