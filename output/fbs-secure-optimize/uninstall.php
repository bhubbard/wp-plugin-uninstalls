<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbsseop_settings');
delete_site_option('fbsseop_settings');
delete_option('fbs_opt_settings');
delete_site_option('fbs_opt_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('fbsseop_cleanup_database');

