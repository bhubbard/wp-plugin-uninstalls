<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_post_sync_settings');
delete_site_option('smart_post_sync_settings');
delete_option('smart_post_sync_attr_map');
delete_site_option('smart_post_sync_attr_map');
delete_option('smart_post_sync_response');
delete_site_option('smart_post_sync_response');

// Clear Cron Jobs
wp_clear_scheduled_hook('sps_sync_post_cron');

