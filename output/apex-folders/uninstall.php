<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apex_folders_needs_migration');
delete_site_option('apex_folders_needs_migration');
delete_option('apex_folders_show_debug_tools');
delete_site_option('apex_folders_show_debug_tools');
delete_option('apex_folders_remove_all_data');
delete_site_option('apex_folders_remove_all_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_apex_folder_for_%', '_site_transient_apex_folder_for_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('apex_folder_counts');
delete_site_transient('apex_folder_counts');

// Clear Cron Jobs
wp_clear_scheduled_hook('apex_folders_update_counts_event');

