<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mainwp_fluentsupport_site_url');
delete_site_option('mainwp_fluentsupport_site_url');
delete_option('mainwp_fluentsupport_api_username');
delete_site_option('mainwp_fluentsupport_api_username');
delete_option('mainwp_fluentsupport_api_password');
delete_site_option('mainwp_fluentsupport_api_password');
delete_option('mainwp_fluentsupport_sync_log');
delete_site_option('mainwp_fluentsupport_sync_log');
delete_option('mainwp_fluentsupport_last_sync');
delete_site_option('mainwp_fluentsupport_last_sync');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mainwp_fluentsupport_version');
delete_site_option('mainwp_fluentsupport_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('mainwp_fluentsupport_sync_tickets_cron');

