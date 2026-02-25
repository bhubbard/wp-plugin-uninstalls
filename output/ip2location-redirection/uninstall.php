<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip2location_redirection_api_key');
delete_site_option('ip2location_redirection_api_key');
delete_option('ip2location_redirection_database');
delete_site_option('ip2location_redirection_database');
delete_option('ip2location_redirection_debug_log_enabled');
delete_site_option('ip2location_redirection_debug_log_enabled');
delete_option('ip2location_redirection_download_ipv4_only');
delete_site_option('ip2location_redirection_download_ipv4_only');
delete_option('ip2location_redirection_enable_region_redirect');
delete_site_option('ip2location_redirection_enable_region_redirect');
delete_option('ip2location_redirection_enabled');
delete_site_option('ip2location_redirection_enabled');
delete_option('ip2location_redirection_first_redirect');
delete_site_option('ip2location_redirection_first_redirect');
delete_option('ip2location_redirection_ignore_query_string');
delete_site_option('ip2location_redirection_ignore_query_string');
delete_option('ip2location_redirection_ip_whitelist');
delete_site_option('ip2location_redirection_ip_whitelist');
delete_option('ip2location_redirection_lookup_mode');
delete_site_option('ip2location_redirection_lookup_mode');
delete_option('ip2location_redirection_noredirect_enabled');
delete_site_option('ip2location_redirection_noredirect_enabled');
delete_option('ip2location_redirection_private_key');
delete_site_option('ip2location_redirection_private_key');
delete_option('ip2location_redirection_real_ip_header');
delete_site_option('ip2location_redirection_real_ip_header');
delete_option('ip2location_redirection_rules');
delete_site_option('ip2location_redirection_rules');
delete_option('ip2location_redirection_session_message');
delete_site_option('ip2location_redirection_session_message');
delete_option('ip2location_redirection_skip_admins');
delete_site_option('ip2location_redirection_skip_admins');
delete_option('ip2location_redirection_skip_bots');
delete_site_option('ip2location_redirection_skip_bots');
delete_option('ip2location_redirection_token');
delete_site_option('ip2location_redirection_token');
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ip2location_redirection_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ip2location_redirection_hourly_event');
wp_clear_scheduled_hook('ip2location_redirection_daily_event');

