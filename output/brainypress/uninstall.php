<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brainypress_gemini_api_key');
delete_site_option('brainypress_gemini_api_key');
delete_option('brainypress_tw_consumer_key');
delete_site_option('brainypress_tw_consumer_key');
delete_option('brainypress_tw_consumer_secret');
delete_site_option('brainypress_tw_consumer_secret');
delete_option('brainypress_tw_access_token');
delete_site_option('brainypress_tw_access_token');
delete_option('brainypress_tw_access_secret');
delete_site_option('brainypress_tw_access_secret');
delete_option('brainypress_active_orders');
delete_site_option('brainypress_active_orders');
delete_option('brainypress_review_dismissed');
delete_site_option('brainypress_review_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('brainypress_hourly_check_v8');

