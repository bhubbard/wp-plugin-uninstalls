<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('humang_block_search_engines');
delete_site_option('humang_block_search_engines');
delete_option('humang_global_refusal');
delete_site_option('humang_global_refusal');
delete_option('humang_enforcement_mode');
delete_site_option('humang_enforcement_mode');
delete_option('humang_verify_search_engine_bots');
delete_site_option('humang_verify_search_engine_bots');
delete_option('humang_lockdown_mode');
delete_site_option('humang_lockdown_mode');
delete_option('humang_friction_enabled');
delete_site_option('humang_friction_enabled');
delete_option('humang_friction_burst_pages');
delete_site_option('humang_friction_burst_pages');
delete_option('humang_friction_burst_seconds');
delete_site_option('humang_friction_burst_seconds');
delete_option('humang_friction_rate_pages');
delete_site_option('humang_friction_rate_pages');
delete_option('humang_friction_rate_seconds');
delete_site_option('humang_friction_rate_seconds');
delete_option('humang_lockdown_require_login');
delete_site_option('humang_lockdown_require_login');
delete_option('humang_disable_robots_txt');
delete_site_option('humang_disable_robots_txt');
delete_option('humang_stats_retention');
delete_site_option('humang_stats_retention');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'humang_refusal_post_types_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('humang_whitelist_ips');
delete_site_option('humang_whitelist_ips');
delete_option('humang_whitelist_user_agents');
delete_site_option('humang_whitelist_user_agents');

// Delete Transients
delete_transient('humang_daily_counters');
delete_site_transient('humang_daily_counters');
delete_transient('humang_weekly_counters');
delete_site_transient('humang_weekly_counters');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_humang_challenge_%', '_site_transient_humang_challenge_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('humang_weekly_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_humangate_refusal_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_humangate_refusal_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_humangate_refusal_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_humangate_refusal_enabled' ) );

