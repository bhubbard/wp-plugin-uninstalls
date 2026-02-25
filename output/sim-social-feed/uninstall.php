<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simsf_token');
delete_site_option('simsf_token');
delete_option('simsf_user_media');
delete_site_option('simsf_user_media');
delete_option('simsf_access_token');
delete_site_option('simsf_access_token');
delete_option('simsf_user');
delete_site_option('simsf_user');
delete_option('simsf_update_schedule');
delete_site_option('simsf_update_schedule');
delete_option('simsf_notification_email');
delete_site_option('simsf_notification_email');

// Clear Cron Jobs
wp_clear_scheduled_hook('sim_social_feed_cron');

