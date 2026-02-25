<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iwp_client_backup_tasks');
delete_site_option('iwp_client_backup_tasks');
delete_option('site_url');
delete_site_option('site_url');
delete_option('iwp_client_nossl_key');
delete_site_option('iwp_client_nossl_key');
delete_option('iwp_client_public_key');
delete_site_option('iwp_client_public_key');
delete_option('iwp_client_action_message_id');
delete_site_option('iwp_client_action_message_id');
delete_option('iwp_client_notifications');
delete_site_option('iwp_client_notifications');
delete_option('iwp_client_pageview_alerts');
delete_site_option('iwp_client_pageview_alerts');
delete_option('iwp_client_user_hit_count');
delete_site_option('iwp_client_user_hit_count');
delete_option('iwp_client_network_admin_install');
delete_site_option('iwp_client_network_admin_install');
delete_option('iwp_client_activate_key');
delete_site_option('iwp_client_activate_key');
delete_option('bit51_bwps');
delete_site_option('bit51_bwps');
delete_option('iwp_client_brand');
delete_site_option('iwp_client_brand');
delete_option('iwp_client_maintenace_mode');
delete_site_option('iwp_client_maintenace_mode');
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
delete_option('iwp_client_forcerefresh');
delete_site_option('iwp_client_forcerefresh');
delete_option('iwp_mmb_stats_filter');
delete_site_option('iwp_mmb_stats_filter');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('iwp_client_backup_tasks');
wp_clear_scheduled_hook('iwp_client_notifications');

