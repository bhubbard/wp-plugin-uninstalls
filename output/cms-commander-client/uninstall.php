<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmsc_stats_filter');
delete_site_option('cmsc_stats_filter');
delete_option('cmsc_site_activation_code');
delete_site_option('cmsc_site_activation_code');
delete_option('_cmsc_public_key');
delete_site_option('_cmsc_public_key');
delete_option('cmsc_worker_brand');
delete_site_option('cmsc_worker_brand');
delete_option('cmsc_maintenace_mode');
delete_site_option('cmsc_maintenace_mode');
delete_option('_cmsc_action_message_id');
delete_site_option('_cmsc_action_message_id');
delete_option('_cmsc_nossl_key');
delete_site_option('_cmsc_nossl_key');
delete_option('cmsc_debug_enable');
delete_site_option('cmsc_debug_enable');
delete_option('cmsc_backup_tasks');
delete_site_option('cmsc_backup_tasks');
delete_option('site_url');
delete_site_option('site_url');
delete_option('_action_message_id');
delete_site_option('_action_message_id');
delete_option('cmsc_notifications');
delete_site_option('cmsc_notifications');
delete_option('cmsc_pageview_alerts');
delete_site_option('cmsc_pageview_alerts');
delete_option('user_hit_count');
delete_site_option('user_hit_count');
delete_option('cmsc_log_md5');
delete_site_option('cmsc_log_md5');
delete_option('cmscsettings');
delete_site_option('cmscsettings');
delete_option('cmsc_network_admin_install');
delete_site_option('cmsc_network_admin_install');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_site_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cmsc_core_autoupdate');
delete_site_option('cmsc_core_autoupdate');
delete_option('cmsc_global_plugins_autoupdate');
delete_site_option('cmsc_global_plugins_autoupdate');
delete_option('cmsc_active_autoupdate_plugins');
delete_site_option('cmsc_active_autoupdate_plugins');
delete_option('cmsc_global_themes_autoupdate');
delete_site_option('cmsc_global_themes_autoupdate');
delete_option('cmsc_active_autoupdate_themes');
delete_site_option('cmsc_active_autoupdate_themes');
delete_option('cmsc_global_translations_autoupdate');
delete_site_option('cmsc_global_translations_autoupdate');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cmsc_active_autoupdate_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cmsc_backup_tasks');
wp_clear_scheduled_hook('cmsc_notifications');
wp_clear_scheduled_hook('cmsc_datasend');

