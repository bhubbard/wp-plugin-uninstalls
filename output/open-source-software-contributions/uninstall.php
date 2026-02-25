<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('github_api_key');
delete_site_option('github_api_key');
delete_option('github_repos');
delete_site_option('github_repos');
delete_option('github_users');
delete_site_option('github_users');

// Clear Cron Jobs
wp_clear_scheduled_hook('ossc_daily_event');

