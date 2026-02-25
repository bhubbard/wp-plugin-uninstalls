<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ulticocl_triggers');
delete_site_option('ulticocl_triggers');
delete_option('ulticocl_settings');
delete_site_option('ulticocl_settings');
delete_option('ulticocl_activity_log');
delete_site_option('ulticocl_activity_log');
delete_option('rc_settings');
delete_site_option('rc_settings');

// Delete Transients
delete_transient('ulticocl_comments_count');
delete_site_transient('ulticocl_comments_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('ulticocl_check_triggers');

