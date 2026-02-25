<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whisperfollow_db_version');
delete_site_option('whisperfollow_db_version');
delete_option('whisperfollow_pushsubs');
delete_site_option('whisperfollow_pushsubs');
delete_option('whisperfollow_log');
delete_site_option('whisperfollow_log');
delete_option('plugin_error');
delete_site_option('plugin_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('whisperfollow_generate_hook');

