<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_traffic_jammer_abuseipdb');
delete_site_option('wp_traffic_jammer_abuseipdb');
delete_option('wp_traffic_jammer_options');
delete_site_option('wp_traffic_jammer_options');
delete_option('wp_traffic_jammer_blocklist');
delete_site_option('wp_traffic_jammer_blocklist');
delete_option(' wp_traffic_jammer_blocklist');
delete_site_option(' wp_traffic_jammer_blocklist');
delete_option(' wp_traffic_jammer_whitelist');
delete_site_option(' wp_traffic_jammer_whitelist');
delete_option('wp_traffic_jammer_whitelist');
delete_site_option('wp_traffic_jammer_whitelist');
delete_option(' wp_traffic_jammer_user_agents');
delete_site_option(' wp_traffic_jammer_user_agents');
delete_option('wp_traffic_jammer_user_agents');
delete_site_option('wp_traffic_jammer_user_agents');
delete_option('trafficjammer_db_version');
delete_site_option('trafficjammer_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('trafficjammer_cron_hook');

