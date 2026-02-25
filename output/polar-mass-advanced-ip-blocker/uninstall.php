<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmip_api_token');
delete_site_option('pmip_api_token');
delete_option('pmip_zone_id');
delete_site_option('pmip_zone_id');
delete_option('pmip_ruleset_id');
delete_site_option('pmip_ruleset_id');
delete_option('pmip_rule_id');
delete_site_option('pmip_rule_id');
delete_option('pmip_plugin_status');
delete_site_option('pmip_plugin_status');
delete_option('pmip_scan_interval');
delete_site_option('pmip_scan_interval');
delete_option('pmip_failed_attempts');
delete_site_option('pmip_failed_attempts');
delete_option('pmip_block_duration');
delete_site_option('pmip_block_duration');
delete_option('pmip_max_logs');
delete_site_option('pmip_max_logs');
delete_option('pmip_newsletter_subscribed');
delete_site_option('pmip_newsletter_subscribed');
delete_option('pmip_newsletter_subscribers');
delete_site_option('pmip_newsletter_subscribers');
delete_option('pmip_blocked_ips');
delete_site_option('pmip_blocked_ips');
delete_option('pmip_failed_attempts_log');
delete_site_option('pmip_failed_attempts_log');
delete_option('pmip_ip_whitelist');
delete_site_option('pmip_ip_whitelist');

// Clear Cron Jobs
wp_clear_scheduled_hook('pmip_check_ips');
wp_clear_scheduled_hook('pmip_realtime_check_ips');
wp_clear_scheduled_hook('pmip_realtime_interval');

