<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsscloud_hub_notifications');
delete_site_option('rsscloud_hub_notifications');

// Clear Cron Jobs
wp_clear_scheduled_hook('rsscloud_send_post_notifications_action');

