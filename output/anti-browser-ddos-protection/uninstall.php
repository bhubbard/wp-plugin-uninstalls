<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abdp_blocked_bots');
delete_site_option('abdp_blocked_bots');
delete_option('abdp_excluded_bots');
delete_site_option('abdp_excluded_bots');
delete_option('abdp_bot_ip_ranges');
delete_site_option('abdp_bot_ip_ranges');
delete_option('abdp_log_expires_days');
delete_site_option('abdp_log_expires_days');
delete_option('abdp_blocked_ips');
delete_site_option('abdp_blocked_ips');
delete_option('abdp_banned_ips');
delete_site_option('abdp_banned_ips');
delete_option('abdp_high_traffic_bots');
delete_site_option('abdp_high_traffic_bots');
delete_option('abdp_max_requests');
delete_site_option('abdp_max_requests');
delete_option('abdp_time_window');
delete_site_option('abdp_time_window');
delete_option('abdp_ban_threshold');
delete_site_option('abdp_ban_threshold');
delete_option('abdp_ban_duration');
delete_site_option('abdp_ban_duration');
delete_option('abdp_bot_max_requests');
delete_site_option('abdp_bot_max_requests');

// Clear Cron Jobs
wp_clear_scheduled_hook('abdp_cleanup_logs_event');

