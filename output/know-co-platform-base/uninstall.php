<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('know--settings-group');
delete_site_option('know--settings-group');
delete_option('know__server_url');
delete_site_option('know__server_url');
delete_option('know__api_key');
delete_site_option('know__api_key');
delete_option('know__api_secret');
delete_site_option('know__api_secret');

// Clear Cron Jobs
wp_clear_scheduled_hook('know_platform__cleanup_cookies');

