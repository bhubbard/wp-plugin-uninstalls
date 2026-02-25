<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipintel_kill_switch');
delete_site_option('ipintel_kill_switch');
delete_option('ipintel_api_key');
delete_site_option('ipintel_api_key');
delete_option('ipintel_mode');
delete_site_option('ipintel_mode');
delete_option('ipintel_block_threshold');
delete_site_option('ipintel_block_threshold');
delete_option('ipintel_last_usage');
delete_site_option('ipintel_last_usage');
delete_option('ipintel_whitelist');
delete_site_option('ipintel_whitelist');
delete_option('ipintel_blacklist');
delete_site_option('ipintel_blacklist');
delete_option('ipintel_request_log');
delete_site_option('ipintel_request_log');
delete_option('ipintel_challenge_threshold');
delete_site_option('ipintel_challenge_threshold');
delete_option('ipintel_challenge_theme');
delete_site_option('ipintel_challenge_theme');
delete_option('ipintel_block_theme');
delete_site_option('ipintel_block_theme');
delete_option('ipintel_challenge_duration');
delete_site_option('ipintel_challenge_duration');
delete_option('ipintel_footer_badge');
delete_site_option('ipintel_footer_badge');
delete_option('ipintel_last_usage_time');
delete_site_option('ipintel_last_usage_time');
delete_option('ipintel_plan');
delete_site_option('ipintel_plan');
delete_option('ipintel_cache_index');
delete_site_option('ipintel_cache_index');
delete_option('ipintel_threat_log');
delete_site_option('ipintel_threat_log');
delete_option('ipintel_firewall_enabled');
delete_site_option('ipintel_firewall_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('ipintel_prune_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ipintel_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ipintel_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ipintel_cache_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ipintel_cache_notice_dismissed' ) );

