<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webhook_address');
delete_site_option('webhook_address');
delete_option('netlify_user_agent');
delete_site_option('netlify_user_agent');
delete_option('netlify_api_key');
delete_site_option('netlify_api_key');
delete_option('netlify_site_id');
delete_site_option('netlify_site_id');
delete_option('enable_scheduled_builds');
delete_site_option('enable_scheduled_builds');
delete_option('select_schedule_builds');
delete_site_option('select_schedule_builds');
delete_option('select_time_build');
delete_site_option('select_time_build');

// Clear Cron Jobs
wp_clear_scheduled_hook('scheduled_netlify_build');

