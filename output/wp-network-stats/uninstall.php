<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_network_stats_version');
delete_site_option('wp_network_stats_version');
delete_option('network_stats_db_version');
delete_site_option('network_stats_db_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('ns_blog_list');
delete_site_transient('ns_blog_list');
delete_transient('ns_active_plugins');
delete_site_transient('ns_active_plugins');
delete_transient('ns_active_themes');
delete_site_transient('ns_active_themes');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_refresh_user_stats');
wp_clear_scheduled_hook('cron_refresh_plugin_stats');
wp_clear_scheduled_hook('cron_refresh_theme_stats');
wp_clear_scheduled_hook('cron_refresh_site_stats');
wp_clear_scheduled_hook('cron_send_notification_email');

