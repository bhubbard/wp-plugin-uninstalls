<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tap_hashtags');
delete_site_option('tap_hashtags');
delete_option('tap_usernames');
delete_site_option('tap_usernames');
delete_option('tap_category');
delete_site_option('tap_category');
delete_option('tap_user');
delete_site_option('tap_user');
delete_option('tap_add_news_to_db');
delete_site_option('tap_add_news_to_db');
delete_option('tap_exceptions');
delete_site_option('tap_exceptions');
delete_option('tap_version');
delete_site_option('tap_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('tap_hourly_update_action');

