<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('access_watch_api_key');
delete_site_option('access_watch_api_key');
delete_option('access_watch_api_key_registered');
delete_site_option('access_watch_api_key_registered');
delete_option('access_watch_site_id');
delete_site_option('access_watch_site_id');
delete_option('access_watch_access_token');
delete_site_option('access_watch_access_token');
delete_option('access_watch_user_email');
delete_site_option('access_watch_user_email');

// Clear Cron Jobs
wp_clear_scheduled_hook('access_watch_clean');
wp_clear_scheduled_hook('access_watch_post_activation');

