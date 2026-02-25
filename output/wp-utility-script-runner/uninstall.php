<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_util_script_runner');
delete_site_option('wp_util_script_runner');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_util_cron_action');

