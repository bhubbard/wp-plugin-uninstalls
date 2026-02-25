<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postmark_settings');
delete_site_option('postmark_settings');
delete_option('postmark_enabled');
delete_site_option('postmark_enabled');
delete_option('postmark_api_key');
delete_site_option('postmark_api_key');
delete_option('postmark_stream_name');
delete_site_option('postmark_stream_name');
delete_option('postmark_sender_address');
delete_site_option('postmark_sender_address');
delete_option('postmark_force_from');
delete_site_option('postmark_force_from');
delete_option('postmark_force_html');
delete_site_option('postmark_force_html');
delete_option('postmark_trackopens');
delete_site_option('postmark_trackopens');
delete_option('postmark_tracklinks');
delete_site_option('postmark_tracklinks');
delete_option('postmark_enable_logs');
delete_site_option('postmark_enable_logs');

// Clear Cron Jobs
wp_clear_scheduled_hook('pm_log_cron_job');

