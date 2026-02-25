<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twitch_status_client_id');
delete_site_option('twitch_status_client_id');
delete_option('twitch_status_client_secret');
delete_site_option('twitch_status_client_secret');
delete_option('twitch_status_channels');
delete_site_option('twitch_status_channels');
delete_option('twitch_status_channel');
delete_site_option('twitch_status_channel');
delete_option('twitch_status_selector');
delete_site_option('twitch_status_selector');
delete_option('twitch_status_token');
delete_site_option('twitch_status_token');
delete_option('twitch_status_token_type');
delete_site_option('twitch_status_token_type');
delete_option('twitch_status_token_expiration');
delete_site_option('twitch_status_token_expiration');

// Clear Cron Jobs
wp_clear_scheduled_hook('twitch_status_cron_hook');

