<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blpatrol_check_frequency');
delete_site_option('blpatrol_check_frequency');
delete_option('blpatrol_isindexed_enabled');
delete_site_option('blpatrol_isindexed_enabled');
delete_option('blpatrol_isindexed_api_key');
delete_site_option('blpatrol_isindexed_api_key');
delete_option('blpatrol_isindexed_check_on_cron');
delete_site_option('blpatrol_isindexed_check_on_cron');
delete_option('blpatrol_indexmenow_enabled');
delete_site_option('blpatrol_indexmenow_enabled');
delete_option('blpatrol_indexmenow_api_key');
delete_site_option('blpatrol_indexmenow_api_key');
delete_option('blpatrol_gsc_client_id');
delete_site_option('blpatrol_gsc_client_id');
delete_option('blpatrol_gsc_client_secret');
delete_site_option('blpatrol_gsc_client_secret');
delete_option('blpatrol_last_global_check');
delete_site_option('blpatrol_last_global_check');
delete_option('blpatrol_last_indexation_check');
delete_site_option('blpatrol_last_indexation_check');
delete_option('blpatrol_currency');
delete_site_option('blpatrol_currency');
delete_option('blpatrol_indexmenow_auto_index');
delete_site_option('blpatrol_indexmenow_auto_index');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'blpatrol_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('blpatrol_isindexed_project_id');
delete_site_option('blpatrol_isindexed_project_id');
delete_option('blpatrol_db_version');
delete_site_option('blpatrol_db_version');

// Delete Transients
delete_transient('blpatrol_admin_notice');
delete_site_transient('blpatrol_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('blpatrol_daily_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blpatrol_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blpatrol_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blpatrol_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blpatrol_screen_options' ) );

